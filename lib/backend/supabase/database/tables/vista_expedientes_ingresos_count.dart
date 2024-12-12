import '../database.dart';

class VistaExpedientesIngresosCountTable
    extends SupabaseTable<VistaExpedientesIngresosCountRow> {
  @override
  String get tableName => 'vista_expedientes_ingresos_count';

  @override
  VistaExpedientesIngresosCountRow createRow(Map<String, dynamic> data) =>
      VistaExpedientesIngresosCountRow(data);
}

class VistaExpedientesIngresosCountRow extends SupabaseDataRow {
  VistaExpedientesIngresosCountRow(super.data);

  @override
  SupabaseTable get table => VistaExpedientesIngresosCountTable();

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  int? get cantidadExpedientes => getField<int>('cantidad_expedientes');
  set cantidadExpedientes(int? value) =>
      setField<int>('cantidad_expedientes', value);

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
}
