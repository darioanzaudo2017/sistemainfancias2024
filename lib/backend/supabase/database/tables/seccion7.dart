import '../database.dart';

class Seccion7Table extends SupabaseTable<Seccion7Row> {
  @override
  String get tableName => 'seccion7';

  @override
  Seccion7Row createRow(Map<String, dynamic> data) => Seccion7Row(data);
}

class Seccion7Row extends SupabaseDataRow {
  Seccion7Row(super.data);

  @override
  SupabaseTable get table => Seccion7Table();

  int get idSec7 => getField<int>('idSec7')!;
  set idSec7(int value) => setField<int>('idSec7', value);

  List<String> get criterios => getListField<String>('Criterios');
  set criterios(List<String>? value) =>
      setListField<String>('Criterios', value);

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
