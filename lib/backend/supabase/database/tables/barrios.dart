import '../database.dart';

class BarriosTable extends SupabaseTable<BarriosRow> {
  @override
  String get tableName => 'Barrios';

  @override
  BarriosRow createRow(Map<String, dynamic> data) => BarriosRow(data);
}

class BarriosRow extends SupabaseDataRow {
  BarriosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BarriosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get barrio => getField<String>('Barrio');
  set barrio(String? value) => setField<String>('Barrio', value);
}
