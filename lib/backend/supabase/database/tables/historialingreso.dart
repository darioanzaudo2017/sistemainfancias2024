import '../database.dart';

class HistorialingresoTable extends SupabaseTable<HistorialingresoRow> {
  @override
  String get tableName => 'historialingreso';

  @override
  HistorialingresoRow createRow(Map<String, dynamic> data) =>
      HistorialingresoRow(data);
}

class HistorialingresoRow extends SupabaseDataRow {
  HistorialingresoRow(super.data);

  @override
  SupabaseTable get table => HistorialingresoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get etapa => getField<String>('Etapa');
  set etapa(String? value) => setField<String>('Etapa', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);
}
