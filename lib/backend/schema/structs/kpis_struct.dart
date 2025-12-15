// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KpisStruct extends BaseStruct {
  KpisStruct({
    int? expedientesTotales,
    int? nnyaTotales,
    int? nnyaMenores18,
    int? nnyaMayores18,
    int? ingresosTotales,
    int? ingresosAbiertos,
    int? ingresosCerrados,
    int? ingresosUltimos30Dias,
  })  : _expedientesTotales = expedientesTotales,
        _nnyaTotales = nnyaTotales,
        _nnyaMenores18 = nnyaMenores18,
        _nnyaMayores18 = nnyaMayores18,
        _ingresosTotales = ingresosTotales,
        _ingresosAbiertos = ingresosAbiertos,
        _ingresosCerrados = ingresosCerrados,
        _ingresosUltimos30Dias = ingresosUltimos30Dias;

  // "expedientes_totales" field.
  int? _expedientesTotales;
  int get expedientesTotales => _expedientesTotales ?? 0;
  set expedientesTotales(int? val) => _expedientesTotales = val;

  void incrementExpedientesTotales(int amount) =>
      expedientesTotales = expedientesTotales + amount;

  bool hasExpedientesTotales() => _expedientesTotales != null;

  // "nnya_totales" field.
  int? _nnyaTotales;
  int get nnyaTotales => _nnyaTotales ?? 0;
  set nnyaTotales(int? val) => _nnyaTotales = val;

  void incrementNnyaTotales(int amount) => nnyaTotales = nnyaTotales + amount;

  bool hasNnyaTotales() => _nnyaTotales != null;

  // "nnya_menores_18" field.
  int? _nnyaMenores18;
  int get nnyaMenores18 => _nnyaMenores18 ?? 0;
  set nnyaMenores18(int? val) => _nnyaMenores18 = val;

  void incrementNnyaMenores18(int amount) =>
      nnyaMenores18 = nnyaMenores18 + amount;

  bool hasNnyaMenores18() => _nnyaMenores18 != null;

  // "nnya_mayores_18" field.
  int? _nnyaMayores18;
  int get nnyaMayores18 => _nnyaMayores18 ?? 0;
  set nnyaMayores18(int? val) => _nnyaMayores18 = val;

  void incrementNnyaMayores18(int amount) =>
      nnyaMayores18 = nnyaMayores18 + amount;

  bool hasNnyaMayores18() => _nnyaMayores18 != null;

  // "ingresos_totales" field.
  int? _ingresosTotales;
  int get ingresosTotales => _ingresosTotales ?? 0;
  set ingresosTotales(int? val) => _ingresosTotales = val;

  void incrementIngresosTotales(int amount) =>
      ingresosTotales = ingresosTotales + amount;

  bool hasIngresosTotales() => _ingresosTotales != null;

  // "ingresos_abiertos" field.
  int? _ingresosAbiertos;
  int get ingresosAbiertos => _ingresosAbiertos ?? 0;
  set ingresosAbiertos(int? val) => _ingresosAbiertos = val;

  void incrementIngresosAbiertos(int amount) =>
      ingresosAbiertos = ingresosAbiertos + amount;

  bool hasIngresosAbiertos() => _ingresosAbiertos != null;

  // "ingresos_cerrados" field.
  int? _ingresosCerrados;
  int get ingresosCerrados => _ingresosCerrados ?? 0;
  set ingresosCerrados(int? val) => _ingresosCerrados = val;

  void incrementIngresosCerrados(int amount) =>
      ingresosCerrados = ingresosCerrados + amount;

  bool hasIngresosCerrados() => _ingresosCerrados != null;

  // "ingresos_ultimos_30_dias" field.
  int? _ingresosUltimos30Dias;
  int get ingresosUltimos30Dias => _ingresosUltimos30Dias ?? 0;
  set ingresosUltimos30Dias(int? val) => _ingresosUltimos30Dias = val;

  void incrementIngresosUltimos30Dias(int amount) =>
      ingresosUltimos30Dias = ingresosUltimos30Dias + amount;

  bool hasIngresosUltimos30Dias() => _ingresosUltimos30Dias != null;

  static KpisStruct fromMap(Map<String, dynamic> data) => KpisStruct(
        expedientesTotales: castToType<int>(data['expedientes_totales']),
        nnyaTotales: castToType<int>(data['nnya_totales']),
        nnyaMenores18: castToType<int>(data['nnya_menores_18']),
        nnyaMayores18: castToType<int>(data['nnya_mayores_18']),
        ingresosTotales: castToType<int>(data['ingresos_totales']),
        ingresosAbiertos: castToType<int>(data['ingresos_abiertos']),
        ingresosCerrados: castToType<int>(data['ingresos_cerrados']),
        ingresosUltimos30Dias:
            castToType<int>(data['ingresos_ultimos_30_dias']),
      );

  static KpisStruct? maybeFromMap(dynamic data) =>
      data is Map ? KpisStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'expedientes_totales': _expedientesTotales,
        'nnya_totales': _nnyaTotales,
        'nnya_menores_18': _nnyaMenores18,
        'nnya_mayores_18': _nnyaMayores18,
        'ingresos_totales': _ingresosTotales,
        'ingresos_abiertos': _ingresosAbiertos,
        'ingresos_cerrados': _ingresosCerrados,
        'ingresos_ultimos_30_dias': _ingresosUltimos30Dias,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expedientes_totales': serializeParam(
          _expedientesTotales,
          ParamType.int,
        ),
        'nnya_totales': serializeParam(
          _nnyaTotales,
          ParamType.int,
        ),
        'nnya_menores_18': serializeParam(
          _nnyaMenores18,
          ParamType.int,
        ),
        'nnya_mayores_18': serializeParam(
          _nnyaMayores18,
          ParamType.int,
        ),
        'ingresos_totales': serializeParam(
          _ingresosTotales,
          ParamType.int,
        ),
        'ingresos_abiertos': serializeParam(
          _ingresosAbiertos,
          ParamType.int,
        ),
        'ingresos_cerrados': serializeParam(
          _ingresosCerrados,
          ParamType.int,
        ),
        'ingresos_ultimos_30_dias': serializeParam(
          _ingresosUltimos30Dias,
          ParamType.int,
        ),
      }.withoutNulls;

  static KpisStruct fromSerializableMap(Map<String, dynamic> data) =>
      KpisStruct(
        expedientesTotales: deserializeParam(
          data['expedientes_totales'],
          ParamType.int,
          false,
        ),
        nnyaTotales: deserializeParam(
          data['nnya_totales'],
          ParamType.int,
          false,
        ),
        nnyaMenores18: deserializeParam(
          data['nnya_menores_18'],
          ParamType.int,
          false,
        ),
        nnyaMayores18: deserializeParam(
          data['nnya_mayores_18'],
          ParamType.int,
          false,
        ),
        ingresosTotales: deserializeParam(
          data['ingresos_totales'],
          ParamType.int,
          false,
        ),
        ingresosAbiertos: deserializeParam(
          data['ingresos_abiertos'],
          ParamType.int,
          false,
        ),
        ingresosCerrados: deserializeParam(
          data['ingresos_cerrados'],
          ParamType.int,
          false,
        ),
        ingresosUltimos30Dias: deserializeParam(
          data['ingresos_ultimos_30_dias'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'KpisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is KpisStruct &&
        expedientesTotales == other.expedientesTotales &&
        nnyaTotales == other.nnyaTotales &&
        nnyaMenores18 == other.nnyaMenores18 &&
        nnyaMayores18 == other.nnyaMayores18 &&
        ingresosTotales == other.ingresosTotales &&
        ingresosAbiertos == other.ingresosAbiertos &&
        ingresosCerrados == other.ingresosCerrados &&
        ingresosUltimos30Dias == other.ingresosUltimos30Dias;
  }

  @override
  int get hashCode => const ListEquality().hash([
        expedientesTotales,
        nnyaTotales,
        nnyaMenores18,
        nnyaMayores18,
        ingresosTotales,
        ingresosAbiertos,
        ingresosCerrados,
        ingresosUltimos30Dias
      ]);
}

KpisStruct createKpisStruct({
  int? expedientesTotales,
  int? nnyaTotales,
  int? nnyaMenores18,
  int? nnyaMayores18,
  int? ingresosTotales,
  int? ingresosAbiertos,
  int? ingresosCerrados,
  int? ingresosUltimos30Dias,
}) =>
    KpisStruct(
      expedientesTotales: expedientesTotales,
      nnyaTotales: nnyaTotales,
      nnyaMenores18: nnyaMenores18,
      nnyaMayores18: nnyaMayores18,
      ingresosTotales: ingresosTotales,
      ingresosAbiertos: ingresosAbiertos,
      ingresosCerrados: ingresosCerrados,
      ingresosUltimos30Dias: ingresosUltimos30Dias,
    );
