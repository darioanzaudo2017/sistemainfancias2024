// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DerechosDtoListStruct extends BaseStruct {
  DerechosDtoListStruct({
    int? id,
    String? derecho,
    String? subcategoria,
    String? fecha,
    String? principal,
    bool? validoInforme,
    String? observaciones,
    String? indicadorVulneracion,
  })  : _id = id,
        _derecho = derecho,
        _subcategoria = subcategoria,
        _fecha = fecha,
        _principal = principal,
        _validoInforme = validoInforme,
        _observaciones = observaciones,
        _indicadorVulneracion = indicadorVulneracion;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "derecho" field.
  String? _derecho;
  String get derecho => _derecho ?? '';
  set derecho(String? val) => _derecho = val;

  bool hasDerecho() => _derecho != null;

  // "subcategoria" field.
  String? _subcategoria;
  String get subcategoria => _subcategoria ?? '';
  set subcategoria(String? val) => _subcategoria = val;

  bool hasSubcategoria() => _subcategoria != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "principal" field.
  String? _principal;
  String get principal => _principal ?? '';
  set principal(String? val) => _principal = val;

  bool hasPrincipal() => _principal != null;

  // "valido_informe" field.
  bool? _validoInforme;
  bool get validoInforme => _validoInforme ?? false;
  set validoInforme(bool? val) => _validoInforme = val;

  bool hasValidoInforme() => _validoInforme != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  set observaciones(String? val) => _observaciones = val;

  bool hasObservaciones() => _observaciones != null;

  // "indicador_vulneracion" field.
  String? _indicadorVulneracion;
  String get indicadorVulneracion => _indicadorVulneracion ?? '';
  set indicadorVulneracion(String? val) => _indicadorVulneracion = val;

  bool hasIndicadorVulneracion() => _indicadorVulneracion != null;

  static DerechosDtoListStruct fromMap(Map<String, dynamic> data) =>
      DerechosDtoListStruct(
        id: castToType<int>(data['id']),
        derecho: data['derecho'] as String?,
        subcategoria: data['subcategoria'] as String?,
        fecha: data['fecha'] as String?,
        principal: data['principal'] as String?,
        validoInforme: data['valido_informe'] as bool?,
        observaciones: data['observaciones'] as String?,
        indicadorVulneracion: data['indicador_vulneracion'] as String?,
      );

  static DerechosDtoListStruct? maybeFromMap(dynamic data) => data is Map
      ? DerechosDtoListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'derecho': _derecho,
        'subcategoria': _subcategoria,
        'fecha': _fecha,
        'principal': _principal,
        'valido_informe': _validoInforme,
        'observaciones': _observaciones,
        'indicador_vulneracion': _indicadorVulneracion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'derecho': serializeParam(
          _derecho,
          ParamType.String,
        ),
        'subcategoria': serializeParam(
          _subcategoria,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'principal': serializeParam(
          _principal,
          ParamType.String,
        ),
        'valido_informe': serializeParam(
          _validoInforme,
          ParamType.bool,
        ),
        'observaciones': serializeParam(
          _observaciones,
          ParamType.String,
        ),
        'indicador_vulneracion': serializeParam(
          _indicadorVulneracion,
          ParamType.String,
        ),
      }.withoutNulls;

  static DerechosDtoListStruct fromSerializableMap(Map<String, dynamic> data) =>
      DerechosDtoListStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        derecho: deserializeParam(
          data['derecho'],
          ParamType.String,
          false,
        ),
        subcategoria: deserializeParam(
          data['subcategoria'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        principal: deserializeParam(
          data['principal'],
          ParamType.String,
          false,
        ),
        validoInforme: deserializeParam(
          data['valido_informe'],
          ParamType.bool,
          false,
        ),
        observaciones: deserializeParam(
          data['observaciones'],
          ParamType.String,
          false,
        ),
        indicadorVulneracion: deserializeParam(
          data['indicador_vulneracion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DerechosDtoListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DerechosDtoListStruct &&
        id == other.id &&
        derecho == other.derecho &&
        subcategoria == other.subcategoria &&
        fecha == other.fecha &&
        principal == other.principal &&
        validoInforme == other.validoInforme &&
        observaciones == other.observaciones &&
        indicadorVulneracion == other.indicadorVulneracion;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        derecho,
        subcategoria,
        fecha,
        principal,
        validoInforme,
        observaciones,
        indicadorVulneracion
      ]);
}

DerechosDtoListStruct createDerechosDtoListStruct({
  int? id,
  String? derecho,
  String? subcategoria,
  String? fecha,
  String? principal,
  bool? validoInforme,
  String? observaciones,
  String? indicadorVulneracion,
}) =>
    DerechosDtoListStruct(
      id: id,
      derecho: derecho,
      subcategoria: subcategoria,
      fecha: fecha,
      principal: principal,
      validoInforme: validoInforme,
      observaciones: observaciones,
      indicadorVulneracion: indicadorVulneracion,
    );
