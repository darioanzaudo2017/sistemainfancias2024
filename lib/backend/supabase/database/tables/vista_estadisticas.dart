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

  int? get cantidadIngresosCerrado =>
      getField<int>('cantidad_ingresos_cerrado');
  set cantidadIngresosCerrado(int? value) =>
      setField<int>('cantidad_ingresos_cerrado', value);
}
