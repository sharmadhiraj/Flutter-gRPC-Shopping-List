import 'package:grpc/grpc.dart';
import 'package:grpc_server/generated/shopping/shopping.pbgrpc.dart';

class ShoppingService extends ShoppingServiceBase {
  final List<String> shoppingList = [];

  @override
  Future<AddItemResponse> addItem(
      ServiceCall call, AddItemRequest request) async {
    final String item = request.item;
    print("Server received request to add item $item");
    shoppingList.add(item);
    return AddItemResponse()
      ..success = true
      ..message = "Item added successfully";
  }

  @override
  Future<ListItemsResponse> listItems(
      ServiceCall call, ListItemsRequest request) async {
    print("Server received request to get all items");
    return ListItemsResponse()..items.addAll(shoppingList);
  }

  @override
  Future<DeleteItemResponse> deleteItem(
      ServiceCall call, DeleteItemRequest request) async {
    final String item = request.item;
    print("Server received request to delete item $item");
    if (shoppingList.remove(item)) {
      return DeleteItemResponse()
        ..success = true
        ..message = "Item deleted successfully";
    } else {
      return DeleteItemResponse()
        ..success = false
        ..message = "Item not found";
    }
  }
}
