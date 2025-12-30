// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerfilGrupoConvivienteStruct extends BaseStruct {
  PerfilGrupoConvivienteStruct({
    int? id,
    String? nombre,
    String? apellido,
    String? vinculo,
    int? dni,
    String? fechaNacimiento,
    int? edad,
    String? telefono,
    String? direccion,
    String? observaciones,
    int? idingreso,
    int? idexpe,
    String? conviviente,
    String? idnnyaGrupo,
    String? updatedAt,
    String? idusers,
    String? idgrupofamiliar,
    String? idexppropio,
    int? idnnya,
    String? vinculoObs,
  })  : _id = id,
        _nombre = nombre,
        _apellido = apellido,
        _vinculo = vinculo,
        _dni = dni,
        _fechaNacimiento = fechaNacimiento,
        _edad = edad,
        _telefono = telefono,
        _direccion = direccion,
        _observaciones = observaciones,
        _idingreso = idingreso,
        _idexpe = idexpe,
        _conviviente = conviviente,
        _idnnyaGrupo = idnnyaGrupo,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _idgrupofamiliar = idgrupofamiliar,
        _idexppropio = idexppropio,
        _idnnya = idnnya,
        _vinculoObs = vinculoObs;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "dni" field.
  int? _dni;
  int get dni => _dni ?? 0;
  set dni(int? val) => _dni = val;

  void incrementDni(int amount) => dni = dni + amount;

  bool hasDni() => _dni != null;

  // "fecha_nacimiento" field.
  String? _fechaNacimiento;
  String get fechaNacimiento => _fechaNacimiento ?? '';
  set fechaNacimiento(String? val) => _fechaNacimiento = val;

  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  set edad(int? val) => _edad = val;

  void incrementEdad(int amount) => edad = edad + amount;

  bool hasEdad() => _edad != null;

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

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  set observaciones(String? val) => _observaciones = val;

  bool hasObservaciones() => _observaciones != null;

  // "idingreso" field.
  int? _idingreso;
  int get idingreso => _idingreso ?? 0;
  set idingreso(int? val) => _idingreso = val;

  void incrementIdingreso(int amount) => idingreso = idingreso + amount;

  bool hasIdingreso() => _idingreso != null;

  // "idexpe" field.
  int? _idexpe;
  int get idexpe => _idexpe ?? 0;
  set idexpe(int? val) => _idexpe = val;

  void incrementIdexpe(int amount) => idexpe = idexpe + amount;

  bool hasIdexpe() => _idexpe != null;

  // "conviviente" field.
  String? _conviviente;
  String get conviviente => _conviviente ?? '';
  set conviviente(String? val) => _conviviente = val;

  bool hasConviviente() => _conviviente != null;

  // "idnnyaGrupo" field.
  String? _idnnyaGrupo;
  String get idnnyaGrupo => _idnnyaGrupo ?? '';
  set idnnyaGrupo(String? val) => _idnnyaGrupo = val;

  bool hasIdnnyaGrupo() => _idnnyaGrupo != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  set idusers(String? val) => _idusers = val;

  bool hasIdusers() => _idusers != null;

  // "idgrupofamiliar" field.
  String? _idgrupofamiliar;
  String get idgrupofamiliar => _idgrupofamiliar ?? '';
  set idgrupofamiliar(String? val) => _idgrupofamiliar = val;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  // "idexppropio" field.
  String? _idexppropio;
  String get idexppropio => _idexppropio ?? '';
  set idexppropio(String? val) => _idexppropio = val;

  bool hasIdexppropio() => _idexppropio != null;

  // "idnnya" field.
  int? _idnnya;
  int get idnnya => _idnnya ?? 0;
  set idnnya(int? val) => _idnnya = val;

  void incrementIdnnya(int amount) => idnnya = idnnya + amount;

  bool hasIdnnya() => _idnnya != null;

  // "vinculo_obs" field.
  String? _vinculoObs;
  String get vinculoObs => _vinculoObs ?? '';
  set vinculoObs(String? val) => _vinculoObs = val;

  bool hasVinculoObs() => _vinculoObs != null;

  static PerfilGrupoConvivienteStruct fromMap(Map<String, dynamic> data) =>
      PerfilGrupoConvivienteStruct(
        id: castToType<int>(data['id']),
        nombre: data['nombre'] as String?,
        apellido: data['apellido'] as String?,
        vinculo: data['vinculo'] as String?,
        dni: castToType<int>(data['dni']),
        fechaNacimiento: data['fecha_nacimiento'] as String?,
        edad: castToType<int>(data['edad']),
        telefono: data['telefono'] as String?,
        direccion: data['direccion'] as String?,
        observaciones: data['observaciones'] as String?,
        idingreso: castToType<int>(data['idingreso']),
        idexpe: castToType<int>(data['idexpe']),
        conviviente: data['conviviente'] as String?,
        idnnyaGrupo: data['idnnyaGrupo'] as String?,
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        idexppropio: data['idexppropio'] as String?,
        idnnya: castToType<int>(data['idnnya']),
        vinculoObs: data['vinculo_obs'] as String?,
      );

  static PerfilGrupoConvivienteStruct? maybeFromMap(dynamic data) => data is Map
      ? PerfilGrupoConvivienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nombre': _nombre,
        'apellido': _apellido,
        'vinculo': _vinculo,
        'dni': _dni,
        'fecha_nacimiento': _fechaNacimiento,
        'edad': _edad,
        'telefono': _telefono,
        'direccion': _direccion,
        'observaciones': _observaciones,
        'idingreso': _idingreso,
        'idexpe': _idexpe,
        'conviviente': _conviviente,
        'idnnyaGrupo': _idnnyaGrupo,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'idgrupofamiliar': _idgrupofamiliar,
        'idexppropio': _idexppropio,
        'idnnya': _idnnya,
        'vinculo_obs': _vinculoObs,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'vinculo': serializeParam(
          _vinculo,
          ParamType.String,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.int,
        ),
        'fecha_nacimiento': serializeParam(
          _fechaNacimiento,
          ParamType.String,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'observaciones': serializeParam(
          _observaciones,
          ParamType.String,
        ),
        'idingreso': serializeParam(
          _idingreso,
          ParamType.int,
        ),
        'idexpe': serializeParam(
          _idexpe,
          ParamType.int,
        ),
        'conviviente': serializeParam(
          _conviviente,
          ParamType.String,
        ),
        'idnnyaGrupo': serializeParam(
          _idnnyaGrupo,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'idusers': serializeParam(
          _idusers,
          ParamType.String,
        ),
        'idgrupofamiliar': serializeParam(
          _idgrupofamiliar,
          ParamType.String,
        ),
        'idexppropio': serializeParam(
          _idexppropio,
          ParamType.String,
        ),
        'idnnya': serializeParam(
          _idnnya,
          ParamType.int,
        ),
        'vinculo_obs': serializeParam(
          _vinculoObs,
          ParamType.String,
        ),
      }.withoutNulls;

  static PerfilGrupoConvivienteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PerfilGrupoConvivienteStruct(
        id: deserializeParam(
          data['id'],
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
        vinculo: deserializeParam(
          data['vinculo'],
          ParamType.String,
          false,
        ),
        dni: deserializeParam(
          data['dni'],
          ParamType.int,
          false,
        ),
        fechaNacimiento: deserializeParam(
          data['fecha_nacimiento'],
          ParamType.String,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
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
        observaciones: deserializeParam(
          data['observaciones'],
          ParamType.String,
          false,
        ),
        idingreso: deserializeParam(
          data['idingreso'],
          ParamType.int,
          false,
        ),
        idexpe: deserializeParam(
          data['idexpe'],
          ParamType.int,
          false,
        ),
        conviviente: deserializeParam(
          data['conviviente'],
          ParamType.String,
          false,
        ),
        idnnyaGrupo: deserializeParam(
          data['idnnyaGrupo'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        idusers: deserializeParam(
          data['idusers'],
          ParamType.String,
          false,
        ),
        idgrupofamiliar: deserializeParam(
          data['idgrupofamiliar'],
          ParamType.String,
          false,
        ),
        idexppropio: deserializeParam(
          data['idexppropio'],
          ParamType.String,
          false,
        ),
        idnnya: deserializeParam(
          data['idnnya'],
          ParamType.int,
          false,
        ),
        vinculoObs: deserializeParam(
          data['vinculo_obs'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PerfilGrupoConvivienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PerfilGrupoConvivienteStruct &&
        id == other.id &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        vinculo == other.vinculo &&
        dni == other.dni &&
        fechaNacimiento == other.fechaNacimiento &&
        edad == other.edad &&
        telefono == other.telefono &&
        direccion == other.direccion &&
        observaciones == other.observaciones &&
        idingreso == other.idingreso &&
        idexpe == other.idexpe &&
        conviviente == other.conviviente &&
        idnnyaGrupo == other.idnnyaGrupo &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        idgrupofamiliar == other.idgrupofamiliar &&
        idexppropio == other.idexppropio &&
        idnnya == other.idnnya &&
        vinculoObs == other.vinculoObs;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nombre,
        apellido,
        vinculo,
        dni,
        fechaNacimiento,
        edad,
        telefono,
        direccion,
        observaciones,
        idingreso,
        idexpe,
        conviviente,
        idnnyaGrupo,
        updatedAt,
        idusers,
        idgrupofamiliar,
        idexppropio,
        idnnya,
        vinculoObs
      ]);
}

PerfilGrupoConvivienteStruct createPerfilGrupoConvivienteStruct({
  int? id,
  String? nombre,
  String? apellido,
  String? vinculo,
  int? dni,
  String? fechaNacimiento,
  int? edad,
  String? telefono,
  String? direccion,
  String? observaciones,
  int? idingreso,
  int? idexpe,
  String? conviviente,
  String? idnnyaGrupo,
  String? updatedAt,
  String? idusers,
  String? idgrupofamiliar,
  String? idexppropio,
  int? idnnya,
  String? vinculoObs,
}) =>
    PerfilGrupoConvivienteStruct(
      id: id,
      nombre: nombre,
      apellido: apellido,
      vinculo: vinculo,
      dni: dni,
      fechaNacimiento: fechaNacimiento,
      edad: edad,
      telefono: telefono,
      direccion: direccion,
      observaciones: observaciones,
      idingreso: idingreso,
      idexpe: idexpe,
      conviviente: conviviente,
      idnnyaGrupo: idnnyaGrupo,
      updatedAt: updatedAt,
      idusers: idusers,
      idgrupofamiliar: idgrupofamiliar,
      idexppropio: idexppropio,
      idnnya: idnnya,
      vinculoObs: vinculoObs,
    );
