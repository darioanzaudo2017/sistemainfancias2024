import '../database.dart';

class ZonasTable extends SupabaseTable<ZonasRow> {
  @override
  String get tableName => 'zonas';

  @override
  ZonasRow createRow(Map<String, dynamic> data) => ZonasRow(data);
}

class ZonasRow extends SupabaseDataRow {
  ZonasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ZonasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get zona => getField<String>('zona');
  set zona(String? value) => setField<String>('zona', value);
}
