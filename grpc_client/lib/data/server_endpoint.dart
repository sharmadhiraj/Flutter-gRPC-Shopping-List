import "dart:io";

class ServerEndpoint {
  const ServerEndpoint({required this.host, required this.port});

  static const String _hostOverride = String.fromEnvironment("SERVER_HOST");
  static const int _portOverride = int.fromEnvironment(
    "SERVER_PORT",
    defaultValue: 50051,
  );

  factory ServerEndpoint.fromEnvironment() {
    return ServerEndpoint(
      host: _hostOverride.isNotEmpty ? _hostOverride : _defaultHost,
      port: _portOverride,
    );
  }

  static String get _defaultHost =>
      Platform.isAndroid ? "10.0.2.2" : "localhost";

  final String host;
  final int port;
}
