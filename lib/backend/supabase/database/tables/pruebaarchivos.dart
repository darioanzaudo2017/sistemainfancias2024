import '../database.dart';

class PruebaarchivosTable extends SupabaseTable<PruebaarchivosRow> {
  @override
  String get tableName => 'pruebaarchivos';

  @override
  PruebaarchivosRow createRow(Map<String, dynamic> data) =>
      PruebaarchivosRow(data);
}

class PruebaarchivosRow extends SupabaseDataRow {
  PruebaarchivosRow(super.data);

  @override
  SupabaseTable get table => PruebaarchivosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idIngresoarchivos => getField<int>('idIngresoarchivos');
  set idIngresoarchivos(int? value) =>
      setField<int>('idIngresoarchivos', value);

  String? get linkdoc => getField<String>('linkdoc');
  set linkdoc(String? value) => setField<String>('linkdoc', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
