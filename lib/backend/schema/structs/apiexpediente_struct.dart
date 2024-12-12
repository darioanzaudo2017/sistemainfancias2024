// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiexpedienteStruct extends BaseStruct {
  ApiexpedienteStruct({
    int? id,
    String? expediente,
    String? nombres,
    String? apellidos,
    int? dni,
    String? fecha,
  })  : _id = id,
        _expediente = expediente,
        _nombres = nombres,
        _apellidos = apellidos,
        _dni = dni,
        _fecha = fecha;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "expediente" field.
  String? _expediente;
  String get expediente => _expediente ?? '';
  set expediente(String? val) => _expediente = val;

  bool hasExpediente() => _expediente != null;

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  set nombres(String? val) => _nombres = val;

  bool hasNombres() => _nombres != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  set apellidos(String? val) => _apellidos = val;

  bool hasApellidos() => _apellidos != null;

  // "dni" field.
  int? _dni;
  int get dni => _dni ?? 0;
  set dni(int? val) => _dni = val;

  void incrementDni(int amount) => dni = dni + amount;

  bool hasDni() => _dni != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  static ApiexpedienteStruct fromMap(Map<String, dynamic> data) =>
      ApiexpedienteStruct(
        id: castToType<int>(data['id']),
        expediente: data['expediente'] as String?,
        nombres: data['nombres'] as String?,
        apellidos: data['apellidos'] as String?,
        dni: castToType<int>(data['dni']),
        fecha: data['fecha'] as String?,
      );

  static ApiexpedienteStruct? maybeFromMap(dynamic data) => data is Map
      ? ApiexpedienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'expediente': _expediente,
        'nombres': _nombres,
        'apellidos': _apellidos,
        'dni': _dni,
        'fecha': _fecha,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'expediente': serializeParam(
          _expediente,
          ParamType.String,
        ),
        'nombres': serializeParam(
          _nombres,
          ParamType.String,
        ),
        'apellidos': serializeParam(
          _apellidos,
          ParamType.String,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.int,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApiexpedienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApiexpedienteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        expediente: deserializeParam(
          data['expediente'],
          ParamType.String,
          false,
        ),
        nombres: deserializeParam(
          data['nombres'],
          ParamType.String,
          false,
        ),
        apellidos: deserializeParam(
          data['apellidos'],
          ParamType.String,
          false,
        ),
        dni: deserializeParam(
          data['dni'],
          ParamType.int,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApiexpedienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApiexpedienteStruct &&
        id == other.id &&
        expediente == other.expediente &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        dni == other.dni &&
        fecha == other.fecha;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, expediente, nombres, apellidos, dni, fecha]);
}

ApiexpedienteStruct createApiexpedienteStruct({
  int? id,
  String? expediente,
  String? nombres,
  String? apellidos,
  int? dni,
  String? fecha,
}) =>
    ApiexpedienteStruct(
      id: id,
      expediente: expediente,
      nombres: nombres,
      apellidos: apellidos,
      dni: dni,
      fecha: fecha,
    );
