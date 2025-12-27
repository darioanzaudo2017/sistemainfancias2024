// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoFamiliarDataStruct extends BaseStruct {
  GrupoFamiliarDataStruct({
    int? id,
    String? createdAt,
    int? idgrupofamliar,
    int? idexpediente,
    int? expedienteprincipal,
  })  : _id = id,
        _createdAt = createdAt,
        _idgrupofamliar = idgrupofamliar,
        _idexpediente = idexpediente,
        _expedienteprincipal = expedienteprincipal;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "idgrupofamliar" field.
  int? _idgrupofamliar;
  int get idgrupofamliar => _idgrupofamliar ?? 0;
  set idgrupofamliar(int? val) => _idgrupofamliar = val;

  void incrementIdgrupofamliar(int amount) =>
      idgrupofamliar = idgrupofamliar + amount;

  bool hasIdgrupofamliar() => _idgrupofamliar != null;

  // "idexpediente" field.
  int? _idexpediente;
  int get idexpediente => _idexpediente ?? 0;
  set idexpediente(int? val) => _idexpediente = val;

  void incrementIdexpediente(int amount) =>
      idexpediente = idexpediente + amount;

  bool hasIdexpediente() => _idexpediente != null;

  // "expedienteprincipal" field.
  int? _expedienteprincipal;
  int get expedienteprincipal => _expedienteprincipal ?? 0;
  set expedienteprincipal(int? val) => _expedienteprincipal = val;

  void incrementExpedienteprincipal(int amount) =>
      expedienteprincipal = expedienteprincipal + amount;

  bool hasExpedienteprincipal() => _expedienteprincipal != null;

  static GrupoFamiliarDataStruct fromMap(Map<String, dynamic> data) =>
      GrupoFamiliarDataStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        idgrupofamliar: castToType<int>(data['idgrupofamliar']),
        idexpediente: castToType<int>(data['idexpediente']),
        expedienteprincipal: castToType<int>(data['expedienteprincipal']),
      );

  static GrupoFamiliarDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GrupoFamiliarDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'idgrupofamliar': _idgrupofamliar,
        'idexpediente': _idexpediente,
        'expedienteprincipal': _expedienteprincipal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'idgrupofamliar': serializeParam(
          _idgrupofamliar,
          ParamType.int,
        ),
        'idexpediente': serializeParam(
          _idexpediente,
          ParamType.int,
        ),
        'expedienteprincipal': serializeParam(
          _expedienteprincipal,
          ParamType.int,
        ),
      }.withoutNulls;

  static GrupoFamiliarDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GrupoFamiliarDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        idgrupofamliar: deserializeParam(
          data['idgrupofamliar'],
          ParamType.int,
          false,
        ),
        idexpediente: deserializeParam(
          data['idexpediente'],
          ParamType.int,
          false,
        ),
        expedienteprincipal: deserializeParam(
          data['expedienteprincipal'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GrupoFamiliarDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GrupoFamiliarDataStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        idgrupofamliar == other.idgrupofamliar &&
        idexpediente == other.idexpediente &&
        expedienteprincipal == other.expedienteprincipal;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, idgrupofamliar, idexpediente, expedienteprincipal]);
}

GrupoFamiliarDataStruct createGrupoFamiliarDataStruct({
  int? id,
  String? createdAt,
  int? idgrupofamliar,
  int? idexpediente,
  int? expedienteprincipal,
}) =>
    GrupoFamiliarDataStruct(
      id: id,
      createdAt: createdAt,
      idgrupofamliar: idgrupofamliar,
      idexpediente: idexpediente,
      expedienteprincipal: expedienteprincipal,
    );
