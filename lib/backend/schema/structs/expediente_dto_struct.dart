// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpedienteDtoStruct extends BaseStruct {
  ExpedienteDtoStruct({
    int? id,
    String? expediente,
    String? fecha,
    String? nombres,
    String? apellidos,
    int? dni,
    String? spd,
    String? fechaNac,
    int? edad,
    int? zona,
  })  : _id = id,
        _expediente = expediente,
        _fecha = fecha,
        _nombres = nombres,
        _apellidos = apellidos,
        _dni = dni,
        _spd = spd,
        _fechaNac = fechaNac,
        _edad = edad,
        _zona = zona;

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

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

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

  // "spd" field.
  String? _spd;
  String get spd => _spd ?? '';
  set spd(String? val) => _spd = val;

  bool hasSpd() => _spd != null;

  // "fecha_nac" field.
  String? _fechaNac;
  String get fechaNac => _fechaNac ?? '';
  set fechaNac(String? val) => _fechaNac = val;

  bool hasFechaNac() => _fechaNac != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  set edad(int? val) => _edad = val;

  void incrementEdad(int amount) => edad = edad + amount;

  bool hasEdad() => _edad != null;

  // "zona" field.
  int? _zona;
  int get zona => _zona ?? 0;
  set zona(int? val) => _zona = val;

  void incrementZona(int amount) => zona = zona + amount;

  bool hasZona() => _zona != null;

  static ExpedienteDtoStruct fromMap(Map<String, dynamic> data) =>
      ExpedienteDtoStruct(
        id: castToType<int>(data['id']),
        expediente: data['expediente'] as String?,
        fecha: data['fecha'] as String?,
        nombres: data['nombres'] as String?,
        apellidos: data['apellidos'] as String?,
        dni: castToType<int>(data['dni']),
        spd: data['spd'] as String?,
        fechaNac: data['fecha_nac'] as String?,
        edad: castToType<int>(data['edad']),
        zona: castToType<int>(data['zona']),
      );

  static ExpedienteDtoStruct? maybeFromMap(dynamic data) => data is Map
      ? ExpedienteDtoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'expediente': _expediente,
        'fecha': _fecha,
        'nombres': _nombres,
        'apellidos': _apellidos,
        'dni': _dni,
        'spd': _spd,
        'fecha_nac': _fechaNac,
        'edad': _edad,
        'zona': _zona,
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
        'fecha': serializeParam(
          _fecha,
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
        'spd': serializeParam(
          _spd,
          ParamType.String,
        ),
        'fecha_nac': serializeParam(
          _fechaNac,
          ParamType.String,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'zona': serializeParam(
          _zona,
          ParamType.int,
        ),
      }.withoutNulls;

  static ExpedienteDtoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpedienteDtoStruct(
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
        fecha: deserializeParam(
          data['fecha'],
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
        spd: deserializeParam(
          data['spd'],
          ParamType.String,
          false,
        ),
        fechaNac: deserializeParam(
          data['fecha_nac'],
          ParamType.String,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
          false,
        ),
        zona: deserializeParam(
          data['zona'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ExpedienteDtoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpedienteDtoStruct &&
        id == other.id &&
        expediente == other.expediente &&
        fecha == other.fecha &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        dni == other.dni &&
        spd == other.spd &&
        fechaNac == other.fechaNac &&
        edad == other.edad &&
        zona == other.zona;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        expediente,
        fecha,
        nombres,
        apellidos,
        dni,
        spd,
        fechaNac,
        edad,
        zona
      ]);
}

ExpedienteDtoStruct createExpedienteDtoStruct({
  int? id,
  String? expediente,
  String? fecha,
  String? nombres,
  String? apellidos,
  int? dni,
  String? spd,
  String? fechaNac,
  int? edad,
  int? zona,
}) =>
    ExpedienteDtoStruct(
      id: id,
      expediente: expediente,
      fecha: fecha,
      nombres: nombres,
      apellidos: apellidos,
      dni: dni,
      spd: spd,
      fechaNac: fechaNac,
      edad: edad,
      zona: zona,
    );
