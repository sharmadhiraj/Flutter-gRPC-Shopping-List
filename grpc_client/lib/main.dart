import "package:flutter/material.dart";
import "package:grpc_client/data/server_endpoint.dart";
import "package:grpc_client/data/shopping_client.dart";
import "package:grpc_client/features/shopping/shopping_screen.dart";

void main() {
  runApp(
    ShoppingListApp(client: ShoppingClient(ServerEndpoint.fromEnvironment())),
  );
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({required this.client, super.key});

  final ShoppingClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping List",
      theme: _buildTheme(Brightness.light),
      darkTheme: _buildTheme(Brightness.dark),
      home: ShoppingScreen(client: client),
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: brightness,
      ),
    );
  }
}
