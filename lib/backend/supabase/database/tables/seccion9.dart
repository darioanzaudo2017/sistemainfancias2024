import '../database.dart';

class Seccion9Table extends SupabaseTable<Seccion9Row> {
  @override
  String get tableName => 'seccion9';

  @override
  Seccion9Row createRow(Map<String, dynamic> data) => Seccion9Row(data);
}

class Seccion9Row extends SupabaseDataRow {
  Seccion9Row(super.data);

  @override
  SupabaseTable get table => Seccion9Table();

  int get idSec9 => getField<int>('idSec9')!;
  set idSec9(int value) => setField<int>('idSec9', value);

  String? get desicion => getField<String>('Desicion');
  set desicion(String? value) => setField<String>('Desicion', value);

  String? get observacion => getField<String>('Observacion');
  set observacion(String? value) => setField<String>('Observacion', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  int? get idanexoasesoramiento => getField<int>('idanexoasesoramiento');
  set idanexoasesoramiento(int? value) =>
      setField<int>('idanexoasesoramiento', value);

  int? get idanexoderivacionA => getField<int>('idanexoderivacionA');
  set idanexoderivacionA(int? value) =>
      setField<int>('idanexoderivacionA', value);

  int? get idanexoderivacionB => getField<int>('idanexoderivacionB');
  set idanexoderivacionB(int? value) =>
      setField<int>('idanexoderivacionB', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
