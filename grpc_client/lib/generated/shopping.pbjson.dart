// This is a generated file - do not edit.
//
// Generated from shopping.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use itemDescriptor instead')
const Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'bought', '3': 3, '4': 1, '5': 8, '10': 'bought'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRJdGVtEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmJvdWdodBgDIA'
    'EoCFIGYm91Z2h0');

@$core.Deprecated('Use addItemRequestDescriptor instead')
const AddItemRequest$json = {
  '1': 'AddItemRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AddItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addItemRequestDescriptor =
    $convert.base64Decode('Cg5BZGRJdGVtUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use listItemsRequestDescriptor instead')
const ListItemsRequest$json = {
  '1': 'ListItemsRequest',
};

/// Descriptor for `ListItemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listItemsRequestDescriptor =
    $convert.base64Decode('ChBMaXN0SXRlbXNSZXF1ZXN0');

@$core.Deprecated('Use listItemsResponseDescriptor instead')
const ListItemsResponse$json = {
  '1': 'ListItemsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.flutter_grpc_shopping_list.Item',
      '10': 'items'
    },
  ],
};

/// Descriptor for `ListItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listItemsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0SXRlbXNSZXNwb25zZRI2CgVpdGVtcxgBIAMoCzIgLmZsdXR0ZXJfZ3JwY19zaG9wcG'
    'luZ19saXN0Lkl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use setBoughtRequestDescriptor instead')
const SetBoughtRequest$json = {
  '1': 'SetBoughtRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'bought', '3': 2, '4': 1, '5': 8, '10': 'bought'},
  ],
};

/// Descriptor for `SetBoughtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBoughtRequestDescriptor = $convert.base64Decode(
    'ChBTZXRCb3VnaHRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBIWCgZib3VnaHQYAiABKAhSBmJvdW'
    'dodA==');

@$core.Deprecated('Use deleteItemRequestDescriptor instead')
const DeleteItemRequest$json = {
  '1': 'DeleteItemRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemRequestDescriptor =
    $convert.base64Decode('ChFEZWxldGVJdGVtUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use deleteItemResponseDescriptor instead')
const DeleteItemResponse$json = {
  '1': 'DeleteItemResponse',
};

/// Descriptor for `DeleteItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVJdGVtUmVzcG9uc2U=');

@$core.Deprecated('Use clearBoughtRequestDescriptor instead')
const ClearBoughtRequest$json = {
  '1': 'ClearBoughtRequest',
};

/// Descriptor for `ClearBoughtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearBoughtRequestDescriptor =
    $convert.base64Decode('ChJDbGVhckJvdWdodFJlcXVlc3Q=');

@$core.Deprecated('Use clearBoughtResponseDescriptor instead')
const ClearBoughtResponse$json = {
  '1': 'ClearBoughtResponse',
  '2': [
    {'1': 'removed', '3': 1, '4': 1, '5': 5, '10': 'removed'},
  ],
};

/// Descriptor for `ClearBoughtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearBoughtResponseDescriptor =
    $convert.base64Decode(
        'ChNDbGVhckJvdWdodFJlc3BvbnNlEhgKB3JlbW92ZWQYASABKAVSB3JlbW92ZWQ=');

@$core.Deprecated('Use watchItemsRequestDescriptor instead')
const WatchItemsRequest$json = {
  '1': 'WatchItemsRequest',
};

/// Descriptor for `WatchItemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchItemsRequestDescriptor =
    $convert.base64Decode('ChFXYXRjaEl0ZW1zUmVxdWVzdA==');
