import '../database.dart';

class Seccion5Table extends SupabaseTable<Seccion5Row> {
  @override
  String get tableName => 'seccion5';

  @override
  Seccion5Row createRow(Map<String, dynamic> data) => Seccion5Row(data);
}

class Seccion5Row extends SupabaseDataRow {
  Seccion5Row(super.data);

  @override
  SupabaseTable get table => Seccion5Table();

  int get idSec5 => getField<int>('idSec5')!;
  set idSec5(int value) => setField<int>('idSec5', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get resena => getField<String>('resena');
  set resena(String? value) => setField<String>('resena', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
