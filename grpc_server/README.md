# gRPC Shopping List: Server

In-memory Dart gRPC server for the shopping list. The list resets when the server stops.

```sh
dart pub get
dart run bin/server.dart          # port 50051
dart run bin/server.dart 6000     # custom port
dart test
```

`lib/shopping_service.dart` implements the generated `ShoppingServiceBase`. `WatchItems` is a broadcast stream: every change pushes the full list to all watchers.

See the [root README](../README.md) for the RPC list and how to regenerate code.
