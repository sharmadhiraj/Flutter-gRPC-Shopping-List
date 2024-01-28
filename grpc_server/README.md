# Flutter gRPC Shopping List - Dart gRPC Server

## Setup Guide

1. Install Dart on your system.

2. Follow the [gRPC Dart Quick Start guide](https://grpc.io/docs/languages/dart/quickstart/) for
   setup.

3. Generate Dart code from *shopping.proto*:
   `
   protoc --dart_out=grpc:lib/generated/shopping -Iprotos protos/shopping.proto
   `

4. Implement gRPC service in *lib/shopping_service.dart*

5. Run the gRPC server from *lib/main.dart*:
   `dart lib/main.dart`

## How it Works

#### Proto to Dart Code:

`protoc` converts *shopping.proto* to Dart code.

#### Service Implementation:

*ShoppingService* extends *ShoppingServiceBase* with custom methods.

#### Server Initialization:

In *lib/main.dart*, server is crteated with *ShoppingService*. The server listens on port 50051 for
gRPC requests.