import '../database.dart';

class EnviomailsTable extends SupabaseTable<EnviomailsRow> {
  @override
  String get tableName => 'Enviomails';

  @override
  EnviomailsRow createRow(Map<String, dynamic> data) => EnviomailsRow(data);
}

class EnviomailsRow extends SupabaseDataRow {
  EnviomailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EnviomailsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get asunto => getField<String>('Asunto');
  set asunto(String? value) => setField<String>('Asunto', value);

  String? get mensaje => getField<String>('Mensaje');
  set mensaje(String? value) => setField<String>('Mensaje', value);

  String? get mail => getField<String>('mail');
  set mail(String? value) => setField<String>('mail', value);

  String? get links => getField<String>('Links');
  set links(String? value) => setField<String>('Links', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexp => getField<int>('idexp');
  set idexp(int? value) => setField<int>('idexp', value);
}
