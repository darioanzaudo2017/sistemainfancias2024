import '../database.dart';

class DerechovulneradoTable extends SupabaseTable<DerechovulneradoRow> {
  @override
  String get tableName => 'derechovulnerado';

  @override
  DerechovulneradoRow createRow(Map<String, dynamic> data) =>
      DerechovulneradoRow(data);
}

class DerechovulneradoRow extends SupabaseDataRow {
  DerechovulneradoRow(super.data);

  @override
  SupabaseTable get table => DerechovulneradoTable();

  int get idderechos => getField<int>('idderechos')!;
  set idderechos(int value) => setField<int>('idderechos', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get categoriaderechos => getField<String>('CATEGORIADERECHOS');
  set categoriaderechos(String? value) =>
      setField<String>('CATEGORIADERECHOS', value);

  String? get subcategoriaderechos => getField<String>('SUBCATEGORIADERECHOS');
  set subcategoriaderechos(String? value) =>
      setField<String>('SUBCATEGORIADERECHOS', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
