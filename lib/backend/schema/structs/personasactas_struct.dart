// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonasactasStruct extends BaseStruct {
  PersonasactasStruct({
    String? nombres,
    String? apellidos,
    int? dni,
  })  : _nombres = nombres,
        _apellidos = apellidos,
        _dni = dni;

  // "Nombres" field.
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

  static PersonasactasStruct fromMap(Map<String, dynamic> data) =>
      PersonasactasStruct(
        nombres: data['Nombres'] as String?,
        apellidos: data['apellidos'] as String?,
        dni: castToType<int>(data['dni']),
      );

  static PersonasactasStruct? maybeFromMap(dynamic data) => data is Map
      ? PersonasactasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Nombres': _nombres,
        'apellidos': _apellidos,
        'dni': _dni,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nombres': serializeParam(
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
      }.withoutNulls;

  static PersonasactasStruct fromSerializableMap(Map<String, dynamic> data) =>
      PersonasactasStruct(
        nombres: deserializeParam(
          data['Nombres'],
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
      );

  @override
  String toString() => 'PersonasactasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PersonasactasStruct &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        dni == other.dni;
  }

  @override
  int get hashCode => const ListEquality().hash([nombres, apellidos, dni]);
}

PersonasactasStruct createPersonasactasStruct({
  String? nombres,
  String? apellidos,
  int? dni,
}) =>
    PersonasactasStruct(
      nombres: nombres,
      apellidos: apellidos,
      dni: dni,
    );
