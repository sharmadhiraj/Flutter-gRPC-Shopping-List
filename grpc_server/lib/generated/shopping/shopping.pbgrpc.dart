//
//  Generated code. Do not modify.
//  source: shopping.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'shopping.pb.dart' as $0;

export 'shopping.pb.dart';

@$pb.GrpcServiceName('flutter_grpc_shopping_list.ShoppingService')
class ShoppingServiceClient extends $grpc.Client {
  static final _$addItem =
      $grpc.ClientMethod<$0.AddItemRequest, $0.AddItemResponse>(
          '/flutter_grpc_shopping_list.ShoppingService/AddItem',
          ($0.AddItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddItemResponse.fromBuffer(value));
  static final _$listItems =
      $grpc.ClientMethod<$0.ListItemsRequest, $0.ListItemsResponse>(
          '/flutter_grpc_shopping_list.ShoppingService/ListItems',
          ($0.ListItemsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListItemsResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$0.DeleteItemRequest, $0.DeleteItemResponse>(
          '/flutter_grpc_shopping_list.ShoppingService/DeleteItem',
          ($0.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteItemResponse.fromBuffer(value));

  ShoppingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddItemResponse> addItem($0.AddItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListItemsResponse> listItems(
      $0.ListItemsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listItems, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteItemResponse> deleteItem(
      $0.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }
}

@$pb.GrpcServiceName('flutter_grpc_shopping_list.ShoppingService')
abstract class ShoppingServiceBase extends $grpc.Service {
  $core.String get $name => 'flutter_grpc_shopping_list.ShoppingService';

  ShoppingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddItemRequest, $0.AddItemResponse>(
        'AddItem',
        addItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddItemRequest.fromBuffer(value),
        ($0.AddItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListItemsRequest, $0.ListItemsResponse>(
        'ListItems',
        listItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListItemsRequest.fromBuffer(value),
        ($0.ListItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteItemRequest, $0.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteItemRequest.fromBuffer(value),
        ($0.DeleteItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddItemResponse> addItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddItemRequest> request) async {
    return addItem(call, await request);
  }

  $async.Future<$0.ListItemsResponse> listItems_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListItemsRequest> request) async {
    return listItems(call, await request);
  }

  $async.Future<$0.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$0.AddItemResponse> addItem(
      $grpc.ServiceCall call, $0.AddItemRequest request);

  $async.Future<$0.ListItemsResponse> listItems(
      $grpc.ServiceCall call, $0.ListItemsRequest request);

  $async.Future<$0.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $0.DeleteItemRequest request);
}
