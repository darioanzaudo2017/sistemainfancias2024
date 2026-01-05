// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Form6RowStruct extends BaseStruct {
  Form6RowStruct({
    int? id,
    String? createdAt,
    String? propuestasDemedidas,
    String? descripcionDeAcciones,
    String? responsables,
    String? plazos,
    String? accionesDeSeguimiento,
    String? fecha,
    int? idIngresoform6,
    int? idExpform6,
    String? estado,
    String? obsEstado,
    int? idmedidasustiuida,
    String? derechoVul,
    String? subDerecho,
    String? updatedAt,
    String? idusers,
    String? iduser,
    String? idgrupofamiliar,
    String? fechaPlazo,
    String? restituido,
    String? linkreqacciones,
    int? idlistaderechos,
    List<String>? idslistaderechos,
  })  : _id = id,
        _createdAt = createdAt,
        _propuestasDemedidas = propuestasDemedidas,
        _descripcionDeAcciones = descripcionDeAcciones,
        _responsables = responsables,
        _plazos = plazos,
        _accionesDeSeguimiento = accionesDeSeguimiento,
        _fecha = fecha,
        _idIngresoform6 = idIngresoform6,
        _idExpform6 = idExpform6,
        _estado = estado,
        _obsEstado = obsEstado,
        _idmedidasustiuida = idmedidasustiuida,
        _derechoVul = derechoVul,
        _subDerecho = subDerecho,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _iduser = iduser,
        _idgrupofamiliar = idgrupofamiliar,
        _fechaPlazo = fechaPlazo,
        _restituido = restituido,
        _linkreqacciones = linkreqacciones,
        _idlistaderechos = idlistaderechos,
        _idslistaderechos = idslistaderechos;

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

  // "propuestasDemedidas" field.
  String? _propuestasDemedidas;
  String get propuestasDemedidas => _propuestasDemedidas ?? '';
  set propuestasDemedidas(String? val) => _propuestasDemedidas = val;

  bool hasPropuestasDemedidas() => _propuestasDemedidas != null;

  // "DescripcionDeAcciones" field.
  String? _descripcionDeAcciones;
  String get descripcionDeAcciones => _descripcionDeAcciones ?? '';
  set descripcionDeAcciones(String? val) => _descripcionDeAcciones = val;

  bool hasDescripcionDeAcciones() => _descripcionDeAcciones != null;

  // "Responsables" field.
  String? _responsables;
  String get responsables => _responsables ?? '';
  set responsables(String? val) => _responsables = val;

  bool hasResponsables() => _responsables != null;

  // "plazos" field.
  String? _plazos;
  String get plazos => _plazos ?? '';
  set plazos(String? val) => _plazos = val;

  bool hasPlazos() => _plazos != null;

  // "AccionesDeSeguimiento" field.
  String? _accionesDeSeguimiento;
  String get accionesDeSeguimiento => _accionesDeSeguimiento ?? '';
  set accionesDeSeguimiento(String? val) => _accionesDeSeguimiento = val;

  bool hasAccionesDeSeguimiento() => _accionesDeSeguimiento != null;

  // "Fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "idIngresoform6" field.
  int? _idIngresoform6;
  int get idIngresoform6 => _idIngresoform6 ?? 0;
  set idIngresoform6(int? val) => _idIngresoform6 = val;

  void incrementIdIngresoform6(int amount) =>
      idIngresoform6 = idIngresoform6 + amount;

  bool hasIdIngresoform6() => _idIngresoform6 != null;

  // "idExpform6" field.
  int? _idExpform6;
  int get idExpform6 => _idExpform6 ?? 0;
  set idExpform6(int? val) => _idExpform6 = val;

  void incrementIdExpform6(int amount) => idExpform6 = idExpform6 + amount;

  bool hasIdExpform6() => _idExpform6 != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "ObsEstado" field.
  String? _obsEstado;
  String get obsEstado => _obsEstado ?? '';
  set obsEstado(String? val) => _obsEstado = val;

  bool hasObsEstado() => _obsEstado != null;

  // "idmedidasustiuida" field.
  int? _idmedidasustiuida;
  int get idmedidasustiuida => _idmedidasustiuida ?? 0;
  set idmedidasustiuida(int? val) => _idmedidasustiuida = val;

  void incrementIdmedidasustiuida(int amount) =>
      idmedidasustiuida = idmedidasustiuida + amount;

  bool hasIdmedidasustiuida() => _idmedidasustiuida != null;

  // "DerechoVul" field.
  String? _derechoVul;
  String get derechoVul => _derechoVul ?? '';
  set derechoVul(String? val) => _derechoVul = val;

  bool hasDerechoVul() => _derechoVul != null;

  // "subDerecho" field.
  String? _subDerecho;
  String get subDerecho => _subDerecho ?? '';
  set subDerecho(String? val) => _subDerecho = val;

  bool hasSubDerecho() => _subDerecho != null;

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

  // "iduser" field.
  String? _iduser;
  String get iduser => _iduser ?? '';
  set iduser(String? val) => _iduser = val;

  bool hasIduser() => _iduser != null;

  // "idgrupofamiliar" field.
  String? _idgrupofamiliar;
  String get idgrupofamiliar => _idgrupofamiliar ?? '';
  set idgrupofamiliar(String? val) => _idgrupofamiliar = val;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  // "fechaPlazo" field.
  String? _fechaPlazo;
  String get fechaPlazo => _fechaPlazo ?? '';
  set fechaPlazo(String? val) => _fechaPlazo = val;

  bool hasFechaPlazo() => _fechaPlazo != null;

  // "restituido" field.
  String? _restituido;
  String get restituido => _restituido ?? '';
  set restituido(String? val) => _restituido = val;

  bool hasRestituido() => _restituido != null;

  // "linkreqacciones" field.
  String? _linkreqacciones;
  String get linkreqacciones => _linkreqacciones ?? '';
  set linkreqacciones(String? val) => _linkreqacciones = val;

  bool hasLinkreqacciones() => _linkreqacciones != null;

  // "idlistaderechos" field.
  int? _idlistaderechos;
  int get idlistaderechos => _idlistaderechos ?? 0;
  set idlistaderechos(int? val) => _idlistaderechos = val;

  void incrementIdlistaderechos(int amount) =>
      idlistaderechos = idlistaderechos + amount;

  bool hasIdlistaderechos() => _idlistaderechos != null;

  // "idslistaderechos" field.
  List<String>? _idslistaderechos;
  List<String> get idslistaderechos => _idslistaderechos ?? const [];
  set idslistaderechos(List<String>? val) => _idslistaderechos = val;

  void updateIdslistaderechos(Function(List<String>) updateFn) {
    updateFn(_idslistaderechos ??= []);
  }

  bool hasIdslistaderechos() => _idslistaderechos != null;

  static Form6RowStruct fromMap(Map<String, dynamic> data) => Form6RowStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        propuestasDemedidas: data['propuestasDemedidas'] as String?,
        descripcionDeAcciones: data['DescripcionDeAcciones'] as String?,
        responsables: data['Responsables'] as String?,
        plazos: data['plazos'] as String?,
        accionesDeSeguimiento: data['AccionesDeSeguimiento'] as String?,
        fecha: data['Fecha'] as String?,
        idIngresoform6: castToType<int>(data['idIngresoform6']),
        idExpform6: castToType<int>(data['idExpform6']),
        estado: data['estado'] as String?,
        obsEstado: data['ObsEstado'] as String?,
        idmedidasustiuida: castToType<int>(data['idmedidasustiuida']),
        derechoVul: data['DerechoVul'] as String?,
        subDerecho: data['subDerecho'] as String?,
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        iduser: data['iduser'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        fechaPlazo: data['fechaPlazo'] as String?,
        restituido: data['restituido'] as String?,
        linkreqacciones: data['linkreqacciones'] as String?,
        idlistaderechos: castToType<int>(data['idlistaderechos']),
        idslistaderechos: getDataList(data['idslistaderechos']),
      );

  static Form6RowStruct? maybeFromMap(dynamic data) =>
      data is Map ? Form6RowStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'propuestasDemedidas': _propuestasDemedidas,
        'DescripcionDeAcciones': _descripcionDeAcciones,
        'Responsables': _responsables,
        'plazos': _plazos,
        'AccionesDeSeguimiento': _accionesDeSeguimiento,
        'Fecha': _fecha,
        'idIngresoform6': _idIngresoform6,
        'idExpform6': _idExpform6,
        'estado': _estado,
        'ObsEstado': _obsEstado,
        'idmedidasustiuida': _idmedidasustiuida,
        'DerechoVul': _derechoVul,
        'subDerecho': _subDerecho,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'iduser': _iduser,
        'idgrupofamiliar': _idgrupofamiliar,
        'fechaPlazo': _fechaPlazo,
        'restituido': _restituido,
        'linkreqacciones': _linkreqacciones,
        'idlistaderechos': _idlistaderechos,
        'idslistaderechos': _idslistaderechos,
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
        'propuestasDemedidas': serializeParam(
          _propuestasDemedidas,
          ParamType.String,
        ),
        'DescripcionDeAcciones': serializeParam(
          _descripcionDeAcciones,
          ParamType.String,
        ),
        'Responsables': serializeParam(
          _responsables,
          ParamType.String,
        ),
        'plazos': serializeParam(
          _plazos,
          ParamType.String,
        ),
        'AccionesDeSeguimiento': serializeParam(
          _accionesDeSeguimiento,
          ParamType.String,
        ),
        'Fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'idIngresoform6': serializeParam(
          _idIngresoform6,
          ParamType.int,
        ),
        'idExpform6': serializeParam(
          _idExpform6,
          ParamType.int,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'ObsEstado': serializeParam(
          _obsEstado,
          ParamType.String,
        ),
        'idmedidasustiuida': serializeParam(
          _idmedidasustiuida,
          ParamType.int,
        ),
        'DerechoVul': serializeParam(
          _derechoVul,
          ParamType.String,
        ),
        'subDerecho': serializeParam(
          _subDerecho,
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
        'iduser': serializeParam(
          _iduser,
          ParamType.String,
        ),
        'idgrupofamiliar': serializeParam(
          _idgrupofamiliar,
          ParamType.String,
        ),
        'fechaPlazo': serializeParam(
          _fechaPlazo,
          ParamType.String,
        ),
        'restituido': serializeParam(
          _restituido,
          ParamType.String,
        ),
        'linkreqacciones': serializeParam(
          _linkreqacciones,
          ParamType.String,
        ),
        'idlistaderechos': serializeParam(
          _idlistaderechos,
          ParamType.int,
        ),
        'idslistaderechos': serializeParam(
          _idslistaderechos,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static Form6RowStruct fromSerializableMap(Map<String, dynamic> data) =>
      Form6RowStruct(
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
        propuestasDemedidas: deserializeParam(
          data['propuestasDemedidas'],
          ParamType.String,
          false,
        ),
        descripcionDeAcciones: deserializeParam(
          data['DescripcionDeAcciones'],
          ParamType.String,
          false,
        ),
        responsables: deserializeParam(
          data['Responsables'],
          ParamType.String,
          false,
        ),
        plazos: deserializeParam(
          data['plazos'],
          ParamType.String,
          false,
        ),
        accionesDeSeguimiento: deserializeParam(
          data['AccionesDeSeguimiento'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['Fecha'],
          ParamType.String,
          false,
        ),
        idIngresoform6: deserializeParam(
          data['idIngresoform6'],
          ParamType.int,
          false,
        ),
        idExpform6: deserializeParam(
          data['idExpform6'],
          ParamType.int,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        obsEstado: deserializeParam(
          data['ObsEstado'],
          ParamType.String,
          false,
        ),
        idmedidasustiuida: deserializeParam(
          data['idmedidasustiuida'],
          ParamType.int,
          false,
        ),
        derechoVul: deserializeParam(
          data['DerechoVul'],
          ParamType.String,
          false,
        ),
        subDerecho: deserializeParam(
          data['subDerecho'],
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
        iduser: deserializeParam(
          data['iduser'],
          ParamType.String,
          false,
        ),
        idgrupofamiliar: deserializeParam(
          data['idgrupofamiliar'],
          ParamType.String,
          false,
        ),
        fechaPlazo: deserializeParam(
          data['fechaPlazo'],
          ParamType.String,
          false,
        ),
        restituido: deserializeParam(
          data['restituido'],
          ParamType.String,
          false,
        ),
        linkreqacciones: deserializeParam(
          data['linkreqacciones'],
          ParamType.String,
          false,
        ),
        idlistaderechos: deserializeParam(
          data['idlistaderechos'],
          ParamType.int,
          false,
        ),
        idslistaderechos: deserializeParam<String>(
          data['idslistaderechos'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'Form6RowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is Form6RowStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        propuestasDemedidas == other.propuestasDemedidas &&
        descripcionDeAcciones == other.descripcionDeAcciones &&
        responsables == other.responsables &&
        plazos == other.plazos &&
        accionesDeSeguimiento == other.accionesDeSeguimiento &&
        fecha == other.fecha &&
        idIngresoform6 == other.idIngresoform6 &&
        idExpform6 == other.idExpform6 &&
        estado == other.estado &&
        obsEstado == other.obsEstado &&
        idmedidasustiuida == other.idmedidasustiuida &&
        derechoVul == other.derechoVul &&
        subDerecho == other.subDerecho &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        iduser == other.iduser &&
        idgrupofamiliar == other.idgrupofamiliar &&
        fechaPlazo == other.fechaPlazo &&
        restituido == other.restituido &&
        linkreqacciones == other.linkreqacciones &&
        idlistaderechos == other.idlistaderechos &&
        listEquality.equals(idslistaderechos, other.idslistaderechos);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        propuestasDemedidas,
        descripcionDeAcciones,
        responsables,
        plazos,
        accionesDeSeguimiento,
        fecha,
        idIngresoform6,
        idExpform6,
        estado,
        obsEstado,
        idmedidasustiuida,
        derechoVul,
        subDerecho,
        updatedAt,
        idusers,
        iduser,
        idgrupofamiliar,
        fechaPlazo,
        restituido,
        linkreqacciones,
        idlistaderechos,
        idslistaderechos
      ]);
}

Form6RowStruct createForm6RowStruct({
  int? id,
  String? createdAt,
  String? propuestasDemedidas,
  String? descripcionDeAcciones,
  String? responsables,
  String? plazos,
  String? accionesDeSeguimiento,
  String? fecha,
  int? idIngresoform6,
  int? idExpform6,
  String? estado,
  String? obsEstado,
  int? idmedidasustiuida,
  String? derechoVul,
  String? subDerecho,
  String? updatedAt,
  String? idusers,
  String? iduser,
  String? idgrupofamiliar,
  String? fechaPlazo,
  String? restituido,
  String? linkreqacciones,
  int? idlistaderechos,
}) =>
    Form6RowStruct(
      id: id,
      createdAt: createdAt,
      propuestasDemedidas: propuestasDemedidas,
      descripcionDeAcciones: descripcionDeAcciones,
      responsables: responsables,
      plazos: plazos,
      accionesDeSeguimiento: accionesDeSeguimiento,
      fecha: fecha,
      idIngresoform6: idIngresoform6,
      idExpform6: idExpform6,
      estado: estado,
      obsEstado: obsEstado,
      idmedidasustiuida: idmedidasustiuida,
      derechoVul: derechoVul,
      subDerecho: subDerecho,
      updatedAt: updatedAt,
      idusers: idusers,
      iduser: iduser,
      idgrupofamiliar: idgrupofamiliar,
      fechaPlazo: fechaPlazo,
      restituido: restituido,
      linkreqacciones: linkreqacciones,
      idlistaderechos: idlistaderechos,
    );
