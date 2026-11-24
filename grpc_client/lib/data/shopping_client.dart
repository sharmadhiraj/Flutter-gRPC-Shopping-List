import "package:grpc/grpc.dart";
import "package:grpc_client/data/server_endpoint.dart";
import "package:grpc_client/generated/shopping.pbgrpc.dart";

class ShoppingClient {
  ShoppingClient(ServerEndpoint endpoint)
    : _channel = ClientChannel(
        endpoint.host,
        port: endpoint.port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      ) {
    _stub = ShoppingServiceClient(_channel);
  }

  final ClientChannel _channel;
  late final ShoppingServiceClient _stub;

  Stream<List<Item>> watchItems() {
    return _stub
        .watchItems(WatchItemsRequest())
        .map((response) => response.items);
  }

  Future<void> addItem(String name) =>
      _stub.addItem(AddItemRequest(name: name));

  Future<void> setBought(Item item, {required bool bought}) {
    return _stub.setBought(SetBoughtRequest(id: item.id, bought: bought));
  }

  Future<void> deleteItem(Item item) =>
      _stub.deleteItem(DeleteItemRequest(id: item.id));

  Future<void> clearBought() => _stub.clearBought(ClearBoughtRequest());

  Future<void> dispose() => _channel.shutdown();
}
