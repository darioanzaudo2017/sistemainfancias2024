// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpedienteStruct extends BaseStruct {
  ExpedienteStruct({
    int? id,
    String? spd,
    String? zona,
    String? fecha,
    String? expediente,
  })  : _id = id,
        _spd = spd,
        _zona = zona,
        _fecha = fecha,
        _expediente = expediente;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "spd" field.
  String? _spd;
  String get spd => _spd ?? '';
  set spd(String? val) => _spd = val;

  bool hasSpd() => _spd != null;

  // "zona" field.
  String? _zona;
  String get zona => _zona ?? '';
  set zona(String? val) => _zona = val;

  bool hasZona() => _zona != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "expediente" field.
  String? _expediente;
  String get expediente => _expediente ?? '';
  set expediente(String? val) => _expediente = val;

  bool hasExpediente() => _expediente != null;

  static ExpedienteStruct fromMap(Map<String, dynamic> data) =>
      ExpedienteStruct(
        id: castToType<int>(data['id']),
        spd: data['spd'] as String?,
        zona: data['zona'] as String?,
        fecha: data['fecha'] as String?,
        expediente: data['expediente'] as String?,
      );

  static ExpedienteStruct? maybeFromMap(dynamic data) => data is Map
      ? ExpedienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'spd': _spd,
        'zona': _zona,
        'fecha': _fecha,
        'expediente': _expediente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'spd': serializeParam(
          _spd,
          ParamType.String,
        ),
        'zona': serializeParam(
          _zona,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'expediente': serializeParam(
          _expediente,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExpedienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpedienteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        spd: deserializeParam(
          data['spd'],
          ParamType.String,
          false,
        ),
        zona: deserializeParam(
          data['zona'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        expediente: deserializeParam(
          data['expediente'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExpedienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpedienteStruct &&
        id == other.id &&
        spd == other.spd &&
        zona == other.zona &&
        fecha == other.fecha &&
        expediente == other.expediente;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, spd, zona, fecha, expediente]);
}

ExpedienteStruct createExpedienteStruct({
  int? id,
  String? spd,
  String? zona,
  String? fecha,
  String? expediente,
}) =>
    ExpedienteStruct(
      id: id,
      spd: spd,
      zona: zona,
      fecha: fecha,
      expediente: expediente,
    );
