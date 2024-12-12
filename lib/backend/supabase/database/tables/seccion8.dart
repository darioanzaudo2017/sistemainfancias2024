import '../database.dart';

class Seccion8Table extends SupabaseTable<Seccion8Row> {
  @override
  String get tableName => 'seccion8';

  @override
  Seccion8Row createRow(Map<String, dynamic> data) => Seccion8Row(data);
}

class Seccion8Row extends SupabaseDataRow {
  Seccion8Row(super.data);

  @override
  SupabaseTable get table => Seccion8Table();

  int get idSec3 => getField<int>('idSec3')!;
  set idSec3(int value) => setField<int>('idSec3', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get vinculo => getField<String>('vinculo');
  set vinculo(String? value) => setField<String>('vinculo', value);

  double? get telefono => getField<double>('telefono');
  set telefono(double? value) => setField<double>('telefono', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
