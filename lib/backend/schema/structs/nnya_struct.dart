// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NnyaStruct extends BaseStruct {
  NnyaStruct({
    int? id,
    int? edad,
    String? nombre,
    String? apellido,
    int? dni,
  })  : _id = id,
        _edad = edad,
        _nombre = nombre,
        _apellido = apellido,
        _dni = dni;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  set edad(int? val) => _edad = val;

  void incrementEdad(int amount) => edad = edad + amount;

  bool hasEdad() => _edad != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "apellido" field.
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

  static NnyaStruct fromMap(Map<String, dynamic> data) => NnyaStruct(
        id: castToType<int>(data['id']),
        edad: castToType<int>(data['edad']),
        nombre: data['nombre'] as String?,
        apellido: data['apellido'] as String?,
        dni: castToType<int>(data['dni']),
      );

  static NnyaStruct? maybeFromMap(dynamic data) =>
      data is Map ? NnyaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'edad': _edad,
        'nombre': _nombre,
        'apellido': _apellido,
        'dni': _dni,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.int,
        ),
      }.withoutNulls;

  static NnyaStruct fromSerializableMap(Map<String, dynamic> data) =>
      NnyaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['apellido'],
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
  String toString() => 'NnyaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NnyaStruct &&
        id == other.id &&
        edad == other.edad &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        dni == other.dni;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, edad, nombre, apellido, dni]);
}

NnyaStruct createNnyaStruct({
  int? id,
  int? edad,
  String? nombre,
  String? apellido,
  int? dni,
}) =>
    NnyaStruct(
      id: id,
      edad: edad,
      nombre: nombre,
      apellido: apellido,
      dni: dni,
    );
