# Flutter gRPC Shopping List - Flutter gRPC Client

## Setup Guide

1. Install Dart on your system.

2. Follow the [gRPC Dart Quick Start guide](https://grpc.io/docs/languages/dart/quickstart/) for
   setup.

## How it Works

1. Proto *shopping.proto* is converted to Dart Code:
   `
   protoc --dart_out=grpc:lib/generated/shopping -Iprotos ../protos/shopping.proto
   `

2. gRPC service in *lib/services/shopping.dart* is implemented using generated code. This service is
   used to connect to server and perform operations.

3. Shopping screen/UI used methods from ShoppingService
