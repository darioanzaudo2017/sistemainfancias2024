// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoFamiliarDtoStruct extends BaseStruct {
  GrupoFamiliarDtoStruct({
    int? id,
    int? idGrupoFamiliar,
    int? idExpediente,
    int? expedientePrincipal,
  })  : _id = id,
        _idGrupoFamiliar = idGrupoFamiliar,
        _idExpediente = idExpediente,
        _expedientePrincipal = expedientePrincipal;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "id_grupo_familiar" field.
  int? _idGrupoFamiliar;
  int get idGrupoFamiliar => _idGrupoFamiliar ?? 0;
  set idGrupoFamiliar(int? val) => _idGrupoFamiliar = val;

  void incrementIdGrupoFamiliar(int amount) =>
      idGrupoFamiliar = idGrupoFamiliar + amount;

  bool hasIdGrupoFamiliar() => _idGrupoFamiliar != null;

  // "id_expediente" field.
  int? _idExpediente;
  int get idExpediente => _idExpediente ?? 0;
  set idExpediente(int? val) => _idExpediente = val;

  void incrementIdExpediente(int amount) =>
      idExpediente = idExpediente + amount;

  bool hasIdExpediente() => _idExpediente != null;

  // "expediente_principal" field.
  int? _expedientePrincipal;
  int get expedientePrincipal => _expedientePrincipal ?? 0;
  set expedientePrincipal(int? val) => _expedientePrincipal = val;

  void incrementExpedientePrincipal(int amount) =>
      expedientePrincipal = expedientePrincipal + amount;

  bool hasExpedientePrincipal() => _expedientePrincipal != null;

  static GrupoFamiliarDtoStruct fromMap(Map<String, dynamic> data) =>
      GrupoFamiliarDtoStruct(
        id: castToType<int>(data['id']),
        idGrupoFamiliar: castToType<int>(data['id_grupo_familiar']),
        idExpediente: castToType<int>(data['id_expediente']),
        expedientePrincipal: castToType<int>(data['expediente_principal']),
      );

  static GrupoFamiliarDtoStruct? maybeFromMap(dynamic data) => data is Map
      ? GrupoFamiliarDtoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'id_grupo_familiar': _idGrupoFamiliar,
        'id_expediente': _idExpediente,
        'expediente_principal': _expedientePrincipal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'id_grupo_familiar': serializeParam(
          _idGrupoFamiliar,
          ParamType.int,
        ),
        'id_expediente': serializeParam(
          _idExpediente,
          ParamType.int,
        ),
        'expediente_principal': serializeParam(
          _expedientePrincipal,
          ParamType.int,
        ),
      }.withoutNulls;

  static GrupoFamiliarDtoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GrupoFamiliarDtoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idGrupoFamiliar: deserializeParam(
          data['id_grupo_familiar'],
          ParamType.int,
          false,
        ),
        idExpediente: deserializeParam(
          data['id_expediente'],
          ParamType.int,
          false,
        ),
        expedientePrincipal: deserializeParam(
          data['expediente_principal'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GrupoFamiliarDtoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GrupoFamiliarDtoStruct &&
        id == other.id &&
        idGrupoFamiliar == other.idGrupoFamiliar &&
        idExpediente == other.idExpediente &&
        expedientePrincipal == other.expedientePrincipal;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, idGrupoFamiliar, idExpediente, expedientePrincipal]);
}

GrupoFamiliarDtoStruct createGrupoFamiliarDtoStruct({
  int? id,
  int? idGrupoFamiliar,
  int? idExpediente,
  int? expedientePrincipal,
}) =>
    GrupoFamiliarDtoStruct(
      id: id,
      idGrupoFamiliar: idGrupoFamiliar,
      idExpediente: idExpediente,
      expedientePrincipal: expedientePrincipal,
    );
