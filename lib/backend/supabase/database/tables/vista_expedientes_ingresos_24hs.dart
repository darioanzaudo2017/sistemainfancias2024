import '../database.dart';

class VistaExpedientesIngresos24hsTable
    extends SupabaseTable<VistaExpedientesIngresos24hsRow> {
  @override
  String get tableName => 'vista_expedientes_ingresos_24hs';

  @override
  VistaExpedientesIngresos24hsRow createRow(Map<String, dynamic> data) =>
      VistaExpedientesIngresos24hsRow(data);
}

class VistaExpedientesIngresos24hsRow extends SupabaseDataRow {
  VistaExpedientesIngresos24hsRow(super.data);

  @override
  SupabaseTable get table => VistaExpedientesIngresos24hsTable();

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  int? get cantidadExpedientes => getField<int>('cantidad_expedientes');
  set cantidadExpedientes(int? value) =>
      setField<int>('cantidad_expedientes', value);

  int? get cantidadIngresos => getField<int>('cantidad_ingresos');
  set cantidadIngresos(int? value) => setField<int>('cantidad_ingresos', value);
}
