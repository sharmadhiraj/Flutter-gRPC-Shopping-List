import "package:flutter/material.dart";
import "package:grpc/grpc.dart";
import "package:grpc_client/data/shopping_client.dart";
import "package:grpc_client/features/shopping/widgets/add_item_field.dart";
import "package:grpc_client/features/shopping/widgets/shopping_item_tile.dart";
import "package:grpc_client/generated/shopping.pb.dart";

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({required this.client, super.key});

  final ShoppingClient client;

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  late Stream<List<Item>> _items = widget.client.watchItems();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Item>>(
      stream: _items,
      builder: (context, snapshot) {
        final items = snapshot.data ?? const <Item>[];
        return Scaffold(
          appBar: _buildAppBar(
            hasBoughtItems: items.any((item) => item.bought),
          ),
          body: _buildBody(snapshot, items),
        );
      },
    );
  }

  AppBar _buildAppBar({required bool hasBoughtItems}) {
    return AppBar(
      title: const Text("Shopping List"),
      actions: [
        IconButton(
          tooltip: "Clear bought items",
          icon: const Icon(Icons.playlist_remove),
          onPressed: hasBoughtItems
              ? () => _run(widget.client.clearBought)
              : null,
        ),
      ],
    );
  }

  Widget _buildBody(AsyncSnapshot<List<Item>> snapshot, List<Item> items) {
    if (snapshot.hasError) {
      return _buildConnectionError();
    }
    return Column(
      children: [
        AddItemField(
          onSubmitted: (name) => _run(() => widget.client.addItem(name)),
        ),
        Expanded(child: _buildItems(snapshot, items)),
      ],
    );
  }

  Widget _buildItems(AsyncSnapshot<List<Item>> snapshot, List<Item> items) {
    if (!snapshot.hasData) {
      return const Center(child: CircularProgressIndicator());
    }
    if (items.isEmpty) {
      return const Center(child: Text("No items yet. Add your first one."));
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ShoppingItemTile(
        item: items[index],
        onBoughtChanged: (bought) =>
            _run(() => widget.client.setBought(items[index], bought: bought)),
        onDelete: () => _run(() => widget.client.deleteItem(items[index])),
      ),
    );
  }

  Widget _buildConnectionError() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Cannot reach the server."),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () =>
                setState(() => _items = widget.client.watchItems()),
            child: const Text("Retry"),
          ),
        ],
      ),
    );
  }

  Future<void> _run(Future<void> Function() action) async {
    try {
      await action();
    } on GrpcError catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.message ?? "Request failed")),
      );
    }
  }
}
