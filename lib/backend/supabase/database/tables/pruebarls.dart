import '../database.dart';

class PruebarlsTable extends SupabaseTable<PruebarlsRow> {
  @override
  String get tableName => 'pruebarls';

  @override
  PruebarlsRow createRow(Map<String, dynamic> data) => PruebarlsRow(data);
}

class PruebarlsRow extends SupabaseDataRow {
  PruebarlsRow(super.data);

  @override
  SupabaseTable get table => PruebarlsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  int? get dni => getField<int>('dni');
  set dni(int? value) => setField<int>('dni', value);

  int? get idrol => getField<int>('idrol');
  set idrol(int? value) => setField<int>('idrol', value);
}
