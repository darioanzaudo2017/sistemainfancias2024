// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Formulario5DtoStruct extends BaseStruct {
  Formulario5DtoStruct({
    int? id,
    String? fecha,
    String? profesionales,
    String? antecedentes,
    String? info1,
    String? info2,
    String? info3,
    String? responsables,
    String? valoracionIntegral,
    String? propuestaMedida,
    String? tieneCriterios,
  })  : _id = id,
        _fecha = fecha,
        _profesionales = profesionales,
        _antecedentes = antecedentes,
        _info1 = info1,
        _info2 = info2,
        _info3 = info3,
        _responsables = responsables,
        _valoracionIntegral = valoracionIntegral,
        _propuestaMedida = propuestaMedida,
        _tieneCriterios = tieneCriterios;

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

  // "profesionales" field.
  String? _profesionales;
  String get profesionales => _profesionales ?? '';
  set profesionales(String? val) => _profesionales = val;

  bool hasProfesionales() => _profesionales != null;

  // "antecedentes" field.
  String? _antecedentes;
  String get antecedentes => _antecedentes ?? '';
  set antecedentes(String? val) => _antecedentes = val;

  bool hasAntecedentes() => _antecedentes != null;

  // "info_1" field.
  String? _info1;
  String get info1 => _info1 ?? '';
  set info1(String? val) => _info1 = val;

  bool hasInfo1() => _info1 != null;

  // "info_2" field.
  String? _info2;
  String get info2 => _info2 ?? '';
  set info2(String? val) => _info2 = val;

  bool hasInfo2() => _info2 != null;

  // "info_3" field.
  String? _info3;
  String get info3 => _info3 ?? '';
  set info3(String? val) => _info3 = val;

  bool hasInfo3() => _info3 != null;

  // "responsables" field.
  String? _responsables;
  String get responsables => _responsables ?? '';
  set responsables(String? val) => _responsables = val;

  bool hasResponsables() => _responsables != null;

  // "valoracion_integral" field.
  String? _valoracionIntegral;
  String get valoracionIntegral => _valoracionIntegral ?? '';
  set valoracionIntegral(String? val) => _valoracionIntegral = val;

  bool hasValoracionIntegral() => _valoracionIntegral != null;

  // "propuesta_medida" field.
  String? _propuestaMedida;
  String get propuestaMedida => _propuestaMedida ?? '';
  set propuestaMedida(String? val) => _propuestaMedida = val;

  bool hasPropuestaMedida() => _propuestaMedida != null;

  // "tiene_criterios" field.
  String? _tieneCriterios;
  String get tieneCriterios => _tieneCriterios ?? '';
  set tieneCriterios(String? val) => _tieneCriterios = val;

  bool hasTieneCriterios() => _tieneCriterios != null;

  static Formulario5DtoStruct fromMap(Map<String, dynamic> data) =>
      Formulario5DtoStruct(
        id: castToType<int>(data['id']),
        fecha: data['fecha'] as String?,
        profesionales: data['profesionales'] as String?,
        antecedentes: data['antecedentes'] as String?,
        info1: data['info_1'] as String?,
        info2: data['info_2'] as String?,
        info3: data['info_3'] as String?,
        responsables: data['responsables'] as String?,
        valoracionIntegral: data['valoracion_integral'] as String?,
        propuestaMedida: data['propuesta_medida'] as String?,
        tieneCriterios: data['tiene_criterios'] as String?,
      );

  static Formulario5DtoStruct? maybeFromMap(dynamic data) => data is Map
      ? Formulario5DtoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'fecha': _fecha,
        'profesionales': _profesionales,
        'antecedentes': _antecedentes,
        'info_1': _info1,
        'info_2': _info2,
        'info_3': _info3,
        'responsables': _responsables,
        'valoracion_integral': _valoracionIntegral,
        'propuesta_medida': _propuestaMedida,
        'tiene_criterios': _tieneCriterios,
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
        'profesionales': serializeParam(
          _profesionales,
          ParamType.String,
        ),
        'antecedentes': serializeParam(
          _antecedentes,
          ParamType.String,
        ),
        'info_1': serializeParam(
          _info1,
          ParamType.String,
        ),
        'info_2': serializeParam(
          _info2,
          ParamType.String,
        ),
        'info_3': serializeParam(
          _info3,
          ParamType.String,
        ),
        'responsables': serializeParam(
          _responsables,
          ParamType.String,
        ),
        'valoracion_integral': serializeParam(
          _valoracionIntegral,
          ParamType.String,
        ),
        'propuesta_medida': serializeParam(
          _propuestaMedida,
          ParamType.String,
        ),
        'tiene_criterios': serializeParam(
          _tieneCriterios,
          ParamType.String,
        ),
      }.withoutNulls;

  static Formulario5DtoStruct fromSerializableMap(Map<String, dynamic> data) =>
      Formulario5DtoStruct(
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
        profesionales: deserializeParam(
          data['profesionales'],
          ParamType.String,
          false,
        ),
        antecedentes: deserializeParam(
          data['antecedentes'],
          ParamType.String,
          false,
        ),
        info1: deserializeParam(
          data['info_1'],
          ParamType.String,
          false,
        ),
        info2: deserializeParam(
          data['info_2'],
          ParamType.String,
          false,
        ),
        info3: deserializeParam(
          data['info_3'],
          ParamType.String,
          false,
        ),
        responsables: deserializeParam(
          data['responsables'],
          ParamType.String,
          false,
        ),
        valoracionIntegral: deserializeParam(
          data['valoracion_integral'],
          ParamType.String,
          false,
        ),
        propuestaMedida: deserializeParam(
          data['propuesta_medida'],
          ParamType.String,
          false,
        ),
        tieneCriterios: deserializeParam(
          data['tiene_criterios'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Formulario5DtoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Formulario5DtoStruct &&
        id == other.id &&
        fecha == other.fecha &&
        profesionales == other.profesionales &&
        antecedentes == other.antecedentes &&
        info1 == other.info1 &&
        info2 == other.info2 &&
        info3 == other.info3 &&
        responsables == other.responsables &&
        valoracionIntegral == other.valoracionIntegral &&
        propuestaMedida == other.propuestaMedida &&
        tieneCriterios == other.tieneCriterios;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        fecha,
        profesionales,
        antecedentes,
        info1,
        info2,
        info3,
        responsables,
        valoracionIntegral,
        propuestaMedida,
        tieneCriterios
      ]);
}

Formulario5DtoStruct createFormulario5DtoStruct({
  int? id,
  String? fecha,
  String? profesionales,
  String? antecedentes,
  String? info1,
  String? info2,
  String? info3,
  String? responsables,
  String? valoracionIntegral,
  String? propuestaMedida,
  String? tieneCriterios,
}) =>
    Formulario5DtoStruct(
      id: id,
      fecha: fecha,
      profesionales: profesionales,
      antecedentes: antecedentes,
      info1: info1,
      info2: info2,
      info3: info3,
      responsables: responsables,
      valoracionIntegral: valoracionIntegral,
      propuestaMedida: propuestaMedida,
      tieneCriterios: tieneCriterios,
    );
