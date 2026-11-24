import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:grpc_server/shopping_service.dart';

const int _defaultPort = 50051;

Future<void> main(List<String> args) async {
  final port = args.isEmpty ? _defaultPort : int.parse(args.first);
  final server = Server.create(services: [ShoppingService()]);
  await server.serve(port: port);
  stdout.writeln("Shopping list server listening on port ${server.port}");
}
