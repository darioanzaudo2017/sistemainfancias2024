// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespuestasForm6Struct extends BaseStruct {
  RespuestasForm6Struct({
    int? id,
    String? createdAt,
    String? fecharespuesta,
    String? respuesta1,
    String? espeficarotrorec,
    String? fechareiteracion,
    String? respuesta2,
    String? especificarreiteracion2,
    String? plazo,
    String? fechaelevacion,
    String? accionreq,
    String? fechaaccionreq,
    String? intervencionelev,
    String? fechaintervencion,
    String? resultadointerv,
    int? inform6,
    bool? respuesta,
    bool? reiteracion,
    bool? elevacion,
    int? idingreso,
    String? updatedAt,
    String? idusers,
    String? idgrupofamiliar,
    String? fechaplazoreiteracion,
  })  : _id = id,
        _createdAt = createdAt,
        _fecharespuesta = fecharespuesta,
        _respuesta1 = respuesta1,
        _espeficarotrorec = espeficarotrorec,
        _fechareiteracion = fechareiteracion,
        _respuesta2 = respuesta2,
        _especificarreiteracion2 = especificarreiteracion2,
        _plazo = plazo,
        _fechaelevacion = fechaelevacion,
        _accionreq = accionreq,
        _fechaaccionreq = fechaaccionreq,
        _intervencionelev = intervencionelev,
        _fechaintervencion = fechaintervencion,
        _resultadointerv = resultadointerv,
        _inform6 = inform6,
        _respuesta = respuesta,
        _reiteracion = reiteracion,
        _elevacion = elevacion,
        _idingreso = idingreso,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _idgrupofamiliar = idgrupofamiliar,
        _fechaplazoreiteracion = fechaplazoreiteracion;

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

  // "fecharespuesta" field.
  String? _fecharespuesta;
  String get fecharespuesta => _fecharespuesta ?? '';
  set fecharespuesta(String? val) => _fecharespuesta = val;

  bool hasFecharespuesta() => _fecharespuesta != null;

  // "respuesta1" field.
  String? _respuesta1;
  String get respuesta1 => _respuesta1 ?? '';
  set respuesta1(String? val) => _respuesta1 = val;

  bool hasRespuesta1() => _respuesta1 != null;

  // "Espeficarotrorec" field.
  String? _espeficarotrorec;
  String get espeficarotrorec => _espeficarotrorec ?? '';
  set espeficarotrorec(String? val) => _espeficarotrorec = val;

  bool hasEspeficarotrorec() => _espeficarotrorec != null;

  // "fechareiteracion" field.
  String? _fechareiteracion;
  String get fechareiteracion => _fechareiteracion ?? '';
  set fechareiteracion(String? val) => _fechareiteracion = val;

  bool hasFechareiteracion() => _fechareiteracion != null;

  // "respuesta2" field.
  String? _respuesta2;
  String get respuesta2 => _respuesta2 ?? '';
  set respuesta2(String? val) => _respuesta2 = val;

  bool hasRespuesta2() => _respuesta2 != null;

  // "especificarreiteracion2" field.
  String? _especificarreiteracion2;
  String get especificarreiteracion2 => _especificarreiteracion2 ?? '';
  set especificarreiteracion2(String? val) => _especificarreiteracion2 = val;

  bool hasEspecificarreiteracion2() => _especificarreiteracion2 != null;

  // "plazo" field.
  String? _plazo;
  String get plazo => _plazo ?? '';
  set plazo(String? val) => _plazo = val;

  bool hasPlazo() => _plazo != null;

  // "fechaelevacion" field.
  String? _fechaelevacion;
  String get fechaelevacion => _fechaelevacion ?? '';
  set fechaelevacion(String? val) => _fechaelevacion = val;

  bool hasFechaelevacion() => _fechaelevacion != null;

  // "accionreq" field.
  String? _accionreq;
  String get accionreq => _accionreq ?? '';
  set accionreq(String? val) => _accionreq = val;

  bool hasAccionreq() => _accionreq != null;

  // "fechaaccionreq" field.
  String? _fechaaccionreq;
  String get fechaaccionreq => _fechaaccionreq ?? '';
  set fechaaccionreq(String? val) => _fechaaccionreq = val;

  bool hasFechaaccionreq() => _fechaaccionreq != null;

  // "intervencionelev" field.
  String? _intervencionelev;
  String get intervencionelev => _intervencionelev ?? '';
  set intervencionelev(String? val) => _intervencionelev = val;

  bool hasIntervencionelev() => _intervencionelev != null;

  // "fechaintervencion" field.
  String? _fechaintervencion;
  String get fechaintervencion => _fechaintervencion ?? '';
  set fechaintervencion(String? val) => _fechaintervencion = val;

  bool hasFechaintervencion() => _fechaintervencion != null;

  // "resultadointerv" field.
  String? _resultadointerv;
  String get resultadointerv => _resultadointerv ?? '';
  set resultadointerv(String? val) => _resultadointerv = val;

  bool hasResultadointerv() => _resultadointerv != null;

  // "inform6" field.
  int? _inform6;
  int get inform6 => _inform6 ?? 0;
  set inform6(int? val) => _inform6 = val;

  void incrementInform6(int amount) => inform6 = inform6 + amount;

  bool hasInform6() => _inform6 != null;

  // "respuesta" field.
  bool? _respuesta;
  bool get respuesta => _respuesta ?? false;
  set respuesta(bool? val) => _respuesta = val;

  bool hasRespuesta() => _respuesta != null;

  // "reiteracion" field.
  bool? _reiteracion;
  bool get reiteracion => _reiteracion ?? false;
  set reiteracion(bool? val) => _reiteracion = val;

  bool hasReiteracion() => _reiteracion != null;

  // "elevacion" field.
  bool? _elevacion;
  bool get elevacion => _elevacion ?? false;
  set elevacion(bool? val) => _elevacion = val;

  bool hasElevacion() => _elevacion != null;

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

  // "fechaplazoreiteracion" field.
  String? _fechaplazoreiteracion;
  String get fechaplazoreiteracion => _fechaplazoreiteracion ?? '';
  set fechaplazoreiteracion(String? val) => _fechaplazoreiteracion = val;

  bool hasFechaplazoreiteracion() => _fechaplazoreiteracion != null;

  static RespuestasForm6Struct fromMap(Map<String, dynamic> data) =>
      RespuestasForm6Struct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        fecharespuesta: data['fecharespuesta'] as String?,
        respuesta1: data['respuesta1'] as String?,
        espeficarotrorec: data['Espeficarotrorec'] as String?,
        fechareiteracion: data['fechareiteracion'] as String?,
        respuesta2: data['respuesta2'] as String?,
        especificarreiteracion2: data['especificarreiteracion2'] as String?,
        plazo: data['plazo'] as String?,
        fechaelevacion: data['fechaelevacion'] as String?,
        accionreq: data['accionreq'] as String?,
        fechaaccionreq: data['fechaaccionreq'] as String?,
        intervencionelev: data['intervencionelev'] as String?,
        fechaintervencion: data['fechaintervencion'] as String?,
        resultadointerv: data['resultadointerv'] as String?,
        inform6: castToType<int>(data['inform6']),
        respuesta: data['respuesta'] as bool?,
        reiteracion: data['reiteracion'] as bool?,
        elevacion: data['elevacion'] as bool?,
        idingreso: castToType<int>(data['idingreso']),
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        fechaplazoreiteracion: data['fechaplazoreiteracion'] as String?,
      );

  static RespuestasForm6Struct? maybeFromMap(dynamic data) => data is Map
      ? RespuestasForm6Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'fecharespuesta': _fecharespuesta,
        'respuesta1': _respuesta1,
        'Espeficarotrorec': _espeficarotrorec,
        'fechareiteracion': _fechareiteracion,
        'respuesta2': _respuesta2,
        'especificarreiteracion2': _especificarreiteracion2,
        'plazo': _plazo,
        'fechaelevacion': _fechaelevacion,
        'accionreq': _accionreq,
        'fechaaccionreq': _fechaaccionreq,
        'intervencionelev': _intervencionelev,
        'fechaintervencion': _fechaintervencion,
        'resultadointerv': _resultadointerv,
        'inform6': _inform6,
        'respuesta': _respuesta,
        'reiteracion': _reiteracion,
        'elevacion': _elevacion,
        'idingreso': _idingreso,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'idgrupofamiliar': _idgrupofamiliar,
        'fechaplazoreiteracion': _fechaplazoreiteracion,
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
        'fecharespuesta': serializeParam(
          _fecharespuesta,
          ParamType.String,
        ),
        'respuesta1': serializeParam(
          _respuesta1,
          ParamType.String,
        ),
        'Espeficarotrorec': serializeParam(
          _espeficarotrorec,
          ParamType.String,
        ),
        'fechareiteracion': serializeParam(
          _fechareiteracion,
          ParamType.String,
        ),
        'respuesta2': serializeParam(
          _respuesta2,
          ParamType.String,
        ),
        'especificarreiteracion2': serializeParam(
          _especificarreiteracion2,
          ParamType.String,
        ),
        'plazo': serializeParam(
          _plazo,
          ParamType.String,
        ),
        'fechaelevacion': serializeParam(
          _fechaelevacion,
          ParamType.String,
        ),
        'accionreq': serializeParam(
          _accionreq,
          ParamType.String,
        ),
        'fechaaccionreq': serializeParam(
          _fechaaccionreq,
          ParamType.String,
        ),
        'intervencionelev': serializeParam(
          _intervencionelev,
          ParamType.String,
        ),
        'fechaintervencion': serializeParam(
          _fechaintervencion,
          ParamType.String,
        ),
        'resultadointerv': serializeParam(
          _resultadointerv,
          ParamType.String,
        ),
        'inform6': serializeParam(
          _inform6,
          ParamType.int,
        ),
        'respuesta': serializeParam(
          _respuesta,
          ParamType.bool,
        ),
        'reiteracion': serializeParam(
          _reiteracion,
          ParamType.bool,
        ),
        'elevacion': serializeParam(
          _elevacion,
          ParamType.bool,
        ),
        'idingreso': serializeParam(
          _idingreso,
          ParamType.int,
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
        'fechaplazoreiteracion': serializeParam(
          _fechaplazoreiteracion,
          ParamType.String,
        ),
      }.withoutNulls;

  static RespuestasForm6Struct fromSerializableMap(Map<String, dynamic> data) =>
      RespuestasForm6Struct(
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
        fecharespuesta: deserializeParam(
          data['fecharespuesta'],
          ParamType.String,
          false,
        ),
        respuesta1: deserializeParam(
          data['respuesta1'],
          ParamType.String,
          false,
        ),
        espeficarotrorec: deserializeParam(
          data['Espeficarotrorec'],
          ParamType.String,
          false,
        ),
        fechareiteracion: deserializeParam(
          data['fechareiteracion'],
          ParamType.String,
          false,
        ),
        respuesta2: deserializeParam(
          data['respuesta2'],
          ParamType.String,
          false,
        ),
        especificarreiteracion2: deserializeParam(
          data['especificarreiteracion2'],
          ParamType.String,
          false,
        ),
        plazo: deserializeParam(
          data['plazo'],
          ParamType.String,
          false,
        ),
        fechaelevacion: deserializeParam(
          data['fechaelevacion'],
          ParamType.String,
          false,
        ),
        accionreq: deserializeParam(
          data['accionreq'],
          ParamType.String,
          false,
        ),
        fechaaccionreq: deserializeParam(
          data['fechaaccionreq'],
          ParamType.String,
          false,
        ),
        intervencionelev: deserializeParam(
          data['intervencionelev'],
          ParamType.String,
          false,
        ),
        fechaintervencion: deserializeParam(
          data['fechaintervencion'],
          ParamType.String,
          false,
        ),
        resultadointerv: deserializeParam(
          data['resultadointerv'],
          ParamType.String,
          false,
        ),
        inform6: deserializeParam(
          data['inform6'],
          ParamType.int,
          false,
        ),
        respuesta: deserializeParam(
          data['respuesta'],
          ParamType.bool,
          false,
        ),
        reiteracion: deserializeParam(
          data['reiteracion'],
          ParamType.bool,
          false,
        ),
        elevacion: deserializeParam(
          data['elevacion'],
          ParamType.bool,
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
        fechaplazoreiteracion: deserializeParam(
          data['fechaplazoreiteracion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RespuestasForm6Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RespuestasForm6Struct &&
        id == other.id &&
        createdAt == other.createdAt &&
        fecharespuesta == other.fecharespuesta &&
        respuesta1 == other.respuesta1 &&
        espeficarotrorec == other.espeficarotrorec &&
        fechareiteracion == other.fechareiteracion &&
        respuesta2 == other.respuesta2 &&
        especificarreiteracion2 == other.especificarreiteracion2 &&
        plazo == other.plazo &&
        fechaelevacion == other.fechaelevacion &&
        accionreq == other.accionreq &&
        fechaaccionreq == other.fechaaccionreq &&
        intervencionelev == other.intervencionelev &&
        fechaintervencion == other.fechaintervencion &&
        resultadointerv == other.resultadointerv &&
        inform6 == other.inform6 &&
        respuesta == other.respuesta &&
        reiteracion == other.reiteracion &&
        elevacion == other.elevacion &&
        idingreso == other.idingreso &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        idgrupofamiliar == other.idgrupofamiliar &&
        fechaplazoreiteracion == other.fechaplazoreiteracion;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        fecharespuesta,
        respuesta1,
        espeficarotrorec,
        fechareiteracion,
        respuesta2,
        especificarreiteracion2,
        plazo,
        fechaelevacion,
        accionreq,
        fechaaccionreq,
        intervencionelev,
        fechaintervencion,
        resultadointerv,
        inform6,
        respuesta,
        reiteracion,
        elevacion,
        idingreso,
        updatedAt,
        idusers,
        idgrupofamiliar,
        fechaplazoreiteracion
      ]);
}

RespuestasForm6Struct createRespuestasForm6Struct({
  int? id,
  String? createdAt,
  String? fecharespuesta,
  String? respuesta1,
  String? espeficarotrorec,
  String? fechareiteracion,
  String? respuesta2,
  String? especificarreiteracion2,
  String? plazo,
  String? fechaelevacion,
  String? accionreq,
  String? fechaaccionreq,
  String? intervencionelev,
  String? fechaintervencion,
  String? resultadointerv,
  int? inform6,
  bool? respuesta,
  bool? reiteracion,
  bool? elevacion,
  int? idingreso,
  String? updatedAt,
  String? idusers,
  String? idgrupofamiliar,
  String? fechaplazoreiteracion,
}) =>
    RespuestasForm6Struct(
      id: id,
      createdAt: createdAt,
      fecharespuesta: fecharespuesta,
      respuesta1: respuesta1,
      espeficarotrorec: espeficarotrorec,
      fechareiteracion: fechareiteracion,
      respuesta2: respuesta2,
      especificarreiteracion2: especificarreiteracion2,
      plazo: plazo,
      fechaelevacion: fechaelevacion,
      accionreq: accionreq,
      fechaaccionreq: fechaaccionreq,
      intervencionelev: intervencionelev,
      fechaintervencion: fechaintervencion,
      resultadointerv: resultadointerv,
      inform6: inform6,
      respuesta: respuesta,
      reiteracion: reiteracion,
      elevacion: elevacion,
      idingreso: idingreso,
      updatedAt: updatedAt,
      idusers: idusers,
      idgrupofamiliar: idgrupofamiliar,
      fechaplazoreiteracion: fechaplazoreiteracion,
    );
