import 'package:grpc/grpc.dart';
import 'package:grpc_server/shopping_service.dart';

Future<void> main(List<String> args) async {
  final server = Server.create(services: [ShoppingService()]);
  await server.serve(port: 50051);
  print('Server listening on port 50051');
}
