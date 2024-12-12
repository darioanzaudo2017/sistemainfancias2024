// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatospersonasStruct extends BaseStruct {
  DatospersonasStruct({
    String? nombre,
    String? apellido,
    String? vinculo,
    String? conviviente,
  })  : _nombre = nombre,
        _apellido = apellido,
        _vinculo = vinculo,
        _conviviente = conviviente;

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

  // "vinculo" field.
  String? _vinculo;
  String get vinculo => _vinculo ?? '';
  set vinculo(String? val) => _vinculo = val;

  bool hasVinculo() => _vinculo != null;

  // "conviviente" field.
  String? _conviviente;
  String get conviviente => _conviviente ?? '';
  set conviviente(String? val) => _conviviente = val;

  bool hasConviviente() => _conviviente != null;

  static DatospersonasStruct fromMap(Map<String, dynamic> data) =>
      DatospersonasStruct(
        nombre: data['nombre'] as String?,
        apellido: data['apellido'] as String?,
        vinculo: data['vinculo'] as String?,
        conviviente: data['conviviente'] as String?,
      );

  static DatospersonasStruct? maybeFromMap(dynamic data) => data is Map
      ? DatospersonasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'apellido': _apellido,
        'vinculo': _vinculo,
        'conviviente': _conviviente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'vinculo': serializeParam(
          _vinculo,
          ParamType.String,
        ),
        'conviviente': serializeParam(
          _conviviente,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatospersonasStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatospersonasStruct(
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
        vinculo: deserializeParam(
          data['vinculo'],
          ParamType.String,
          false,
        ),
        conviviente: deserializeParam(
          data['conviviente'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatospersonasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatospersonasStruct &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        vinculo == other.vinculo &&
        conviviente == other.conviviente;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nombre, apellido, vinculo, conviviente]);
}

DatospersonasStruct createDatospersonasStruct({
  String? nombre,
  String? apellido,
  String? vinculo,
  String? conviviente,
}) =>
    DatospersonasStruct(
      nombre: nombre,
      apellido: apellido,
      vinculo: vinculo,
      conviviente: conviviente,
    );
