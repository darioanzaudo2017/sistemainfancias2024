import '../database.dart';

class VistaEstadisticasTable extends SupabaseTable<VistaEstadisticasRow> {
  @override
  String get tableName => 'vista_estadisticas';

  @override
  VistaEstadisticasRow createRow(Map<String, dynamic> data) =>
      VistaEstadisticasRow(data);
}

class VistaEstadisticasRow extends SupabaseDataRow {
  VistaEstadisticasRow(super.data);

  @override
  SupabaseTable get table => VistaEstadisticasTable();

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  int? get cantidadExpedientes => getField<int>('cantidad_expedientes');
  set cantidadExpedientes(int? value) =>
      setField<int>('cantidad_expedientes', value);

  int? get cantidadPersonas => getField<int>('cantidad_personas');
  set cantidadPersonas(int? value) => setField<int>('cantidad_personas', value);

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
