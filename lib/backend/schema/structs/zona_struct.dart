// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZonaStruct extends BaseStruct {
  ZonaStruct({
    int? id,
    String? zona,
    String? createdAt,
  })  : _id = id,
        _zona = zona,
        _createdAt = createdAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "zona" field.
  String? _zona;
  String get zona => _zona ?? '';
  set zona(String? val) => _zona = val;

  bool hasZona() => _zona != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static ZonaStruct fromMap(Map<String, dynamic> data) => ZonaStruct(
        id: castToType<int>(data['id']),
        zona: data['zona'] as String?,
        createdAt: data['created_at'] as String?,
      );

  static ZonaStruct? maybeFromMap(dynamic data) =>
      data is Map ? ZonaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'zona': _zona,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'zona': serializeParam(
          _zona,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ZonaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ZonaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        zona: deserializeParam(
          data['zona'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ZonaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ZonaStruct &&
        id == other.id &&
        zona == other.zona &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([id, zona, createdAt]);
}

ZonaStruct createZonaStruct({
  int? id,
  String? zona,
  String? createdAt,
}) =>
    ZonaStruct(
      id: id,
      zona: zona,
      createdAt: createdAt,
    );
