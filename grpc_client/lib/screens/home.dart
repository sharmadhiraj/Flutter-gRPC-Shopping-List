import 'package:flutter/material.dart';
import 'package:grpc_client/util/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _itemController = TextEditingController();
  final List<String> _shoppingList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(title: const Text(Constant.appName));
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
            onPressed: () {},
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
        onPressed: () {},
      ),
    );
  }
}
