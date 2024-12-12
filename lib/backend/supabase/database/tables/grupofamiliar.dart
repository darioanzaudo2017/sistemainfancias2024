import '../database.dart';

class GrupofamiliarTable extends SupabaseTable<GrupofamiliarRow> {
  @override
  String get tableName => 'grupofamiliar';

  @override
  GrupofamiliarRow createRow(Map<String, dynamic> data) =>
      GrupofamiliarRow(data);
}

class GrupofamiliarRow extends SupabaseDataRow {
  GrupofamiliarRow(super.data);

  @override
  SupabaseTable get table => GrupofamiliarTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombregrupo => getField<String>('nombregrupo');
  set nombregrupo(String? value) => setField<String>('nombregrupo', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
