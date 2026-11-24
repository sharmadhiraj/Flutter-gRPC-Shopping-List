import 'package:grpc/grpc.dart';
import 'package:grpc_server/generated/shopping.pbgrpc.dart';
import 'package:grpc_server/shopping_service.dart';
import 'package:test/test.dart';

void main() {
  late Server server;
  late ClientChannel channel;
  late ShoppingServiceClient client;

  setUp(() async {
    server = Server.create(services: [ShoppingService()]);
    await server.serve(address: "localhost", port: 0);
    channel = ClientChannel(
      "localhost",
      port: server.port!,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    client = ShoppingServiceClient(channel);
  });

  tearDown(() async {
    await channel.shutdown();
    await server.shutdown();
  });

  test("starts with an empty list", () async {
    final response = await client.listItems(ListItemsRequest());
    expect(response.items, isEmpty);
  });

  test("adds items with increasing ids and trims names", () async {
    final milk = await client.addItem(AddItemRequest(name: "  Milk "));
    final bread = await client.addItem(AddItemRequest(name: "Bread"));
    expect(milk.name, "Milk");
    expect(bread.id, greaterThan(milk.id));
    final response = await client.listItems(ListItemsRequest());
    expect(response.items.map((item) => item.name), ["Milk", "Bread"]);
  });

  test("rejects an empty name", () async {
    expect(
      client.addItem(AddItemRequest(name: "   ")),
      throwsA(
        isA<GrpcError>().having(
          (e) => e.code,
          "code",
          StatusCode.invalidArgument,
        ),
      ),
    );
  });

  test("marks an item as bought and back", () async {
    final milk = await client.addItem(AddItemRequest(name: "Milk"));
    final bought = await client.setBought(
      SetBoughtRequest(id: milk.id, bought: true),
    );
    expect(bought.bought, isTrue);
    final unbought = await client.setBought(
      SetBoughtRequest(id: milk.id, bought: false),
    );
    expect(unbought.bought, isFalse);
  });

  test("deletes an item and reports unknown ids as not found", () async {
    final milk = await client.addItem(AddItemRequest(name: "Milk"));
    await client.deleteItem(DeleteItemRequest(id: milk.id));
    expect((await client.listItems(ListItemsRequest())).items, isEmpty);
    expect(
      client.deleteItem(DeleteItemRequest(id: milk.id)),
      throwsA(
        isA<GrpcError>().having((e) => e.code, "code", StatusCode.notFound),
      ),
    );
  });

  test("clears only bought items", () async {
    final milk = await client.addItem(AddItemRequest(name: "Milk"));
    await client.addItem(AddItemRequest(name: "Bread"));
    await client.setBought(SetBoughtRequest(id: milk.id, bought: true));
    final response = await client.clearBought(ClearBoughtRequest());
    expect(response.removed, 1);
    final remaining = await client.listItems(ListItemsRequest());
    expect(remaining.items.map((item) => item.name), ["Bread"]);
  });

  test("watchItems emits the current list, then every change", () async {
    final updates = client
        .watchItems(WatchItemsRequest())
        .map((response) => response.items.map((item) => item.name).toList());
    final received = <List<String>>[];
    final subscription = updates.listen(received.add);
    await Future<void>.delayed(const Duration(milliseconds: 200));
    await client.addItem(AddItemRequest(name: "Milk"));
    await Future<void>.delayed(const Duration(milliseconds: 200));
    await subscription.cancel();
    expect(received, [
      <String>[],
      ["Milk"],
    ]);
  });
}
