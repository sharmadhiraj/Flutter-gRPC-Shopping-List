import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_client/generated/shopping/shopping.pbgrpc.dart';
import 'package:grpc_client/util/constants.dart';

class ShoppingService {
  late final ShoppingServiceClient _stub;
  late final ClientChannel _channel;

  ShoppingService._private() {
    _init();
  }

  static final ShoppingService _instance = ShoppingService._private();

  factory ShoppingService() => _instance;

  void _init() {
    _channel = ClientChannel(
      Constant.baseUrl,
      port: Constant.portNo,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _stub = ShoppingServiceClient(_channel);
  }

  Future<void> addItem(String item) async {
    final request = AddItemRequest()..item = item;
    try {
      final response = await _stub.addItem(request);
      debugPrint(response.message);
      listItems();
    } catch (e) {
      debugPrint("Error adding item: $e");
    }
  }

  Future<List<String>> listItems() async {
    final request = ListItemsRequest();
    try {
      final response = await _stub.listItems(request);
      return List<String>.from(response.items);
    } catch (e) {
      debugPrint("Error listing items: $e");
      rethrow;
    }
  }

  Future<void> deleteItem(String item) async {
    final request = DeleteItemRequest()..item = item;
    try {
      final response = await _stub.deleteItem(request);
      debugPrint(response.message);
      listItems();
    } catch (e) {
      debugPrint("Error deleting item: $e");
    }
  }


  void dispose() {
    _channel.getConnection();
  }
}
