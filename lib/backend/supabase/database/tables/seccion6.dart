import '../database.dart';

class Seccion6Table extends SupabaseTable<Seccion6Row> {
  @override
  String get tableName => 'seccion6';

  @override
  Seccion6Row createRow(Map<String, dynamic> data) => Seccion6Row(data);
}

class Seccion6Row extends SupabaseDataRow {
  Seccion6Row(super.data);

  @override
  SupabaseTable get table => Seccion6Table();

  int get idSec6 => getField<int>('idSec6')!;
  set idSec6(int value) => setField<int>('idSec6', value);

  String? get organismo => getField<String>('organismo');
  set organismo(String? value) => setField<String>('organismo', value);

  String? get resultado => getField<String>('resultado');
  set resultado(String? value) => setField<String>('resultado', value);

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
