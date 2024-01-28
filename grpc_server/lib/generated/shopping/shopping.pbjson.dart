//
//  Generated code. Do not modify.
//  source: shopping.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use addItemRequestDescriptor instead')
const AddItemRequest$json = {
  '1': 'AddItemRequest',
  '2': [
    {'1': 'item', '3': 1, '4': 1, '5': 9, '10': 'item'},
  ],
};

/// Descriptor for `AddItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addItemRequestDescriptor =
    $convert.base64Decode('Cg5BZGRJdGVtUmVxdWVzdBISCgRpdGVtGAEgASgJUgRpdGVt');

@$core.Deprecated('Use addItemResponseDescriptor instead')
const AddItemResponse$json = {
  '1': 'AddItemResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `AddItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addItemResponseDescriptor = $convert.base64Decode(
    'Cg9BZGRJdGVtUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYWdlGA'
    'IgASgJUgdtZXNzYWdl');

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
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `ListItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listItemsResponseDescriptor = $convert
    .base64Decode('ChFMaXN0SXRlbXNSZXNwb25zZRIUCgVpdGVtcxgBIAMoCVIFaXRlbXM=');

@$core.Deprecated('Use deleteItemRequestDescriptor instead')
const DeleteItemRequest$json = {
  '1': 'DeleteItemRequest',
  '2': [
    {'1': 'item', '3': 1, '4': 1, '5': 9, '10': 'item'},
  ],
};

/// Descriptor for `DeleteItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemRequestDescriptor = $convert
    .base64Decode('ChFEZWxldGVJdGVtUmVxdWVzdBISCgRpdGVtGAEgASgJUgRpdGVt');

@$core.Deprecated('Use deleteItemResponseDescriptor instead')
const DeleteItemResponse$json = {
  '1': 'DeleteItemResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DeleteItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVJdGVtUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYW'
    'dlGAIgASgJUgdtZXNzYWdl');
