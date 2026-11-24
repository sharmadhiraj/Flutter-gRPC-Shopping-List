// This is a generated file - do not edit.
//
// Generated from shopping.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'shopping.pb.dart' as $0;

export 'shopping.pb.dart';

@$pb.GrpcServiceName('flutter_grpc_shopping_list.ShoppingService')
class ShoppingServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ShoppingServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.Item> addItem(
    $0.AddItemRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$addItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListItemsResponse> listItems(
    $0.ListItemsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listItems, request, options: options);
  }

  $grpc.ResponseFuture<$0.Item> setBought(
    $0.SetBoughtRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setBought, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteItemResponse> deleteItem(
    $0.DeleteItemRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClearBoughtResponse> clearBought(
    $0.ClearBoughtRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$clearBought, request, options: options);
  }

  $grpc.ResponseStream<$0.ListItemsResponse> watchItems(
    $0.WatchItemsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$watchItems, $async.Stream.fromIterable([request]),
        options: options);
  }

  // method descriptors

  static final _$addItem = $grpc.ClientMethod<$0.AddItemRequest, $0.Item>(
      '/flutter_grpc_shopping_list.ShoppingService/AddItem',
      ($0.AddItemRequest value) => value.writeToBuffer(),
      $0.Item.fromBuffer);
  static final _$listItems =
      $grpc.ClientMethod<$0.ListItemsRequest, $0.ListItemsResponse>(
          '/flutter_grpc_shopping_list.ShoppingService/ListItems',
          ($0.ListItemsRequest value) => value.writeToBuffer(),
          $0.ListItemsResponse.fromBuffer);
  static final _$setBought = $grpc.ClientMethod<$0.SetBoughtRequest, $0.Item>(
      '/flutter_grpc_shopping_list.ShoppingService/SetBought',
      ($0.SetBoughtRequest value) => value.writeToBuffer(),
      $0.Item.fromBuffer);
  static final _$deleteItem =
      $grpc.ClientMethod<$0.DeleteItemRequest, $0.DeleteItemResponse>(
          '/flutter_grpc_shopping_list.ShoppingService/DeleteItem',
          ($0.DeleteItemRequest value) => value.writeToBuffer(),
          $0.DeleteItemResponse.fromBuffer);
  static final _$clearBought =
      $grpc.ClientMethod<$0.ClearBoughtRequest, $0.ClearBoughtResponse>(
          '/flutter_grpc_shopping_list.ShoppingService/ClearBought',
          ($0.ClearBoughtRequest value) => value.writeToBuffer(),
          $0.ClearBoughtResponse.fromBuffer);
  static final _$watchItems =
      $grpc.ClientMethod<$0.WatchItemsRequest, $0.ListItemsResponse>(
          '/flutter_grpc_shopping_list.ShoppingService/WatchItems',
          ($0.WatchItemsRequest value) => value.writeToBuffer(),
          $0.ListItemsResponse.fromBuffer);
}

@$pb.GrpcServiceName('flutter_grpc_shopping_list.ShoppingService')
abstract class ShoppingServiceBase extends $grpc.Service {
  $core.String get $name => 'flutter_grpc_shopping_list.ShoppingService';

  ShoppingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddItemRequest, $0.Item>(
        'AddItem',
        addItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddItemRequest.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListItemsRequest, $0.ListItemsResponse>(
        'ListItems',
        listItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListItemsRequest.fromBuffer(value),
        ($0.ListItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetBoughtRequest, $0.Item>(
        'SetBought',
        setBought_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetBoughtRequest.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteItemRequest, $0.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteItemRequest.fromBuffer(value),
        ($0.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ClearBoughtRequest, $0.ClearBoughtResponse>(
            'ClearBought',
            clearBought_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ClearBoughtRequest.fromBuffer(value),
            ($0.ClearBoughtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WatchItemsRequest, $0.ListItemsResponse>(
        'WatchItems',
        watchItems_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.WatchItemsRequest.fromBuffer(value),
        ($0.ListItemsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Item> addItem_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AddItemRequest> $request) async {
    return addItem($call, await $request);
  }

  $async.Future<$0.Item> addItem(
      $grpc.ServiceCall call, $0.AddItemRequest request);

  $async.Future<$0.ListItemsResponse> listItems_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListItemsRequest> $request) async {
    return listItems($call, await $request);
  }

  $async.Future<$0.ListItemsResponse> listItems(
      $grpc.ServiceCall call, $0.ListItemsRequest request);

  $async.Future<$0.Item> setBought_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SetBoughtRequest> $request) async {
    return setBought($call, await $request);
  }

  $async.Future<$0.Item> setBought(
      $grpc.ServiceCall call, $0.SetBoughtRequest request);

  $async.Future<$0.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteItemRequest> $request) async {
    return deleteItem($call, await $request);
  }

  $async.Future<$0.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $0.DeleteItemRequest request);

  $async.Future<$0.ClearBoughtResponse> clearBought_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ClearBoughtRequest> $request) async {
    return clearBought($call, await $request);
  }

  $async.Future<$0.ClearBoughtResponse> clearBought(
      $grpc.ServiceCall call, $0.ClearBoughtRequest request);

  $async.Stream<$0.ListItemsResponse> watchItems_Pre($grpc.ServiceCall $call,
      $async.Future<$0.WatchItemsRequest> $request) async* {
    yield* watchItems($call, await $request);
  }

  $async.Stream<$0.ListItemsResponse> watchItems(
      $grpc.ServiceCall call, $0.WatchItemsRequest request);
}
