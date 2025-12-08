// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Seccion9Struct extends BaseStruct {
  Seccion9Struct({
    int? idSec9,
    String? iduser,
    String? idusers,
    String? desicion,
    int? idIngreso,
    String? updatedAt,
    String? observacion,
    int? idExpediente,
    String? idgrupofamiliar,
    String? linkAsesoramiento,
    String? idanexoderivacionA,
    String? idanexoderivacionB,
    String? idanexoasesoramiento,
  })  : _idSec9 = idSec9,
        _iduser = iduser,
        _idusers = idusers,
        _desicion = desicion,
        _idIngreso = idIngreso,
        _updatedAt = updatedAt,
        _observacion = observacion,
        _idExpediente = idExpediente,
        _idgrupofamiliar = idgrupofamiliar,
        _linkAsesoramiento = linkAsesoramiento,
        _idanexoderivacionA = idanexoderivacionA,
        _idanexoderivacionB = idanexoderivacionB,
        _idanexoasesoramiento = idanexoasesoramiento;

  // "idSec9" field.
  int? _idSec9;
  int get idSec9 => _idSec9 ?? 0;
  set idSec9(int? val) => _idSec9 = val;

  void incrementIdSec9(int amount) => idSec9 = idSec9 + amount;

  bool hasIdSec9() => _idSec9 != null;

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

  // "Desicion" field.
  String? _desicion;
  String get desicion => _desicion ?? '';
  set desicion(String? val) => _desicion = val;

  bool hasDesicion() => _desicion != null;

  // "idIngreso" field.
  int? _idIngreso;
  int get idIngreso => _idIngreso ?? 0;
  set idIngreso(int? val) => _idIngreso = val;

  void incrementIdIngreso(int amount) => idIngreso = idIngreso + amount;

  bool hasIdIngreso() => _idIngreso != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "Observacion" field.
  String? _observacion;
  String get observacion => _observacion ?? '';
  set observacion(String? val) => _observacion = val;

  bool hasObservacion() => _observacion != null;

  // "idExpediente" field.
  int? _idExpediente;
  int get idExpediente => _idExpediente ?? 0;
  set idExpediente(int? val) => _idExpediente = val;

  void incrementIdExpediente(int amount) =>
      idExpediente = idExpediente + amount;

  bool hasIdExpediente() => _idExpediente != null;

  // "idgrupofamiliar" field.
  String? _idgrupofamiliar;
  String get idgrupofamiliar => _idgrupofamiliar ?? '';
  set idgrupofamiliar(String? val) => _idgrupofamiliar = val;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  // "Link_asesoramiento" field.
  String? _linkAsesoramiento;
  String get linkAsesoramiento => _linkAsesoramiento ?? '';
  set linkAsesoramiento(String? val) => _linkAsesoramiento = val;

  bool hasLinkAsesoramiento() => _linkAsesoramiento != null;

  // "idanexoderivacionA" field.
  String? _idanexoderivacionA;
  String get idanexoderivacionA => _idanexoderivacionA ?? '';
  set idanexoderivacionA(String? val) => _idanexoderivacionA = val;

  bool hasIdanexoderivacionA() => _idanexoderivacionA != null;

  // "idanexoderivacionB" field.
  String? _idanexoderivacionB;
  String get idanexoderivacionB => _idanexoderivacionB ?? '';
  set idanexoderivacionB(String? val) => _idanexoderivacionB = val;

  bool hasIdanexoderivacionB() => _idanexoderivacionB != null;

  // "idanexoasesoramiento" field.
  String? _idanexoasesoramiento;
  String get idanexoasesoramiento => _idanexoasesoramiento ?? '';
  set idanexoasesoramiento(String? val) => _idanexoasesoramiento = val;

  bool hasIdanexoasesoramiento() => _idanexoasesoramiento != null;

  static Seccion9Struct fromMap(Map<String, dynamic> data) => Seccion9Struct(
        idSec9: castToType<int>(data['idSec9']),
        iduser: data['iduser'] as String?,
        idusers: data['idusers'] as String?,
        desicion: data['Desicion'] as String?,
        idIngreso: castToType<int>(data['idIngreso']),
        updatedAt: data['updated_at'] as String?,
        observacion: data['Observacion'] as String?,
        idExpediente: castToType<int>(data['idExpediente']),
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        linkAsesoramiento: data['Link_asesoramiento'] as String?,
        idanexoderivacionA: data['idanexoderivacionA'] as String?,
        idanexoderivacionB: data['idanexoderivacionB'] as String?,
        idanexoasesoramiento: data['idanexoasesoramiento'] as String?,
      );

  static Seccion9Struct? maybeFromMap(dynamic data) =>
      data is Map ? Seccion9Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idSec9': _idSec9,
        'iduser': _iduser,
        'idusers': _idusers,
        'Desicion': _desicion,
        'idIngreso': _idIngreso,
        'updated_at': _updatedAt,
        'Observacion': _observacion,
        'idExpediente': _idExpediente,
        'idgrupofamiliar': _idgrupofamiliar,
        'Link_asesoramiento': _linkAsesoramiento,
        'idanexoderivacionA': _idanexoderivacionA,
        'idanexoderivacionB': _idanexoderivacionB,
        'idanexoasesoramiento': _idanexoasesoramiento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idSec9': serializeParam(
          _idSec9,
          ParamType.int,
        ),
        'iduser': serializeParam(
          _iduser,
          ParamType.String,
        ),
        'idusers': serializeParam(
          _idusers,
          ParamType.String,
        ),
        'Desicion': serializeParam(
          _desicion,
          ParamType.String,
        ),
        'idIngreso': serializeParam(
          _idIngreso,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'Observacion': serializeParam(
          _observacion,
          ParamType.String,
        ),
        'idExpediente': serializeParam(
          _idExpediente,
          ParamType.int,
        ),
        'idgrupofamiliar': serializeParam(
          _idgrupofamiliar,
          ParamType.String,
        ),
        'Link_asesoramiento': serializeParam(
          _linkAsesoramiento,
          ParamType.String,
        ),
        'idanexoderivacionA': serializeParam(
          _idanexoderivacionA,
          ParamType.String,
        ),
        'idanexoderivacionB': serializeParam(
          _idanexoderivacionB,
          ParamType.String,
        ),
        'idanexoasesoramiento': serializeParam(
          _idanexoasesoramiento,
          ParamType.String,
        ),
      }.withoutNulls;

  static Seccion9Struct fromSerializableMap(Map<String, dynamic> data) =>
      Seccion9Struct(
        idSec9: deserializeParam(
          data['idSec9'],
          ParamType.int,
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
        desicion: deserializeParam(
          data['Desicion'],
          ParamType.String,
          false,
        ),
        idIngreso: deserializeParam(
          data['idIngreso'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        observacion: deserializeParam(
          data['Observacion'],
          ParamType.String,
          false,
        ),
        idExpediente: deserializeParam(
          data['idExpediente'],
          ParamType.int,
          false,
        ),
        idgrupofamiliar: deserializeParam(
          data['idgrupofamiliar'],
          ParamType.String,
          false,
        ),
        linkAsesoramiento: deserializeParam(
          data['Link_asesoramiento'],
          ParamType.String,
          false,
        ),
        idanexoderivacionA: deserializeParam(
          data['idanexoderivacionA'],
          ParamType.String,
          false,
        ),
        idanexoderivacionB: deserializeParam(
          data['idanexoderivacionB'],
          ParamType.String,
          false,
        ),
        idanexoasesoramiento: deserializeParam(
          data['idanexoasesoramiento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Seccion9Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Seccion9Struct &&
        idSec9 == other.idSec9 &&
        iduser == other.iduser &&
        idusers == other.idusers &&
        desicion == other.desicion &&
        idIngreso == other.idIngreso &&
        updatedAt == other.updatedAt &&
        observacion == other.observacion &&
        idExpediente == other.idExpediente &&
        idgrupofamiliar == other.idgrupofamiliar &&
        linkAsesoramiento == other.linkAsesoramiento &&
        idanexoderivacionA == other.idanexoderivacionA &&
        idanexoderivacionB == other.idanexoderivacionB &&
        idanexoasesoramiento == other.idanexoasesoramiento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idSec9,
        iduser,
        idusers,
        desicion,
        idIngreso,
        updatedAt,
        observacion,
        idExpediente,
        idgrupofamiliar,
        linkAsesoramiento,
        idanexoderivacionA,
        idanexoderivacionB,
        idanexoasesoramiento
      ]);
}

Seccion9Struct createSeccion9Struct({
  int? idSec9,
  String? iduser,
  String? idusers,
  String? desicion,
  int? idIngreso,
  String? updatedAt,
  String? observacion,
  int? idExpediente,
  String? idgrupofamiliar,
  String? linkAsesoramiento,
  String? idanexoderivacionA,
  String? idanexoderivacionB,
  String? idanexoasesoramiento,
}) =>
    Seccion9Struct(
      idSec9: idSec9,
      iduser: iduser,
      idusers: idusers,
      desicion: desicion,
      idIngreso: idIngreso,
      updatedAt: updatedAt,
      observacion: observacion,
      idExpediente: idExpediente,
      idgrupofamiliar: idgrupofamiliar,
      linkAsesoramiento: linkAsesoramiento,
      idanexoderivacionA: idanexoderivacionA,
      idanexoderivacionB: idanexoderivacionB,
      idanexoasesoramiento: idanexoasesoramiento,
    );
