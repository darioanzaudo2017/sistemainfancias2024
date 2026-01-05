// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Form9CeseRowStruct extends BaseStruct {
  Form9CeseRowStruct({
    int? id,
    String? fecha,
    String? causa,
    String? estado,
    String? observacionCese,
    String? fundamentacion,
    String? resenaSituacion,
    bool? spd,
  })  : _id = id,
        _fecha = fecha,
        _causa = causa,
        _estado = estado,
        _observacionCese = observacionCese,
        _fundamentacion = fundamentacion,
        _resenaSituacion = resenaSituacion,
        _spd = spd;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "causa" field.
  String? _causa;
  String get causa => _causa ?? '';
  set causa(String? val) => _causa = val;

  bool hasCausa() => _causa != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "observacion_cese" field.
  String? _observacionCese;
  String get observacionCese => _observacionCese ?? '';
  set observacionCese(String? val) => _observacionCese = val;

  bool hasObservacionCese() => _observacionCese != null;

  // "fundamentacion" field.
  String? _fundamentacion;
  String get fundamentacion => _fundamentacion ?? '';
  set fundamentacion(String? val) => _fundamentacion = val;

  bool hasFundamentacion() => _fundamentacion != null;

  // "resena_situacion" field.
  String? _resenaSituacion;
  String get resenaSituacion => _resenaSituacion ?? '';
  set resenaSituacion(String? val) => _resenaSituacion = val;

  bool hasResenaSituacion() => _resenaSituacion != null;

  // "spd" field.
  bool? _spd;
  bool get spd => _spd ?? false;
  set spd(bool? val) => _spd = val;

  bool hasSpd() => _spd != null;

  static Form9CeseRowStruct fromMap(Map<String, dynamic> data) =>
      Form9CeseRowStruct(
        id: castToType<int>(data['id']),
        fecha: data['fecha'] as String?,
        causa: data['causa'] as String?,
        estado: data['estado'] as String?,
        observacionCese: data['observacion_cese'] as String?,
        fundamentacion: data['fundamentacion'] as String?,
        resenaSituacion: data['resena_situacion'] as String?,
        spd: data['spd'] as bool?,
      );

  static Form9CeseRowStruct? maybeFromMap(dynamic data) => data is Map
      ? Form9CeseRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'fecha': _fecha,
        'causa': _causa,
        'estado': _estado,
        'observacion_cese': _observacionCese,
        'fundamentacion': _fundamentacion,
        'resena_situacion': _resenaSituacion,
        'spd': _spd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'causa': serializeParam(
          _causa,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'observacion_cese': serializeParam(
          _observacionCese,
          ParamType.String,
        ),
        'fundamentacion': serializeParam(
          _fundamentacion,
          ParamType.String,
        ),
        'resena_situacion': serializeParam(
          _resenaSituacion,
          ParamType.String,
        ),
        'spd': serializeParam(
          _spd,
          ParamType.bool,
        ),
      }.withoutNulls;

  static Form9CeseRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      Form9CeseRowStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        causa: deserializeParam(
          data['causa'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        observacionCese: deserializeParam(
          data['observacion_cese'],
          ParamType.String,
          false,
        ),
        fundamentacion: deserializeParam(
          data['fundamentacion'],
          ParamType.String,
          false,
        ),
        resenaSituacion: deserializeParam(
          data['resena_situacion'],
          ParamType.String,
          false,
        ),
        spd: deserializeParam(
          data['spd'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'Form9CeseRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Form9CeseRowStruct &&
        id == other.id &&
        fecha == other.fecha &&
        causa == other.causa &&
        estado == other.estado &&
        observacionCese == other.observacionCese &&
        fundamentacion == other.fundamentacion &&
        resenaSituacion == other.resenaSituacion &&
        spd == other.spd;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        fecha,
        causa,
        estado,
        observacionCese,
        fundamentacion,
        resenaSituacion,
        spd
      ]);
}

Form9CeseRowStruct createForm9CeseRowStruct({
  int? id,
  String? fecha,
  String? causa,
  String? estado,
  String? observacionCese,
  String? fundamentacion,
  String? resenaSituacion,
  bool? spd,
}) =>
    Form9CeseRowStruct(
      id: id,
      fecha: fecha,
      causa: causa,
      estado: estado,
      observacionCese: observacionCese,
      fundamentacion: fundamentacion,
      resenaSituacion: resenaSituacion,
      spd: spd,
    );
