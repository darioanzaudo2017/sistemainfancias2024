import '../database.dart';

class EstadodeaccionTable extends SupabaseTable<EstadodeaccionRow> {
  @override
  String get tableName => 'estadodeaccion';

  @override
  EstadodeaccionRow createRow(Map<String, dynamic> data) =>
      EstadodeaccionRow(data);
}

class EstadodeaccionRow extends SupabaseDataRow {
  EstadodeaccionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstadodeaccionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  String? get otorgaRecurso => getField<String>('otorgaRecurso');
  set otorgaRecurso(String? value) => setField<String>('otorgaRecurso', value);

  int? get idaccion => getField<int>('idaccion');
  set idaccion(int? value) => setField<int>('idaccion', value);
}
