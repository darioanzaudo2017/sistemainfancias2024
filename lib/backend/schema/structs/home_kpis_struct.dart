// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomeKpisStruct extends BaseStruct {
  HomeKpisStruct({
    int? expedientesTotales,
    int? personasRegistradas,
    int? nnyaMenores18,
    int? nnyaMayores18,
    int? ingresosTotales,
    int? ingresosAbiertos,
    int? ingresosCerrados,
    int? ingresosUltimos30Dias,
    int? ingresosCerradosAsesoramiento,
    int? solicitudesSenaf,
  })  : _expedientesTotales = expedientesTotales,
        _personasRegistradas = personasRegistradas,
        _nnyaMenores18 = nnyaMenores18,
        _nnyaMayores18 = nnyaMayores18,
        _ingresosTotales = ingresosTotales,
        _ingresosAbiertos = ingresosAbiertos,
        _ingresosCerrados = ingresosCerrados,
        _ingresosUltimos30Dias = ingresosUltimos30Dias,
        _ingresosCerradosAsesoramiento = ingresosCerradosAsesoramiento,
        _solicitudesSenaf = solicitudesSenaf;

  // "expedientes_totales" field.
  int? _expedientesTotales;
  int get expedientesTotales => _expedientesTotales ?? 0;
  set expedientesTotales(int? val) => _expedientesTotales = val;

  void incrementExpedientesTotales(int amount) =>
      expedientesTotales = expedientesTotales + amount;

  bool hasExpedientesTotales() => _expedientesTotales != null;

  // "personas_registradas" field.
  int? _personasRegistradas;
  int get personasRegistradas => _personasRegistradas ?? 0;
  set personasRegistradas(int? val) => _personasRegistradas = val;

  void incrementPersonasRegistradas(int amount) =>
      personasRegistradas = personasRegistradas + amount;

  bool hasPersonasRegistradas() => _personasRegistradas != null;

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

  // "ingresos_cerrados_asesoramiento" field.
  int? _ingresosCerradosAsesoramiento;
  int get ingresosCerradosAsesoramiento => _ingresosCerradosAsesoramiento ?? 0;
  set ingresosCerradosAsesoramiento(int? val) =>
      _ingresosCerradosAsesoramiento = val;

  void incrementIngresosCerradosAsesoramiento(int amount) =>
      ingresosCerradosAsesoramiento = ingresosCerradosAsesoramiento + amount;

  bool hasIngresosCerradosAsesoramiento() =>
      _ingresosCerradosAsesoramiento != null;

  // "solicitudes_senaf" field.
  int? _solicitudesSenaf;
  int get solicitudesSenaf => _solicitudesSenaf ?? 0;
  set solicitudesSenaf(int? val) => _solicitudesSenaf = val;

  void incrementSolicitudesSenaf(int amount) =>
      solicitudesSenaf = solicitudesSenaf + amount;

  bool hasSolicitudesSenaf() => _solicitudesSenaf != null;

  static HomeKpisStruct fromMap(Map<String, dynamic> data) => HomeKpisStruct(
        expedientesTotales: castToType<int>(data['expedientes_totales']),
        personasRegistradas: castToType<int>(data['personas_registradas']),
        nnyaMenores18: castToType<int>(data['nnya_menores_18']),
        nnyaMayores18: castToType<int>(data['nnya_mayores_18']),
        ingresosTotales: castToType<int>(data['ingresos_totales']),
        ingresosAbiertos: castToType<int>(data['ingresos_abiertos']),
        ingresosCerrados: castToType<int>(data['ingresos_cerrados']),
        ingresosUltimos30Dias:
            castToType<int>(data['ingresos_ultimos_30_dias']),
        ingresosCerradosAsesoramiento:
            castToType<int>(data['ingresos_cerrados_asesoramiento']),
        solicitudesSenaf: castToType<int>(data['solicitudes_senaf']),
      );

  static HomeKpisStruct? maybeFromMap(dynamic data) =>
      data is Map ? HomeKpisStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'expedientes_totales': _expedientesTotales,
        'personas_registradas': _personasRegistradas,
        'nnya_menores_18': _nnyaMenores18,
        'nnya_mayores_18': _nnyaMayores18,
        'ingresos_totales': _ingresosTotales,
        'ingresos_abiertos': _ingresosAbiertos,
        'ingresos_cerrados': _ingresosCerrados,
        'ingresos_ultimos_30_dias': _ingresosUltimos30Dias,
        'ingresos_cerrados_asesoramiento': _ingresosCerradosAsesoramiento,
        'solicitudes_senaf': _solicitudesSenaf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expedientes_totales': serializeParam(
          _expedientesTotales,
          ParamType.int,
        ),
        'personas_registradas': serializeParam(
          _personasRegistradas,
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
        'ingresos_cerrados_asesoramiento': serializeParam(
          _ingresosCerradosAsesoramiento,
          ParamType.int,
        ),
        'solicitudes_senaf': serializeParam(
          _solicitudesSenaf,
          ParamType.int,
        ),
      }.withoutNulls;

  static HomeKpisStruct fromSerializableMap(Map<String, dynamic> data) =>
      HomeKpisStruct(
        expedientesTotales: deserializeParam(
          data['expedientes_totales'],
          ParamType.int,
          false,
        ),
        personasRegistradas: deserializeParam(
          data['personas_registradas'],
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
        ingresosCerradosAsesoramiento: deserializeParam(
          data['ingresos_cerrados_asesoramiento'],
          ParamType.int,
          false,
        ),
        solicitudesSenaf: deserializeParam(
          data['solicitudes_senaf'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HomeKpisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HomeKpisStruct &&
        expedientesTotales == other.expedientesTotales &&
        personasRegistradas == other.personasRegistradas &&
        nnyaMenores18 == other.nnyaMenores18 &&
        nnyaMayores18 == other.nnyaMayores18 &&
        ingresosTotales == other.ingresosTotales &&
        ingresosAbiertos == other.ingresosAbiertos &&
        ingresosCerrados == other.ingresosCerrados &&
        ingresosUltimos30Dias == other.ingresosUltimos30Dias &&
        ingresosCerradosAsesoramiento == other.ingresosCerradosAsesoramiento &&
        solicitudesSenaf == other.solicitudesSenaf;
  }

  @override
  int get hashCode => const ListEquality().hash([
        expedientesTotales,
        personasRegistradas,
        nnyaMenores18,
        nnyaMayores18,
        ingresosTotales,
        ingresosAbiertos,
        ingresosCerrados,
        ingresosUltimos30Dias,
        ingresosCerradosAsesoramiento,
        solicitudesSenaf
      ]);
}

HomeKpisStruct createHomeKpisStruct({
  int? expedientesTotales,
  int? personasRegistradas,
  int? nnyaMenores18,
  int? nnyaMayores18,
  int? ingresosTotales,
  int? ingresosAbiertos,
  int? ingresosCerrados,
  int? ingresosUltimos30Dias,
  int? ingresosCerradosAsesoramiento,
  int? solicitudesSenaf,
}) =>
    HomeKpisStruct(
      expedientesTotales: expedientesTotales,
      personasRegistradas: personasRegistradas,
      nnyaMenores18: nnyaMenores18,
      nnyaMayores18: nnyaMayores18,
      ingresosTotales: ingresosTotales,
      ingresosAbiertos: ingresosAbiertos,
      ingresosCerrados: ingresosCerrados,
      ingresosUltimos30Dias: ingresosUltimos30Dias,
      ingresosCerradosAsesoramiento: ingresosCerradosAsesoramiento,
      solicitudesSenaf: solicitudesSenaf,
    );
