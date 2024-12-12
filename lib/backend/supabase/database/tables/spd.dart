import '../database.dart';

class SpdTable extends SupabaseTable<SpdRow> {
  @override
  String get tableName => 'spd';

  @override
  SpdRow createRow(Map<String, dynamic> data) => SpdRow(data);
}

class SpdRow extends SupabaseDataRow {
  SpdRow(super.data);

  @override
  SupabaseTable get table => SpdTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombrespd => getField<String>('nombrespd');
  set nombrespd(String? value) => setField<String>('nombrespd', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get mail => getField<String>('Mail');
  set mail(String? value) => setField<String>('Mail', value);
}
