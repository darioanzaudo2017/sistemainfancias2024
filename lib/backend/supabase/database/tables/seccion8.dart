import '../database.dart';

class Seccion8Table extends SupabaseTable<Seccion8Row> {
  @override
  String get tableName => 'seccion8';

  @override
  Seccion8Row createRow(Map<String, dynamic> data) => Seccion8Row(data);
}

class Seccion8Row extends SupabaseDataRow {
  Seccion8Row(Map<String, dynamic> data) : super(data);

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

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

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

  String? get Vinculo => getField<String>('Vinculo');
  set Vinculo(String? value) => setField<String>('Vinculo', value);

  bool? get entrevistado => getField<bool>('entrevistado');
  set entrevistado(bool? value) => setField<bool>('entrevistado', value);

  String? get ocupacion => getField<String>('ocupacion');
  set ocupacion(String? value) => setField<String>('ocupacion', value);

  String? get refdeubicacion => getField<String>('refdeubicacion');
  set refdeubicacion(String? value) =>
      setField<String>('refdeubicacion', value);

  int? get idNNyA => getField<int>('idNNyA');
  set idNNyA(int? value) => setField<int>('idNNyA', value);

  int? get idGrupoconviviente => getField<int>('id_grupoconviviente');
  set idGrupoconviviente(int? value) =>
      setField<int>('id_grupoconviviente', value);
}
