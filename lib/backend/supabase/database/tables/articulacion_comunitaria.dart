import '../database.dart';

class ArticulacionComunitariaTable
    extends SupabaseTable<ArticulacionComunitariaRow> {
  @override
  String get tableName => 'Articulacion comunitaria';

  @override
  ArticulacionComunitariaRow createRow(Map<String, dynamic> data) =>
      ArticulacionComunitariaRow(data);
}

class ArticulacionComunitariaRow extends SupabaseDataRow {
  ArticulacionComunitariaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArticulacionComunitariaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tipo => getField<String>('Tipo');
  set tipo(String? value) => setField<String>('Tipo', value);

  String? get nombre => getField<String>('Nombre');
  set nombre(String? value) => setField<String>('Nombre', value);

  String? get referente => getField<String>('Referente');
  set referente(String? value) => setField<String>('Referente', value);

  int? get idexp => getField<int>('idexp');
  set idexp(int? value) => setField<int>('idexp', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);
}
