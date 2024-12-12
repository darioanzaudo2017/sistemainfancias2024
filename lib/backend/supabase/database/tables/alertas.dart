import '../database.dart';

class AlertasTable extends SupabaseTable<AlertasRow> {
  @override
  String get tableName => 'alertas';

  @override
  AlertasRow createRow(Map<String, dynamic> data) => AlertasRow(data);
}

class AlertasRow extends SupabaseDataRow {
  AlertasRow(super.data);

  @override
  SupabaseTable get table => AlertasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get tiempoexpedientes => getField<bool>('tiempoexpedientes');
  set tiempoexpedientes(bool? value) =>
      setField<bool>('tiempoexpedientes', value);

  int? get cantExNuevos => getField<int>('cantExNuevos');
  set cantExNuevos(int? value) => setField<int>('cantExNuevos', value);

  int? get cantIngresosNuevos => getField<int>('cant_ingresos nuevos');
  set cantIngresosNuevos(int? value) =>
      setField<int>('cant_ingresos nuevos', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
