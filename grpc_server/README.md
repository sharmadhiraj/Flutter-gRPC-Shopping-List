# Flutter gRPC Shopping List - Dart gRPC Server

## Setup Guide

1. Install Dart on your system.

2. Follow the [gRPC Dart Quick Start guide](https://grpc.io/docs/languages/dart/quickstart/) for
   setup.

## How it Works

1. Proto *shopping.proto* is converted to Dart Code:
   `
   protoc --dart_out=grpc:lib/generated/shopping -Iprotos ../protos/shopping.proto
   `

2. gRPC service in *lib/shopping_service.dart* is implemented using generated code

3. Server is configured in *lib/main.dart*, which can be run using command:
   `dart lib/main.dart`
