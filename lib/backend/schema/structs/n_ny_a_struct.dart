// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NNyAStruct extends BaseStruct {
  NNyAStruct({
    int? id,
    int? dni,
    int? edad,
    String? nombre,
    String? iduser,
    String? idusers,
    String? apellido,
    String? createdAt,
    String? updatedAt,
    String? idexppropio,
    String? idgrupofamiliar,
  })  : _id = id,
        _dni = dni,
        _edad = edad,
        _nombre = nombre,
        _iduser = iduser,
        _idusers = idusers,
        _apellido = apellido,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _idexppropio = idexppropio,
        _idgrupofamiliar = idgrupofamiliar;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "DNI" field.
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

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "iduser" field.
  String? _iduser;
  String get iduser => _iduser ?? '';
  set iduser(String? val) => _iduser = val;

  bool hasIduser() => _iduser != null;

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  set idusers(String? val) => _idusers = val;

  bool hasIdusers() => _idusers != null;

  // "Apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "idexppropio" field.
  String? _idexppropio;
  String get idexppropio => _idexppropio ?? '';
  set idexppropio(String? val) => _idexppropio = val;

  bool hasIdexppropio() => _idexppropio != null;

  // "idgrupofamiliar" field.
  String? _idgrupofamiliar;
  String get idgrupofamiliar => _idgrupofamiliar ?? '';
  set idgrupofamiliar(String? val) => _idgrupofamiliar = val;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  static NNyAStruct fromMap(Map<String, dynamic> data) => NNyAStruct(
        id: castToType<int>(data['id']),
        dni: castToType<int>(data['DNI']),
        edad: castToType<int>(data['edad']),
        nombre: data['Nombre'] as String?,
        iduser: data['iduser'] as String?,
        idusers: data['idusers'] as String?,
        apellido: data['Apellido'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        idexppropio: data['idexppropio'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
      );

  static NNyAStruct? maybeFromMap(dynamic data) =>
      data is Map ? NNyAStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'DNI': _dni,
        'edad': _edad,
        'Nombre': _nombre,
        'iduser': _iduser,
        'idusers': _idusers,
        'Apellido': _apellido,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'idexppropio': _idexppropio,
        'idgrupofamiliar': _idgrupofamiliar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'DNI': serializeParam(
          _dni,
          ParamType.int,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'iduser': serializeParam(
          _iduser,
          ParamType.String,
        ),
        'idusers': serializeParam(
          _idusers,
          ParamType.String,
        ),
        'Apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'idexppropio': serializeParam(
          _idexppropio,
          ParamType.String,
        ),
        'idgrupofamiliar': serializeParam(
          _idgrupofamiliar,
          ParamType.String,
        ),
      }.withoutNulls;

  static NNyAStruct fromSerializableMap(Map<String, dynamic> data) =>
      NNyAStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        dni: deserializeParam(
          data['DNI'],
          ParamType.int,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
          false,
        ),
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        iduser: deserializeParam(
          data['iduser'],
          ParamType.String,
          false,
        ),
        idusers: deserializeParam(
          data['idusers'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['Apellido'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        idexppropio: deserializeParam(
          data['idexppropio'],
          ParamType.String,
          false,
        ),
        idgrupofamiliar: deserializeParam(
          data['idgrupofamiliar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NNyAStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NNyAStruct &&
        id == other.id &&
        dni == other.dni &&
        edad == other.edad &&
        nombre == other.nombre &&
        iduser == other.iduser &&
        idusers == other.idusers &&
        apellido == other.apellido &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        idexppropio == other.idexppropio &&
        idgrupofamiliar == other.idgrupofamiliar;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        dni,
        edad,
        nombre,
        iduser,
        idusers,
        apellido,
        createdAt,
        updatedAt,
        idexppropio,
        idgrupofamiliar
      ]);
}

NNyAStruct createNNyAStruct({
  int? id,
  int? dni,
  int? edad,
  String? nombre,
  String? iduser,
  String? idusers,
  String? apellido,
  String? createdAt,
  String? updatedAt,
  String? idexppropio,
  String? idgrupofamiliar,
}) =>
    NNyAStruct(
      id: id,
      dni: dni,
      edad: edad,
      nombre: nombre,
      iduser: iduser,
      idusers: idusers,
      apellido: apellido,
      createdAt: createdAt,
      updatedAt: updatedAt,
      idexppropio: idexppropio,
      idgrupofamiliar: idgrupofamiliar,
    );
