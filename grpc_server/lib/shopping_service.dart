import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_server/generated/shopping.pbgrpc.dart';

class ShoppingService extends ShoppingServiceBase {
  final Map<int, Item> _itemsById = {};
  final StreamController<void> _changes = StreamController<void>.broadcast();
  int _nextId = 1;

  @override
  Future<Item> addItem(ServiceCall call, AddItemRequest request) async {
    final name = request.name.trim();
    if (name.isEmpty) {
      throw GrpcError.invalidArgument("Item name must not be empty");
    }
    final item = Item(id: _nextId++, name: name);
    _itemsById[item.id] = item;
    _notifyChanged();
    return item;
  }

  @override
  Future<ListItemsResponse> listItems(
    ServiceCall call,
    ListItemsRequest request,
  ) async {
    return _currentItems();
  }

  @override
  Future<Item> setBought(ServiceCall call, SetBoughtRequest request) async {
    final item = _findItem(request.id);
    item.bought = request.bought;
    _notifyChanged();
    return item;
  }

  @override
  Future<DeleteItemResponse> deleteItem(
    ServiceCall call,
    DeleteItemRequest request,
  ) async {
    _findItem(request.id);
    _itemsById.remove(request.id);
    _notifyChanged();
    return DeleteItemResponse();
  }

  @override
  Future<ClearBoughtResponse> clearBought(
    ServiceCall call,
    ClearBoughtRequest request,
  ) async {
    final countBefore = _itemsById.length;
    _itemsById.removeWhere((_, item) => item.bought);
    _notifyChanged();
    return ClearBoughtResponse(removed: countBefore - _itemsById.length);
  }

  @override
  Stream<ListItemsResponse> watchItems(
    ServiceCall call,
    WatchItemsRequest request,
  ) async* {
    yield _currentItems();
    await for (final _ in _changes.stream) {
      yield _currentItems();
    }
  }

  Future<void> close() => _changes.close();

  Item _findItem(int id) {
    final item = _itemsById[id];
    if (item == null) throw GrpcError.notFound("No item with id $id");
    return item;
  }

  ListItemsResponse _currentItems() {
    return ListItemsResponse(
      items: _itemsById.values.map((item) => item.deepCopy()),
    );
  }

  void _notifyChanged() => _changes.add(null);
}
