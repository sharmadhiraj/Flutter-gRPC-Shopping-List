## 2.0.0

- Items now have ids and a bought flag
- New RPCs: `SetBought`, `ClearBought`, server-streaming `WatchItems`
- Errors use gRPC status codes instead of success flags
- Entrypoint moved to `bin/server.dart`, optional port argument
- Upgraded to grpc 5 and protobuf 6, added tests

## 1.0.0

- Initial version.
