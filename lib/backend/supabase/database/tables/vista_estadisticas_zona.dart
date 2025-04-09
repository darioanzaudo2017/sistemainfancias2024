import '../database.dart';

class VistaEstadisticasZonaTable
    extends SupabaseTable<VistaEstadisticasZonaRow> {
  @override
  String get tableName => 'vista_estadisticas_zona';

  @override
  VistaEstadisticasZonaRow createRow(Map<String, dynamic> data) =>
      VistaEstadisticasZonaRow(data);
}

class VistaEstadisticasZonaRow extends SupabaseDataRow {
  VistaEstadisticasZonaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaEstadisticasZonaTable();

  int? get zona => getField<int>('zona');
  set zona(int? value) => setField<int>('zona', value);

  int? get cantidadExpedientes => getField<int>('cantidad_expedientes');
  set cantidadExpedientes(int? value) =>
      setField<int>('cantidad_expedientes', value);

  int? get cantidadNnya => getField<int>('cantidad_nnya');
  set cantidadNnya(int? value) => setField<int>('cantidad_nnya', value);

  int? get cantidadNnyaMenores18 => getField<int>('cantidad_nnya_menores_18');
  set cantidadNnyaMenores18(int? value) =>
      setField<int>('cantidad_nnya_menores_18', value);

  int? get cantidadNnyaMayores18 => getField<int>('cantidad_nnya_mayores_18');
  set cantidadNnyaMayores18(int? value) =>
      setField<int>('cantidad_nnya_mayores_18', value);

  int? get cantidadIngresos => getField<int>('cantidad_ingresos');
  set cantidadIngresos(int? value) => setField<int>('cantidad_ingresos', value);

  int? get cantidadIngresosAbiertos =>
      getField<int>('cantidad_ingresos_abiertos');
  set cantidadIngresosAbiertos(int? value) =>
      setField<int>('cantidad_ingresos_abiertos', value);

  int? get cantidadIngresosCerrados =>
      getField<int>('cantidad_ingresos_cerrados');
  set cantidadIngresosCerrados(int? value) =>
      setField<int>('cantidad_ingresos_cerrados', value);

  int? get cantidadIngresosUltimos30Dias =>
      getField<int>('cantidad_ingresos_ultimos_30_dias');
  set cantidadIngresosUltimos30Dias(int? value) =>
      setField<int>('cantidad_ingresos_ultimos_30_dias', value);
}
