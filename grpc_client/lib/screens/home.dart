import 'package:flutter/material.dart';
import 'package:grpc_client/util/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
    return const Center(
      child: Text(Constant.appName),
    );
  }
}
