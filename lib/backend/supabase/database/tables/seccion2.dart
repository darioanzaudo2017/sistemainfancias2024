import '../database.dart';

class Seccion2Table extends SupabaseTable<Seccion2Row> {
  @override
  String get tableName => 'seccion2';

  @override
  Seccion2Row createRow(Map<String, dynamic> data) => Seccion2Row(data);
}

class Seccion2Row extends SupabaseDataRow {
  Seccion2Row(super.data);

  @override
  SupabaseTable get table => Seccion2Table();

  int get idSec2 => getField<int>('idSec2')!;
  set idSec2(int value) => setField<int>('idSec2', value);

  String? get idSolicitante => getField<String>('idSolicitante');
  set idSolicitante(String? value) => setField<String>('idSolicitante', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  int? get dni => getField<int>('dni');
  set dni(int? value) => setField<int>('dni', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get referencias => getField<String>('referencias');
  set referencias(String? value) => setField<String>('referencias', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get vinculo => getField<String>('vinculo');
  set vinculo(String? value) => setField<String>('vinculo', value);

  String? get reservaId => getField<String>('reservaId');
  set reservaId(String? value) => setField<String>('reservaId', value);

  String? get institucion => getField<String>('institucion');
  set institucion(String? value) => setField<String>('institucion', value);

  String? get direccionInst => getField<String>('direccionInst');
  set direccionInst(String? value) => setField<String>('direccionInst', value);

  String? get telefonoInst => getField<String>('telefonoInst');
  set telefonoInst(String? value) => setField<String>('telefonoInst', value);

  String? get correoInst => getField<String>('correoInst');
  set correoInst(String? value) => setField<String>('correoInst', value);

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
