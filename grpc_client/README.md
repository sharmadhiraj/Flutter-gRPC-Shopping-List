# gRPC Shopping List: Client

Flutter app (macOS, iOS, Android) for the shopping list.

```sh
flutter pub get
flutter run
flutter run --dart-define=SERVER_HOST=192.168.1.20 --dart-define=SERVER_PORT=50051
flutter test
```

- `lib/data/shopping_client.dart`: wraps the generated gRPC stub
- `lib/data/server_endpoint.dart`: host and port (`localhost`, or `10.0.2.2` on Android)
- `lib/features/shopping/`: screen and widgets, driven by the `WatchItems` stream

Start the server first, see the [root README](../README.md).
