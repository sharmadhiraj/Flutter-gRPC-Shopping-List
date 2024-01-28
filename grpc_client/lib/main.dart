import 'package:flutter/material.dart';
import 'package:grpc_client/screens/home.dart';
import 'package:grpc_client/util/constants.dart';

void main() {
  runApp(const ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constant.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: false,
      ),
      home: const HomeScreen(),
    );
  }
}
