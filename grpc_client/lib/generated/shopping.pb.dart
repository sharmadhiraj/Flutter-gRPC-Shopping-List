// This is a generated file - do not edit.
//
// Generated from shopping.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Item extends $pb.GeneratedMessage {
  factory Item({
    $core.int? id,
    $core.String? name,
    $core.bool? bought,
  }) {
    final result = Item._();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (bought != null) result.bought = bought;
    return result;
  }

  Item._();

  factory Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Item()..mergeFromBuffer(data, registry);
  factory Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Item()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Item',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: Item.$_createMessage)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'bought')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item copyWith(void Function(Item) updates) =>
      super.copyWith((message) => updates(message as Item)) as Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use Item() / Item.new instead')
  static Item create() => Item._();
  static $pb.GeneratedMessage $_createMessage() => Item._();
  @$core.override
  Item createEmptyInstance() => Item._();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Item>(Item.$_createMessage);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get bought => $_getBF(2);
  @$pb.TagNumber(3)
  set bought($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBought() => $_has(2);
  @$pb.TagNumber(3)
  void clearBought() => $_clearField(3);
}

class AddItemRequest extends $pb.GeneratedMessage {
  factory AddItemRequest({
    $core.String? name,
  }) {
    final result = AddItemRequest._();
    if (name != null) result.name = name;
    return result;
  }

  AddItemRequest._();

  factory AddItemRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      AddItemRequest()..mergeFromBuffer(data, registry);
  factory AddItemRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      AddItemRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: AddItemRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddItemRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddItemRequest copyWith(void Function(AddItemRequest) updates) =>
      super.copyWith((message) => updates(message as AddItemRequest))
          as AddItemRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use AddItemRequest() / AddItemRequest.new instead')
  static AddItemRequest create() => AddItemRequest._();
  static $pb.GeneratedMessage $_createMessage() => AddItemRequest._();
  @$core.override
  AddItemRequest createEmptyInstance() => AddItemRequest._();
  @$core.pragma('dart2js:noInline')
  static AddItemRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddItemRequest>(
          AddItemRequest.$_createMessage);
  static AddItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class ListItemsRequest extends $pb.GeneratedMessage {
  factory ListItemsRequest() => ListItemsRequest._();

  ListItemsRequest._();

  factory ListItemsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListItemsRequest()..mergeFromBuffer(data, registry);
  factory ListItemsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListItemsRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListItemsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: ListItemsRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListItemsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListItemsRequest copyWith(void Function(ListItemsRequest) updates) =>
      super.copyWith((message) => updates(message as ListItemsRequest))
          as ListItemsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use ListItemsRequest() / ListItemsRequest.new instead')
  static ListItemsRequest create() => ListItemsRequest._();
  static $pb.GeneratedMessage $_createMessage() => ListItemsRequest._();
  @$core.override
  ListItemsRequest createEmptyInstance() => ListItemsRequest._();
  @$core.pragma('dart2js:noInline')
  static ListItemsRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListItemsRequest>(
          ListItemsRequest.$_createMessage);
  static ListItemsRequest? _defaultInstance;
}

class ListItemsResponse extends $pb.GeneratedMessage {
  factory ListItemsResponse({
    $core.Iterable<Item>? items,
  }) {
    final result = ListItemsResponse._();
    if (items != null) result.items.addAll(items);
    return result;
  }

  ListItemsResponse._();

  factory ListItemsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListItemsResponse()..mergeFromBuffer(data, registry);
  factory ListItemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListItemsResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListItemsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: ListItemsResponse.$_createMessage)
    ..pPM<Item>(1, _omitFieldNames ? '' : 'items',
        subBuilder: Item.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListItemsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListItemsResponse copyWith(void Function(ListItemsResponse) updates) =>
      super.copyWith((message) => updates(message as ListItemsResponse))
          as ListItemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use ListItemsResponse() / ListItemsResponse.new instead')
  static ListItemsResponse create() => ListItemsResponse._();
  static $pb.GeneratedMessage $_createMessage() => ListItemsResponse._();
  @$core.override
  ListItemsResponse createEmptyInstance() => ListItemsResponse._();
  @$core.pragma('dart2js:noInline')
  static ListItemsResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListItemsResponse>(
          ListItemsResponse.$_createMessage);
  static ListItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Item> get items => $_getList(0);
}

class SetBoughtRequest extends $pb.GeneratedMessage {
  factory SetBoughtRequest({
    $core.int? id,
    $core.bool? bought,
  }) {
    final result = SetBoughtRequest._();
    if (id != null) result.id = id;
    if (bought != null) result.bought = bought;
    return result;
  }

  SetBoughtRequest._();

  factory SetBoughtRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      SetBoughtRequest()..mergeFromBuffer(data, registry);
  factory SetBoughtRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      SetBoughtRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetBoughtRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: SetBoughtRequest.$_createMessage)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'bought')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBoughtRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBoughtRequest copyWith(void Function(SetBoughtRequest) updates) =>
      super.copyWith((message) => updates(message as SetBoughtRequest))
          as SetBoughtRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use SetBoughtRequest() / SetBoughtRequest.new instead')
  static SetBoughtRequest create() => SetBoughtRequest._();
  static $pb.GeneratedMessage $_createMessage() => SetBoughtRequest._();
  @$core.override
  SetBoughtRequest createEmptyInstance() => SetBoughtRequest._();
  @$core.pragma('dart2js:noInline')
  static SetBoughtRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBoughtRequest>(
          SetBoughtRequest.$_createMessage);
  static SetBoughtRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get bought => $_getBF(1);
  @$pb.TagNumber(2)
  set bought($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBought() => $_has(1);
  @$pb.TagNumber(2)
  void clearBought() => $_clearField(2);
}

class DeleteItemRequest extends $pb.GeneratedMessage {
  factory DeleteItemRequest({
    $core.int? id,
  }) {
    final result = DeleteItemRequest._();
    if (id != null) result.id = id;
    return result;
  }

  DeleteItemRequest._();

  factory DeleteItemRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteItemRequest()..mergeFromBuffer(data, registry);
  factory DeleteItemRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteItemRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: DeleteItemRequest.$_createMessage)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteItemRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteItemRequest copyWith(void Function(DeleteItemRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteItemRequest))
          as DeleteItemRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use DeleteItemRequest() / DeleteItemRequest.new instead')
  static DeleteItemRequest create() => DeleteItemRequest._();
  static $pb.GeneratedMessage $_createMessage() => DeleteItemRequest._();
  @$core.override
  DeleteItemRequest createEmptyInstance() => DeleteItemRequest._();
  @$core.pragma('dart2js:noInline')
  static DeleteItemRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteItemRequest>(
          DeleteItemRequest.$_createMessage);
  static DeleteItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeleteItemResponse extends $pb.GeneratedMessage {
  factory DeleteItemResponse() => DeleteItemResponse._();

  DeleteItemResponse._();

  factory DeleteItemResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteItemResponse()..mergeFromBuffer(data, registry);
  factory DeleteItemResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteItemResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteItemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: DeleteItemResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteItemResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteItemResponse copyWith(void Function(DeleteItemResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteItemResponse))
          as DeleteItemResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use DeleteItemResponse() / DeleteItemResponse.new instead')
  static DeleteItemResponse create() => DeleteItemResponse._();
  static $pb.GeneratedMessage $_createMessage() => DeleteItemResponse._();
  @$core.override
  DeleteItemResponse createEmptyInstance() => DeleteItemResponse._();
  @$core.pragma('dart2js:noInline')
  static DeleteItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteItemResponse>(
          DeleteItemResponse.$_createMessage);
  static DeleteItemResponse? _defaultInstance;
}

class ClearBoughtRequest extends $pb.GeneratedMessage {
  factory ClearBoughtRequest() => ClearBoughtRequest._();

  ClearBoughtRequest._();

  factory ClearBoughtRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ClearBoughtRequest()..mergeFromBuffer(data, registry);
  factory ClearBoughtRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ClearBoughtRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClearBoughtRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: ClearBoughtRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearBoughtRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearBoughtRequest copyWith(void Function(ClearBoughtRequest) updates) =>
      super.copyWith((message) => updates(message as ClearBoughtRequest))
          as ClearBoughtRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use ClearBoughtRequest() / ClearBoughtRequest.new instead')
  static ClearBoughtRequest create() => ClearBoughtRequest._();
  static $pb.GeneratedMessage $_createMessage() => ClearBoughtRequest._();
  @$core.override
  ClearBoughtRequest createEmptyInstance() => ClearBoughtRequest._();
  @$core.pragma('dart2js:noInline')
  static ClearBoughtRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClearBoughtRequest>(
          ClearBoughtRequest.$_createMessage);
  static ClearBoughtRequest? _defaultInstance;
}

class ClearBoughtResponse extends $pb.GeneratedMessage {
  factory ClearBoughtResponse({
    $core.int? removed,
  }) {
    final result = ClearBoughtResponse._();
    if (removed != null) result.removed = removed;
    return result;
  }

  ClearBoughtResponse._();

  factory ClearBoughtResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ClearBoughtResponse()..mergeFromBuffer(data, registry);
  factory ClearBoughtResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ClearBoughtResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClearBoughtResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: ClearBoughtResponse.$_createMessage)
    ..aI(1, _omitFieldNames ? '' : 'removed')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearBoughtResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearBoughtResponse copyWith(void Function(ClearBoughtResponse) updates) =>
      super.copyWith((message) => updates(message as ClearBoughtResponse))
          as ClearBoughtResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use ClearBoughtResponse() / ClearBoughtResponse.new instead')
  static ClearBoughtResponse create() => ClearBoughtResponse._();
  static $pb.GeneratedMessage $_createMessage() => ClearBoughtResponse._();
  @$core.override
  ClearBoughtResponse createEmptyInstance() => ClearBoughtResponse._();
  @$core.pragma('dart2js:noInline')
  static ClearBoughtResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClearBoughtResponse>(
          ClearBoughtResponse.$_createMessage);
  static ClearBoughtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get removed => $_getIZ(0);
  @$pb.TagNumber(1)
  set removed($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRemoved() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoved() => $_clearField(1);
}

class WatchItemsRequest extends $pb.GeneratedMessage {
  factory WatchItemsRequest() => WatchItemsRequest._();

  WatchItemsRequest._();

  factory WatchItemsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      WatchItemsRequest()..mergeFromBuffer(data, registry);
  factory WatchItemsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      WatchItemsRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WatchItemsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'flutter_grpc_shopping_list'),
      createEmptyInstance: WatchItemsRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchItemsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WatchItemsRequest copyWith(void Function(WatchItemsRequest) updates) =>
      super.copyWith((message) => updates(message as WatchItemsRequest))
          as WatchItemsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use WatchItemsRequest() / WatchItemsRequest.new instead')
  static WatchItemsRequest create() => WatchItemsRequest._();
  static $pb.GeneratedMessage $_createMessage() => WatchItemsRequest._();
  @$core.override
  WatchItemsRequest createEmptyInstance() => WatchItemsRequest._();
  @$core.pragma('dart2js:noInline')
  static WatchItemsRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchItemsRequest>(
          WatchItemsRequest.$_createMessage);
  static WatchItemsRequest? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
