import "package:flutter/material.dart";

class AddItemField extends StatefulWidget {
  const AddItemField({required this.onSubmitted, super.key});

  final ValueChanged<String> onSubmitted;

  @override
  State<AddItemField> createState() => _AddItemFieldState();
}

class _AddItemFieldState extends State<AddItemField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: _controller,
        textInputAction: TextInputAction.done,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          labelText: "Add an item",
          border: const OutlineInputBorder(),
          suffixIcon: Semantics(
            label: "Add item",
            button: true,
            child: IconButton(
              tooltip: "Add item",
              icon: const Icon(Icons.add),
              onPressed: _submit,
            ),
          ),
        ),
        onSubmitted: (_) => _submit(),
      ),
    );
  }

  void _submit() {
    final name = _controller.text.trim();
    if (name.isEmpty) return;
    widget.onSubmitted(name);
    _controller.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
