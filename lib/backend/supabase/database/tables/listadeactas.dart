import '../database.dart';

class ListadeactasTable extends SupabaseTable<ListadeactasRow> {
  @override
  String get tableName => 'listadeactas';

  @override
  ListadeactasRow createRow(Map<String, dynamic> data) => ListadeactasRow(data);
}

class ListadeactasRow extends SupabaseDataRow {
  ListadeactasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListadeactasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get linkActaFirmada => getField<String>('link_Acta_firmada');
  set linkActaFirmada(String? value) =>
      setField<String>('link_Acta_firmada', value);

  int? get idform7 => getField<int>('idform7');
  set idform7(int? value) => setField<int>('idform7', value);
}
