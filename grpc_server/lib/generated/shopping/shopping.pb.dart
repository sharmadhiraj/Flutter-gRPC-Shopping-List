//
//  Generated code. Do not modify.
//  source: shopping.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AddItemRequest extends $pb.GeneratedMessage {
  factory AddItemRequest({
    $core.String? item,
  }) {
    final $result = create();
    if (item != null) {
      $result.item = item;
    }
    return $result;
  }

  AddItemRequest._() : super();

  factory AddItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory AddItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'item')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddItemRequest clone() => AddItemRequest()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddItemRequest copyWith(void Function(AddItemRequest) updates) =>
      super.copyWith((message) => updates(message as AddItemRequest))
          as AddItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddItemRequest create() => AddItemRequest._();

  AddItemRequest createEmptyInstance() => create();

  static $pb.PbList<AddItemRequest> createRepeated() =>
      $pb.PbList<AddItemRequest>();

  @$core.pragma('dart2js:noInline')
  static AddItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddItemRequest>(create);
  static AddItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get item => $_getSZ(0);

  @$pb.TagNumber(1)
  set item($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);

  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
}

class AddItemResponse extends $pb.GeneratedMessage {
  factory AddItemResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }

  AddItemResponse._() : super();

  factory AddItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory AddItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddItemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddItemResponse clone() => AddItemResponse()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddItemResponse copyWith(void Function(AddItemResponse) updates) =>
      super.copyWith((message) => updates(message as AddItemResponse))
          as AddItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddItemResponse create() => AddItemResponse._();

  AddItemResponse createEmptyInstance() => create();

  static $pb.PbList<AddItemResponse> createRepeated() =>
      $pb.PbList<AddItemResponse>();

  @$core.pragma('dart2js:noInline')
  static AddItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddItemResponse>(create);
  static AddItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);

  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);

  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);

  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);

  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class ListItemsRequest extends $pb.GeneratedMessage {
  factory ListItemsRequest() => create();

  ListItemsRequest._() : super();

  factory ListItemsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory ListItemsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListItemsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListItemsRequest clone() => ListItemsRequest()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListItemsRequest copyWith(void Function(ListItemsRequest) updates) =>
      super.copyWith((message) => updates(message as ListItemsRequest))
          as ListItemsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListItemsRequest create() => ListItemsRequest._();

  ListItemsRequest createEmptyInstance() => create();

  static $pb.PbList<ListItemsRequest> createRepeated() =>
      $pb.PbList<ListItemsRequest>();

  @$core.pragma('dart2js:noInline')
  static ListItemsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListItemsRequest>(create);
  static ListItemsRequest? _defaultInstance;
}

class ListItemsResponse extends $pb.GeneratedMessage {
  factory ListItemsResponse({
    $core.Iterable<$core.String>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }

  ListItemsResponse._() : super();

  factory ListItemsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory ListItemsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListItemsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListItemsResponse clone() => ListItemsResponse()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListItemsResponse copyWith(void Function(ListItemsResponse) updates) =>
      super.copyWith((message) => updates(message as ListItemsResponse))
          as ListItemsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListItemsResponse create() => ListItemsResponse._();

  ListItemsResponse createEmptyInstance() => create();

  static $pb.PbList<ListItemsResponse> createRepeated() =>
      $pb.PbList<ListItemsResponse>();

  @$core.pragma('dart2js:noInline')
  static ListItemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListItemsResponse>(create);
  static ListItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

class DeleteItemRequest extends $pb.GeneratedMessage {
  factory DeleteItemRequest({
    $core.String? item,
  }) {
    final $result = create();
    if (item != null) {
      $result.item = item;
    }
    return $result;
  }

  DeleteItemRequest._() : super();

  factory DeleteItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory DeleteItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'item')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteItemRequest clone() => DeleteItemRequest()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteItemRequest copyWith(void Function(DeleteItemRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteItemRequest))
          as DeleteItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteItemRequest create() => DeleteItemRequest._();

  DeleteItemRequest createEmptyInstance() => create();

  static $pb.PbList<DeleteItemRequest> createRepeated() =>
      $pb.PbList<DeleteItemRequest>();

  @$core.pragma('dart2js:noInline')
  static DeleteItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteItemRequest>(create);
  static DeleteItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get item => $_getSZ(0);

  @$pb.TagNumber(1)
  set item($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);

  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
}

class DeleteItemResponse extends $pb.GeneratedMessage {
  factory DeleteItemResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }

  DeleteItemResponse._() : super();

  factory DeleteItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory DeleteItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteItemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteItemResponse clone() => DeleteItemResponse()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteItemResponse copyWith(void Function(DeleteItemResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteItemResponse))
          as DeleteItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteItemResponse create() => DeleteItemResponse._();

  DeleteItemResponse createEmptyInstance() => create();

  static $pb.PbList<DeleteItemResponse> createRepeated() =>
      $pb.PbList<DeleteItemResponse>();

  @$core.pragma('dart2js:noInline')
  static DeleteItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteItemResponse>(create);
  static DeleteItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);

  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);

  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);

  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);

  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
