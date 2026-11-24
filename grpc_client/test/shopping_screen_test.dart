import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:grpc/grpc.dart";
import "package:grpc_client/data/shopping_client.dart";
import "package:grpc_client/generated/shopping.pb.dart";
import "package:grpc_client/main.dart";

class FakeShoppingClient implements ShoppingClient {
  final List<Item> items = [];
  final List<String> calls = [];
  StreamController<List<Item>> _controller = StreamController<List<Item>>();
  bool failWatching = false;

  @override
  Stream<List<Item>> watchItems() {
    _controller = StreamController<List<Item>>()..add(List.of(items));
    if (failWatching) _controller.addError(const GrpcError.unavailable());
    return _controller.stream;
  }

  void _publish() => _controller.add(List.of(items));

  @override
  Future<void> addItem(String name) async {
    calls.add("add $name");
    items.add(Item(id: items.length + 1, name: name));
    _publish();
  }

  @override
  Future<void> setBought(Item item, {required bool bought}) async {
    calls.add("bought ${item.name} $bought");
    items[items.indexWhere((other) => other.id == item.id)] = Item(
      id: item.id,
      name: item.name,
      bought: bought,
    );
    _publish();
  }

  @override
  Future<void> deleteItem(Item item) async {
    calls.add("delete ${item.name}");
    items.removeWhere((other) => other.id == item.id);
    _publish();
  }

  @override
  Future<void> clearBought() async {
    calls.add("clear");
    items.removeWhere((item) => item.bought);
    _publish();
  }

  @override
  Future<void> dispose() async {}
}

void main() {
  late FakeShoppingClient client;

  setUp(() => client = FakeShoppingClient());

  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(ShoppingListApp(client: client));
    await tester.pump();
  }

  testWidgets("shows the empty state", (tester) async {
    await pumpApp(tester);
    expect(find.text("No items yet. Add your first one."), findsOneWidget);
  });

  testWidgets("adds an item typed into the field", (tester) async {
    await pumpApp(tester);
    await tester.enterText(find.byType(TextField), "Milk");
    await tester.tap(find.byTooltip("Add item"));
    await tester.pump();
    expect(client.calls, ["add Milk"]);
    expect(find.text("Milk"), findsOneWidget);
  });

  testWidgets("ignores a blank item", (tester) async {
    await pumpApp(tester);
    await tester.enterText(find.byType(TextField), "   ");
    await tester.tap(find.byTooltip("Add item"));
    await tester.pump();
    expect(client.calls, isEmpty);
  });

  testWidgets("marks an item as bought and clears it", (tester) async {
    client.items.add(Item(id: 1, name: "Milk"));
    await pumpApp(tester);
    await tester.tap(find.text("Milk"));
    await tester.pump();
    expect(client.calls, ["bought Milk true"]);
    await tester.tap(find.byTooltip("Clear bought items"));
    await tester.pump();
    expect(find.text("Milk"), findsNothing);
  });

  testWidgets("deletes an item", (tester) async {
    client.items.add(Item(id: 1, name: "Milk"));
    await pumpApp(tester);
    await tester.tap(find.byTooltip("Delete Milk"));
    await tester.pump();
    expect(client.calls, ["delete Milk"]);
    expect(find.text("Milk"), findsNothing);
  });

  testWidgets("offers a retry when the server is unreachable", (tester) async {
    client.failWatching = true;
    await pumpApp(tester);
    expect(find.text("Cannot reach the server."), findsOneWidget);
    client.failWatching = false;
    await tester.tap(find.text("Retry"));
    await tester.pump();
    await tester.pump();
    expect(find.text("Cannot reach the server."), findsNothing);
  });
}
