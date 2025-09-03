import '../database.dart';

class AmplaicionSeccion8Table extends SupabaseTable<AmplaicionSeccion8Row> {
  @override
  String get tableName => 'Amplaicion_seccion8';

  @override
  AmplaicionSeccion8Row createRow(Map<String, dynamic> data) =>
      AmplaicionSeccion8Row(data);
}

class AmplaicionSeccion8Row extends SupabaseDataRow {
  AmplaicionSeccion8Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AmplaicionSeccion8Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idamplaicion => getField<int>('idamplaicion');
  set idamplaicion(int? value) => setField<int>('idamplaicion', value);

  int? get idseccion8 => getField<int>('idseccion8');
  set idseccion8(int? value) => setField<int>('idseccion8', value);

  int? get idampliacionHistorial => getField<int>('idampliacion_historial');
  set idampliacionHistorial(int? value) =>
      setField<int>('idampliacion_historial', value);
}
