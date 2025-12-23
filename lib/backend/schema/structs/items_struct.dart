// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsStruct extends BaseStruct {
  ItemsStruct({
    int? id,
    int? dni,
    String? spd,
    int? zona,
    String? nombres,
    String? apellidos,
    String? expediente,
    int? idIngreso,
    String? updatedAt,
    String? motivocierre,
    String? ultimoEstado,
    int? countIngresos,
    String? edadCalculada,
    int? idNNyA,
  })  : _id = id,
        _dni = dni,
        _spd = spd,
        _zona = zona,
        _nombres = nombres,
        _apellidos = apellidos,
        _expediente = expediente,
        _idIngreso = idIngreso,
        _updatedAt = updatedAt,
        _motivocierre = motivocierre,
        _ultimoEstado = ultimoEstado,
        _countIngresos = countIngresos,
        _edadCalculada = edadCalculada,
        _idNNyA = idNNyA;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "dni" field.
  int? _dni;
  int get dni => _dni ?? 0;
  set dni(int? val) => _dni = val;

  void incrementDni(int amount) => dni = dni + amount;

  bool hasDni() => _dni != null;

  // "spd" field.
  String? _spd;
  String get spd => _spd ?? '';
  set spd(String? val) => _spd = val;

  bool hasSpd() => _spd != null;

  // "Zona" field.
  int? _zona;
  int get zona => _zona ?? 0;
  set zona(int? val) => _zona = val;

  void incrementZona(int amount) => zona = zona + amount;

  bool hasZona() => _zona != null;

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  set nombres(String? val) => _nombres = val;

  bool hasNombres() => _nombres != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  set apellidos(String? val) => _apellidos = val;

  bool hasApellidos() => _apellidos != null;

  // "expediente" field.
  String? _expediente;
  String get expediente => _expediente ?? '';
  set expediente(String? val) => _expediente = val;

  bool hasExpediente() => _expediente != null;

  // "id_ingreso" field.
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

  // "Motivocierre" field.
  String? _motivocierre;
  String get motivocierre => _motivocierre ?? '';
  set motivocierre(String? val) => _motivocierre = val;

  bool hasMotivocierre() => _motivocierre != null;

  // "ultimo_estado" field.
  String? _ultimoEstado;
  String get ultimoEstado => _ultimoEstado ?? '';
  set ultimoEstado(String? val) => _ultimoEstado = val;

  bool hasUltimoEstado() => _ultimoEstado != null;

  // "count_ingresos" field.
  int? _countIngresos;
  int get countIngresos => _countIngresos ?? 0;
  set countIngresos(int? val) => _countIngresos = val;

  void incrementCountIngresos(int amount) =>
      countIngresos = countIngresos + amount;

  bool hasCountIngresos() => _countIngresos != null;

  // "edad_calculada" field.
  String? _edadCalculada;
  String get edadCalculada => _edadCalculada ?? '';
  set edadCalculada(String? val) => _edadCalculada = val;

  bool hasEdadCalculada() => _edadCalculada != null;

  // "idNNyA" field.
  int? _idNNyA;
  int get idNNyA => _idNNyA ?? 0;
  set idNNyA(int? val) => _idNNyA = val;

  void incrementIdNNyA(int amount) => idNNyA = idNNyA + amount;

  bool hasIdNNyA() => _idNNyA != null;

  static ItemsStruct fromMap(Map<String, dynamic> data) => ItemsStruct(
        id: castToType<int>(data['id']),
        dni: castToType<int>(data['dni']),
        spd: data['spd'] as String?,
        zona: castToType<int>(data['Zona']),
        nombres: data['nombres'] as String?,
        apellidos: data['apellidos'] as String?,
        expediente: data['expediente'] as String?,
        idIngreso: castToType<int>(data['id_ingreso']),
        updatedAt: data['updated_at'] as String?,
        motivocierre: data['Motivocierre'] as String?,
        ultimoEstado: data['ultimo_estado'] as String?,
        countIngresos: castToType<int>(data['count_ingresos']),
        edadCalculada: data['edad_calculada'] as String?,
        idNNyA: castToType<int>(data['idNNyA']),
      );

  static ItemsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItemsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'dni': _dni,
        'spd': _spd,
        'Zona': _zona,
        'nombres': _nombres,
        'apellidos': _apellidos,
        'expediente': _expediente,
        'id_ingreso': _idIngreso,
        'updated_at': _updatedAt,
        'Motivocierre': _motivocierre,
        'ultimo_estado': _ultimoEstado,
        'count_ingresos': _countIngresos,
        'edad_calculada': _edadCalculada,
        'idNNyA': _idNNyA,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.int,
        ),
        'spd': serializeParam(
          _spd,
          ParamType.String,
        ),
        'Zona': serializeParam(
          _zona,
          ParamType.int,
        ),
        'nombres': serializeParam(
          _nombres,
          ParamType.String,
        ),
        'apellidos': serializeParam(
          _apellidos,
          ParamType.String,
        ),
        'expediente': serializeParam(
          _expediente,
          ParamType.String,
        ),
        'id_ingreso': serializeParam(
          _idIngreso,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'Motivocierre': serializeParam(
          _motivocierre,
          ParamType.String,
        ),
        'ultimo_estado': serializeParam(
          _ultimoEstado,
          ParamType.String,
        ),
        'count_ingresos': serializeParam(
          _countIngresos,
          ParamType.int,
        ),
        'edad_calculada': serializeParam(
          _edadCalculada,
          ParamType.String,
        ),
        'idNNyA': serializeParam(
          _idNNyA,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        dni: deserializeParam(
          data['dni'],
          ParamType.int,
          false,
        ),
        spd: deserializeParam(
          data['spd'],
          ParamType.String,
          false,
        ),
        zona: deserializeParam(
          data['Zona'],
          ParamType.int,
          false,
        ),
        nombres: deserializeParam(
          data['nombres'],
          ParamType.String,
          false,
        ),
        apellidos: deserializeParam(
          data['apellidos'],
          ParamType.String,
          false,
        ),
        expediente: deserializeParam(
          data['expediente'],
          ParamType.String,
          false,
        ),
        idIngreso: deserializeParam(
          data['id_ingreso'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        motivocierre: deserializeParam(
          data['Motivocierre'],
          ParamType.String,
          false,
        ),
        ultimoEstado: deserializeParam(
          data['ultimo_estado'],
          ParamType.String,
          false,
        ),
        countIngresos: deserializeParam(
          data['count_ingresos'],
          ParamType.int,
          false,
        ),
        edadCalculada: deserializeParam(
          data['edad_calculada'],
          ParamType.String,
          false,
        ),
        idNNyA: deserializeParam(
          data['idNNyA'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemsStruct &&
        id == other.id &&
        dni == other.dni &&
        spd == other.spd &&
        zona == other.zona &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        expediente == other.expediente &&
        idIngreso == other.idIngreso &&
        updatedAt == other.updatedAt &&
        motivocierre == other.motivocierre &&
        ultimoEstado == other.ultimoEstado &&
        countIngresos == other.countIngresos &&
        edadCalculada == other.edadCalculada &&
        idNNyA == other.idNNyA;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        dni,
        spd,
        zona,
        nombres,
        apellidos,
        expediente,
        idIngreso,
        updatedAt,
        motivocierre,
        ultimoEstado,
        countIngresos,
        edadCalculada,
        idNNyA
      ]);
}

ItemsStruct createItemsStruct({
  int? id,
  int? dni,
  String? spd,
  int? zona,
  String? nombres,
  String? apellidos,
  String? expediente,
  int? idIngreso,
  String? updatedAt,
  String? motivocierre,
  String? ultimoEstado,
  int? countIngresos,
  String? edadCalculada,
  int? idNNyA,
}) =>
    ItemsStruct(
      id: id,
      dni: dni,
      spd: spd,
      zona: zona,
      nombres: nombres,
      apellidos: apellidos,
      expediente: expediente,
      idIngreso: idIngreso,
      updatedAt: updatedAt,
      motivocierre: motivocierre,
      ultimoEstado: ultimoEstado,
      countIngresos: countIngresos,
      edadCalculada: edadCalculada,
      idNNyA: idNNyA,
    );
