// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActasIngresoStruct extends BaseStruct {
  ActasIngresoStruct({
    int? id,
    String? createdAt,
    String? fecha,
    int? idingreso,
    String? link,
    String? linkActaFirmada,
    int? idform7,
  })  : _id = id,
        _createdAt = createdAt,
        _fecha = fecha,
        _idingreso = idingreso,
        _link = link,
        _linkActaFirmada = linkActaFirmada,
        _idform7 = idform7;

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

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "idingreso" field.
  int? _idingreso;
  int get idingreso => _idingreso ?? 0;
  set idingreso(int? val) => _idingreso = val;

  void incrementIdingreso(int amount) => idingreso = idingreso + amount;

  bool hasIdingreso() => _idingreso != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "link_Acta_firmada" field.
  String? _linkActaFirmada;
  String get linkActaFirmada => _linkActaFirmada ?? '';
  set linkActaFirmada(String? val) => _linkActaFirmada = val;

  bool hasLinkActaFirmada() => _linkActaFirmada != null;

  // "idform7" field.
  int? _idform7;
  int get idform7 => _idform7 ?? 0;
  set idform7(int? val) => _idform7 = val;

  void incrementIdform7(int amount) => idform7 = idform7 + amount;

  bool hasIdform7() => _idform7 != null;

  static ActasIngresoStruct fromMap(Map<String, dynamic> data) =>
      ActasIngresoStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        fecha: data['fecha'] as String?,
        idingreso: castToType<int>(data['idingreso']),
        link: data['link'] as String?,
        linkActaFirmada: data['link_Acta_firmada'] as String?,
        idform7: castToType<int>(data['idform7']),
      );

  static ActasIngresoStruct? maybeFromMap(dynamic data) => data is Map
      ? ActasIngresoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'fecha': _fecha,
        'idingreso': _idingreso,
        'link': _link,
        'link_Acta_firmada': _linkActaFirmada,
        'idform7': _idform7,
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
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'idingreso': serializeParam(
          _idingreso,
          ParamType.int,
        ),
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'link_Acta_firmada': serializeParam(
          _linkActaFirmada,
          ParamType.String,
        ),
        'idform7': serializeParam(
          _idform7,
          ParamType.int,
        ),
      }.withoutNulls;

  static ActasIngresoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActasIngresoStruct(
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
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        idingreso: deserializeParam(
          data['idingreso'],
          ParamType.int,
          false,
        ),
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        linkActaFirmada: deserializeParam(
          data['link_Acta_firmada'],
          ParamType.String,
          false,
        ),
        idform7: deserializeParam(
          data['idform7'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ActasIngresoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActasIngresoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        fecha == other.fecha &&
        idingreso == other.idingreso &&
        link == other.link &&
        linkActaFirmada == other.linkActaFirmada &&
        idform7 == other.idform7;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, fecha, idingreso, link, linkActaFirmada, idform7]);
}

ActasIngresoStruct createActasIngresoStruct({
  int? id,
  String? createdAt,
  String? fecha,
  int? idingreso,
  String? link,
  String? linkActaFirmada,
  int? idform7,
}) =>
    ActasIngresoStruct(
      id: id,
      createdAt: createdAt,
      fecha: fecha,
      idingreso: idingreso,
      link: link,
      linkActaFirmada: linkActaFirmada,
      idform7: idform7,
    );
