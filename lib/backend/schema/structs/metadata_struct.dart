// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetadataStruct extends BaseStruct {
  MetadataStruct({
    int? totalCount,
    int? limit,
    int? offset,
    bool? hasMore,
  })  : _totalCount = totalCount,
        _limit = limit,
        _offset = offset,
        _hasMore = hasMore;

  // "total_count" field.
  int? _totalCount;
  int get totalCount => _totalCount ?? 0;
  set totalCount(int? val) => _totalCount = val;

  void incrementTotalCount(int amount) => totalCount = totalCount + amount;

  bool hasTotalCount() => _totalCount != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  set limit(int? val) => _limit = val;

  void incrementLimit(int amount) => limit = limit + amount;

  bool hasLimit() => _limit != null;

  // "offset" field.
  int? _offset;
  int get offset => _offset ?? 0;
  set offset(int? val) => _offset = val;

  void incrementOffset(int amount) => offset = offset + amount;

  bool hasOffset() => _offset != null;

  // "has_more" field.
  bool? _hasMore;
  bool get hasMore => _hasMore ?? false;
  set hasMore(bool? val) => _hasMore = val;

  bool hasHasMore() => _hasMore != null;

  static MetadataStruct fromMap(Map<String, dynamic> data) => MetadataStruct(
        totalCount: castToType<int>(data['total_count']),
        limit: castToType<int>(data['limit']),
        offset: castToType<int>(data['offset']),
        hasMore: data['has_more'] as bool?,
      );

  static MetadataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetadataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'total_count': _totalCount,
        'limit': _limit,
        'offset': _offset,
        'has_more': _hasMore,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_count': serializeParam(
          _totalCount,
          ParamType.int,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.int,
        ),
        'offset': serializeParam(
          _offset,
          ParamType.int,
        ),
        'has_more': serializeParam(
          _hasMore,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetadataStruct(
        totalCount: deserializeParam(
          data['total_count'],
          ParamType.int,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.int,
          false,
        ),
        offset: deserializeParam(
          data['offset'],
          ParamType.int,
          false,
        ),
        hasMore: deserializeParam(
          data['has_more'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetadataStruct &&
        totalCount == other.totalCount &&
        limit == other.limit &&
        offset == other.offset &&
        hasMore == other.hasMore;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([totalCount, limit, offset, hasMore]);
}

MetadataStruct createMetadataStruct({
  int? totalCount,
  int? limit,
  int? offset,
  bool? hasMore,
}) =>
    MetadataStruct(
      totalCount: totalCount,
      limit: limit,
      offset: offset,
      hasMore: hasMore,
    );
