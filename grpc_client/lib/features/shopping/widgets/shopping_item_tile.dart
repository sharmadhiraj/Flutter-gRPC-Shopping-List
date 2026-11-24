import "package:flutter/material.dart";
import "package:grpc_client/generated/shopping.pb.dart";

class ShoppingItemTile extends StatelessWidget {
  const ShoppingItemTile({
    required this.item,
    required this.onBoughtChanged,
    required this.onDelete,
    super.key,
  });

  final Item item;
  final ValueChanged<bool> onBoughtChanged;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: "${item.name}, ${item.bought ? "bought" : "not bought"}",
      child: CheckboxListTile(
        value: item.bought,
        onChanged: (bought) => onBoughtChanged(bought ?? false),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(item.name, style: _buildTitleStyle(context)),
        secondary: IconButton(
          tooltip: "Delete ${item.name}",
          icon: const Icon(Icons.delete_outline),
          onPressed: onDelete,
        ),
      ),
    );
  }

  TextStyle? _buildTitleStyle(BuildContext context) {
    if (!item.bought) return null;
    return TextStyle(
      decoration: TextDecoration.lineThrough,
      color: Theme.of(context).disabledColor,
    );
  }
}
