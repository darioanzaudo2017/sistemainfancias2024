// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoConvivienteStruct extends BaseStruct {
  GrupoConvivienteStruct({
    int? id,
    int? dni,
    int? edad,
    int? idexpe,
    int? idnnya,
    String? nombre,
    String? idusers,
    String? vinculo,
    String? apellido,
    String? telefono,
    String? direccion,
    int? idingreso,
    String? updatedAt,
    String? conviviente,
    String? idexppropio,
    int? idnnyaGrupo,
    String? vinculoObs,
    String? observaciones,
    String? idgrupofamiliar,
    String? fechaNacimiento,
  })  : _id = id,
        _dni = dni,
        _edad = edad,
        _idexpe = idexpe,
        _idnnya = idnnya,
        _nombre = nombre,
        _idusers = idusers,
        _vinculo = vinculo,
        _apellido = apellido,
        _telefono = telefono,
        _direccion = direccion,
        _idingreso = idingreso,
        _updatedAt = updatedAt,
        _conviviente = conviviente,
        _idexppropio = idexppropio,
        _idnnyaGrupo = idnnyaGrupo,
        _vinculoObs = vinculoObs,
        _observaciones = observaciones,
        _idgrupofamiliar = idgrupofamiliar,
        _fechaNacimiento = fechaNacimiento;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "dni" field.
  int? _dni;
  int get dni => _dni ?? 0;
  set dni(int? val) => _dni = val;

  void incrementDni(int amount) => dni = dni + amount;

  bool hasDni() => _dni != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  set edad(int? val) => _edad = val;

  void incrementEdad(int amount) => edad = edad + amount;

  bool hasEdad() => _edad != null;

  // "idexpe" field.
  int? _idexpe;
  int get idexpe => _idexpe ?? 0;
  set idexpe(int? val) => _idexpe = val;

  void incrementIdexpe(int amount) => idexpe = idexpe + amount;

  bool hasIdexpe() => _idexpe != null;

  // "idnnya" field.
  int? _idnnya;
  int get idnnya => _idnnya ?? 0;
  set idnnya(int? val) => _idnnya = val;

  void incrementIdnnya(int amount) => idnnya = idnnya + amount;

  bool hasIdnnya() => _idnnya != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  set idusers(String? val) => _idusers = val;

  bool hasIdusers() => _idusers != null;

  // "vinculo" field.
  String? _vinculo;
  String get vinculo => _vinculo ?? '';
  set vinculo(String? val) => _vinculo = val;

  bool hasVinculo() => _vinculo != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "idingreso" field.
  int? _idingreso;
  int get idingreso => _idingreso ?? 0;
  set idingreso(int? val) => _idingreso = val;

  void incrementIdingreso(int amount) => idingreso = idingreso + amount;

  bool hasIdingreso() => _idingreso != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "conviviente" field.
  String? _conviviente;
  String get conviviente => _conviviente ?? '';
  set conviviente(String? val) => _conviviente = val;

  bool hasConviviente() => _conviviente != null;

  // "idexppropio" field.
  String? _idexppropio;
  String get idexppropio => _idexppropio ?? '';
  set idexppropio(String? val) => _idexppropio = val;

  bool hasIdexppropio() => _idexppropio != null;

  // "idnnyaGrupo" field.
  int? _idnnyaGrupo;
  int get idnnyaGrupo => _idnnyaGrupo ?? 0;
  set idnnyaGrupo(int? val) => _idnnyaGrupo = val;

  void incrementIdnnyaGrupo(int amount) => idnnyaGrupo = idnnyaGrupo + amount;

  bool hasIdnnyaGrupo() => _idnnyaGrupo != null;

  // "vinculo_obs" field.
  String? _vinculoObs;
  String get vinculoObs => _vinculoObs ?? '';
  set vinculoObs(String? val) => _vinculoObs = val;

  bool hasVinculoObs() => _vinculoObs != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  set observaciones(String? val) => _observaciones = val;

  bool hasObservaciones() => _observaciones != null;

  // "idgrupofamiliar" field.
  String? _idgrupofamiliar;
  String get idgrupofamiliar => _idgrupofamiliar ?? '';
  set idgrupofamiliar(String? val) => _idgrupofamiliar = val;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  // "fecha_nacimiento" field.
  String? _fechaNacimiento;
  String get fechaNacimiento => _fechaNacimiento ?? '';
  set fechaNacimiento(String? val) => _fechaNacimiento = val;

  bool hasFechaNacimiento() => _fechaNacimiento != null;

  static GrupoConvivienteStruct fromMap(Map<String, dynamic> data) =>
      GrupoConvivienteStruct(
        id: castToType<int>(data['id']),
        dni: castToType<int>(data['dni']),
        edad: castToType<int>(data['edad']),
        idexpe: castToType<int>(data['idexpe']),
        idnnya: castToType<int>(data['idnnya']),
        nombre: data['nombre'] as String?,
        idusers: data['idusers'] as String?,
        vinculo: data['vinculo'] as String?,
        apellido: data['apellido'] as String?,
        telefono: data['telefono'] as String?,
        direccion: data['direccion'] as String?,
        idingreso: castToType<int>(data['idingreso']),
        updatedAt: data['updated_at'] as String?,
        conviviente: data['conviviente'] as String?,
        idexppropio: data['idexppropio'] as String?,
        idnnyaGrupo: castToType<int>(data['idnnyaGrupo']),
        vinculoObs: data['vinculo_obs'] as String?,
        observaciones: data['observaciones'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        fechaNacimiento: data['fecha_nacimiento'] as String?,
      );

  static GrupoConvivienteStruct? maybeFromMap(dynamic data) => data is Map
      ? GrupoConvivienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'dni': _dni,
        'edad': _edad,
        'idexpe': _idexpe,
        'idnnya': _idnnya,
        'nombre': _nombre,
        'idusers': _idusers,
        'vinculo': _vinculo,
        'apellido': _apellido,
        'telefono': _telefono,
        'direccion': _direccion,
        'idingreso': _idingreso,
        'updated_at': _updatedAt,
        'conviviente': _conviviente,
        'idexppropio': _idexppropio,
        'idnnyaGrupo': _idnnyaGrupo,
        'vinculo_obs': _vinculoObs,
        'observaciones': _observaciones,
        'idgrupofamiliar': _idgrupofamiliar,
        'fecha_nacimiento': _fechaNacimiento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.int,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'idexpe': serializeParam(
          _idexpe,
          ParamType.int,
        ),
        'idnnya': serializeParam(
          _idnnya,
          ParamType.int,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'idusers': serializeParam(
          _idusers,
          ParamType.String,
        ),
        'vinculo': serializeParam(
          _vinculo,
          ParamType.String,
        ),
        'apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'idingreso': serializeParam(
          _idingreso,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'conviviente': serializeParam(
          _conviviente,
          ParamType.String,
        ),
        'idexppropio': serializeParam(
          _idexppropio,
          ParamType.String,
        ),
        'idnnyaGrupo': serializeParam(
          _idnnyaGrupo,
          ParamType.int,
        ),
        'vinculo_obs': serializeParam(
          _vinculoObs,
          ParamType.String,
        ),
        'observaciones': serializeParam(
          _observaciones,
          ParamType.String,
        ),
        'idgrupofamiliar': serializeParam(
          _idgrupofamiliar,
          ParamType.String,
        ),
        'fecha_nacimiento': serializeParam(
          _fechaNacimiento,
          ParamType.String,
        ),
      }.withoutNulls;

  static GrupoConvivienteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GrupoConvivienteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        dni: deserializeParam(
          data['dni'],
          ParamType.int,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
          false,
        ),
        idexpe: deserializeParam(
          data['idexpe'],
          ParamType.int,
          false,
        ),
        idnnya: deserializeParam(
          data['idnnya'],
          ParamType.int,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        idusers: deserializeParam(
          data['idusers'],
          ParamType.String,
          false,
        ),
        vinculo: deserializeParam(
          data['vinculo'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['apellido'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        idingreso: deserializeParam(
          data['idingreso'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        conviviente: deserializeParam(
          data['conviviente'],
          ParamType.String,
          false,
        ),
        idexppropio: deserializeParam(
          data['idexppropio'],
          ParamType.String,
          false,
        ),
        idnnyaGrupo: deserializeParam(
          data['idnnyaGrupo'],
          ParamType.int,
          false,
        ),
        vinculoObs: deserializeParam(
          data['vinculo_obs'],
          ParamType.String,
          false,
        ),
        observaciones: deserializeParam(
          data['observaciones'],
          ParamType.String,
          false,
        ),
        idgrupofamiliar: deserializeParam(
          data['idgrupofamiliar'],
          ParamType.String,
          false,
        ),
        fechaNacimiento: deserializeParam(
          data['fecha_nacimiento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GrupoConvivienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GrupoConvivienteStruct &&
        id == other.id &&
        dni == other.dni &&
        edad == other.edad &&
        idexpe == other.idexpe &&
        idnnya == other.idnnya &&
        nombre == other.nombre &&
        idusers == other.idusers &&
        vinculo == other.vinculo &&
        apellido == other.apellido &&
        telefono == other.telefono &&
        direccion == other.direccion &&
        idingreso == other.idingreso &&
        updatedAt == other.updatedAt &&
        conviviente == other.conviviente &&
        idexppropio == other.idexppropio &&
        idnnyaGrupo == other.idnnyaGrupo &&
        vinculoObs == other.vinculoObs &&
        observaciones == other.observaciones &&
        idgrupofamiliar == other.idgrupofamiliar &&
        fechaNacimiento == other.fechaNacimiento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        dni,
        edad,
        idexpe,
        idnnya,
        nombre,
        idusers,
        vinculo,
        apellido,
        telefono,
        direccion,
        idingreso,
        updatedAt,
        conviviente,
        idexppropio,
        idnnyaGrupo,
        vinculoObs,
        observaciones,
        idgrupofamiliar,
        fechaNacimiento
      ]);
}

GrupoConvivienteStruct createGrupoConvivienteStruct({
  int? id,
  int? dni,
  int? edad,
  int? idexpe,
  int? idnnya,
  String? nombre,
  String? idusers,
  String? vinculo,
  String? apellido,
  String? telefono,
  String? direccion,
  int? idingreso,
  String? updatedAt,
  String? conviviente,
  String? idexppropio,
  int? idnnyaGrupo,
  String? vinculoObs,
  String? observaciones,
  String? idgrupofamiliar,
  String? fechaNacimiento,
}) =>
    GrupoConvivienteStruct(
      id: id,
      dni: dni,
      edad: edad,
      idexpe: idexpe,
      idnnya: idnnya,
      nombre: nombre,
      idusers: idusers,
      vinculo: vinculo,
      apellido: apellido,
      telefono: telefono,
      direccion: direccion,
      idingreso: idingreso,
      updatedAt: updatedAt,
      conviviente: conviviente,
      idexppropio: idexppropio,
      idnnyaGrupo: idnnyaGrupo,
      vinculoObs: vinculoObs,
      observaciones: observaciones,
      idgrupofamiliar: idgrupofamiliar,
      fechaNacimiento: fechaNacimiento,
    );
