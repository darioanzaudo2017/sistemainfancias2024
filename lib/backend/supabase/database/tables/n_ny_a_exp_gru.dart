import '../database.dart';

class NNyAExpGruTable extends SupabaseTable<NNyAExpGruRow> {
  @override
  String get tableName => 'NNyAExpGru';

  @override
  NNyAExpGruRow createRow(Map<String, dynamic> data) => NNyAExpGruRow(data);
}

class NNyAExpGruRow extends SupabaseDataRow {
  NNyAExpGruRow(super.data);

  @override
  SupabaseTable get table => NNyAExpGruTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idNNyA => getField<int>('idNNyA');
  set idNNyA(int? value) => setField<int>('idNNyA', value);

  int? get idExp => getField<int>('idExp');
  set idExp(int? value) => setField<int>('idExp', value);

  String? get detalle => getField<String>('detalle');
  set detalle(String? value) => setField<String>('detalle', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
