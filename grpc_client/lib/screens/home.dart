import 'package:flutter/material.dart';
import 'package:grpc_client/services/shopping.dart';
import 'package:grpc_client/util/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _itemController = TextEditingController();
  final List<String> _shoppingList = [];
  final ShoppingService _shoppingService = ShoppingService();

  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(Constant.appName),
      actions: [
        IconButton(
          onPressed: () => _refreshItems(),
          icon: const Icon(Icons.refresh),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildAddItemSection(),
          const Divider(),
          _buildShoppingListView(),
        ],
      ),
    );
  }

  Widget _buildAddItemSection() {
    return Column(
      children: [
        TextField(
          controller: _itemController,
          decoration: const InputDecoration(
            labelText: "Item",
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: _addItem,
            child: const Text("Add Item"),
          ),
        ),
      ],
    );
  }

  Widget _buildShoppingListView() {
    return Expanded(
      child: _shoppingList.isEmpty
          ? const Center(child: Text("No items added."))
          : ListView.builder(
              itemCount: _shoppingList.length,
              itemBuilder: (context, index) =>
                  _buildShoppingListItem(_shoppingList[index]),
            ),
    );
  }

  Widget _buildShoppingListItem(String item) {
    return ListTile(
      title: Text(item),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => _deleteItem(item),
      ),
    );
  }

  void _addItem() {
    final String item = _itemController.text.trim();
    if (item.isEmpty) return;
    _shoppingService.addItem(item);
    _itemController.clear();
    _refreshItems();
  }

  void _deleteItem(String item) {
    _shoppingService.deleteItem(item);
    _refreshItems();
  }

  void _refreshItems() {
    _shoppingService.listItems().then((value) => setState(() {
          _shoppingList
            ..clear()
            ..addAll(value);
        }));
  }

  @override
  void dispose() {
    _shoppingService.dispose();
    super.dispose();
  }
}
