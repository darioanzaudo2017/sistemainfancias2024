// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoconvivienteStruct extends BaseStruct {
  GrupoconvivienteStruct({
    String? nombre,
    String? apellido,
    int? dni,
  })  : _nombre = nombre,
        _apellido = apellido,
        _dni = dni;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "Apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "dni" field.
  int? _dni;
  int get dni => _dni ?? 0;
  set dni(int? val) => _dni = val;

  void incrementDni(int amount) => dni = dni + amount;

  bool hasDni() => _dni != null;

  static GrupoconvivienteStruct fromMap(Map<String, dynamic> data) =>
      GrupoconvivienteStruct(
        nombre: data['Nombre'] as String?,
        apellido: data['Apellido'] as String?,
        dni: castToType<int>(data['dni']),
      );

  static GrupoconvivienteStruct? maybeFromMap(dynamic data) => data is Map
      ? GrupoconvivienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Nombre': _nombre,
        'Apellido': _apellido,
        'dni': _dni,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'Apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.int,
        ),
      }.withoutNulls;

  static GrupoconvivienteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GrupoconvivienteStruct(
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['Apellido'],
          ParamType.String,
          false,
        ),
        dni: deserializeParam(
          data['dni'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GrupoconvivienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GrupoconvivienteStruct &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        dni == other.dni;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre, apellido, dni]);
}

GrupoconvivienteStruct createGrupoconvivienteStruct({
  String? nombre,
  String? apellido,
  int? dni,
}) =>
    GrupoconvivienteStruct(
      nombre: nombre,
      apellido: apellido,
      dni: dni,
    );
