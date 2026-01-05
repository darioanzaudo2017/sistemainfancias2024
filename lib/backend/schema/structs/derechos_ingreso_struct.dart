// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DerechosIngresoStruct extends BaseStruct {
  DerechosIngresoStruct({
    int? id,
    String? createdAt,
    String? derecho,
    String? subcategoria,
    String? fecha,
    String? principal,
    int? idexp,
    int? idingreso,
    String? formulario,
    String? updatedAt,
    String? idusers,
    String? iduser,
    String? idgrupofamiliar,
    bool? validoinforme,
    String? observaciones,
    String? indicadorVulneracion,
  })  : _id = id,
        _createdAt = createdAt,
        _derecho = derecho,
        _subcategoria = subcategoria,
        _fecha = fecha,
        _principal = principal,
        _idexp = idexp,
        _idingreso = idingreso,
        _formulario = formulario,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _iduser = iduser,
        _idgrupofamiliar = idgrupofamiliar,
        _validoinforme = validoinforme,
        _observaciones = observaciones,
        _indicadorVulneracion = indicadorVulneracion;

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

  // "Derecho" field.
  String? _derecho;
  String get derecho => _derecho ?? '';
  set derecho(String? val) => _derecho = val;

  bool hasDerecho() => _derecho != null;

  // "Subcategoria" field.
  String? _subcategoria;
  String get subcategoria => _subcategoria ?? '';
  set subcategoria(String? val) => _subcategoria = val;

  bool hasSubcategoria() => _subcategoria != null;

  // "Fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "principal" field.
  String? _principal;
  String get principal => _principal ?? '';
  set principal(String? val) => _principal = val;

  bool hasPrincipal() => _principal != null;

  // "idexp" field.
  int? _idexp;
  int get idexp => _idexp ?? 0;
  set idexp(int? val) => _idexp = val;

  void incrementIdexp(int amount) => idexp = idexp + amount;

  bool hasIdexp() => _idexp != null;

  // "idingreso" field.
  int? _idingreso;
  int get idingreso => _idingreso ?? 0;
  set idingreso(int? val) => _idingreso = val;

  void incrementIdingreso(int amount) => idingreso = idingreso + amount;

  bool hasIdingreso() => _idingreso != null;

  // "formulario" field.
  String? _formulario;
  String get formulario => _formulario ?? '';
  set formulario(String? val) => _formulario = val;

  bool hasFormulario() => _formulario != null;

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

  // "validoinforme" field.
  bool? _validoinforme;
  bool get validoinforme => _validoinforme ?? false;
  set validoinforme(bool? val) => _validoinforme = val;

  bool hasValidoinforme() => _validoinforme != null;

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

  static DerechosIngresoStruct fromMap(Map<String, dynamic> data) =>
      DerechosIngresoStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        derecho: data['Derecho'] as String?,
        subcategoria: data['Subcategoria'] as String?,
        fecha: data['Fecha'] as String?,
        principal: data['principal'] as String?,
        idexp: castToType<int>(data['idexp']),
        idingreso: castToType<int>(data['idingreso']),
        formulario: data['formulario'] as String?,
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        iduser: data['iduser'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        validoinforme: data['validoinforme'] as bool?,
        observaciones: data['observaciones'] as String?,
        indicadorVulneracion: data['indicador_vulneracion'] as String?,
      );

  static DerechosIngresoStruct? maybeFromMap(dynamic data) => data is Map
      ? DerechosIngresoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'Derecho': _derecho,
        'Subcategoria': _subcategoria,
        'Fecha': _fecha,
        'principal': _principal,
        'idexp': _idexp,
        'idingreso': _idingreso,
        'formulario': _formulario,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'iduser': _iduser,
        'idgrupofamiliar': _idgrupofamiliar,
        'validoinforme': _validoinforme,
        'observaciones': _observaciones,
        'indicador_vulneracion': _indicadorVulneracion,
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
        'Derecho': serializeParam(
          _derecho,
          ParamType.String,
        ),
        'Subcategoria': serializeParam(
          _subcategoria,
          ParamType.String,
        ),
        'Fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'principal': serializeParam(
          _principal,
          ParamType.String,
        ),
        'idexp': serializeParam(
          _idexp,
          ParamType.int,
        ),
        'idingreso': serializeParam(
          _idingreso,
          ParamType.int,
        ),
        'formulario': serializeParam(
          _formulario,
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
        'validoinforme': serializeParam(
          _validoinforme,
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

  static DerechosIngresoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DerechosIngresoStruct(
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
        derecho: deserializeParam(
          data['Derecho'],
          ParamType.String,
          false,
        ),
        subcategoria: deserializeParam(
          data['Subcategoria'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['Fecha'],
          ParamType.String,
          false,
        ),
        principal: deserializeParam(
          data['principal'],
          ParamType.String,
          false,
        ),
        idexp: deserializeParam(
          data['idexp'],
          ParamType.int,
          false,
        ),
        idingreso: deserializeParam(
          data['idingreso'],
          ParamType.int,
          false,
        ),
        formulario: deserializeParam(
          data['formulario'],
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
        validoinforme: deserializeParam(
          data['validoinforme'],
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
  String toString() => 'DerechosIngresoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DerechosIngresoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        derecho == other.derecho &&
        subcategoria == other.subcategoria &&
        fecha == other.fecha &&
        principal == other.principal &&
        idexp == other.idexp &&
        idingreso == other.idingreso &&
        formulario == other.formulario &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        iduser == other.iduser &&
        idgrupofamiliar == other.idgrupofamiliar &&
        validoinforme == other.validoinforme &&
        observaciones == other.observaciones &&
        indicadorVulneracion == other.indicadorVulneracion;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        derecho,
        subcategoria,
        fecha,
        principal,
        idexp,
        idingreso,
        formulario,
        updatedAt,
        idusers,
        iduser,
        idgrupofamiliar,
        validoinforme,
        observaciones,
        indicadorVulneracion
      ]);
}

DerechosIngresoStruct createDerechosIngresoStruct({
  int? id,
  String? createdAt,
  String? derecho,
  String? subcategoria,
  String? fecha,
  String? principal,
  int? idexp,
  int? idingreso,
  String? formulario,
  String? updatedAt,
  String? idusers,
  String? iduser,
  String? idgrupofamiliar,
  bool? validoinforme,
  String? observaciones,
  String? indicadorVulneracion,
}) =>
    DerechosIngresoStruct(
      id: id,
      createdAt: createdAt,
      derecho: derecho,
      subcategoria: subcategoria,
      fecha: fecha,
      principal: principal,
      idexp: idexp,
      idingreso: idingreso,
      formulario: formulario,
      updatedAt: updatedAt,
      idusers: idusers,
      iduser: iduser,
      idgrupofamiliar: idgrupofamiliar,
      validoinforme: validoinforme,
      observaciones: observaciones,
      indicadorVulneracion: indicadorVulneracion,
    );
