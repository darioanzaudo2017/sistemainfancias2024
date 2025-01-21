import '../database.dart';

class AccionesAccesoriasTable extends SupabaseTable<AccionesAccesoriasRow> {
  @override
  String get tableName => 'AccionesAccesorias';

  @override
  AccionesAccesoriasRow createRow(Map<String, dynamic> data) =>
      AccionesAccesoriasRow(data);
}

class AccionesAccesoriasRow extends SupabaseDataRow {
  AccionesAccesoriasRow(super.data);

  @override
  SupabaseTable get table => AccionesAccesoriasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get descripcion => getField<String>('Descripcion');
  set descripcion(String? value) => setField<String>('Descripcion', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);
}
