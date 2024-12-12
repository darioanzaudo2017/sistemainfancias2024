import '../database.dart';

class Formulario4Table extends SupabaseTable<Formulario4Row> {
  @override
  String get tableName => 'Formulario4';

  @override
  Formulario4Row createRow(Map<String, dynamic> data) => Formulario4Row(data);
}

class Formulario4Row extends SupabaseDataRow {
  Formulario4Row(super.data);

  @override
  SupabaseTable get table => Formulario4Table();

  int get idForm4 => getField<int>('idForm4')!;
  set idForm4(int value) => setField<int>('idForm4', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get objetivoEnt => getField<String>('objetivoEnt');
  set objetivoEnt(String? value) => setField<String>('objetivoEnt', value);

  String? get profesionales => getField<String>('profesionales');
  set profesionales(String? value) => setField<String>('profesionales', value);

  String? get nomEnt => getField<String>('nomEnt');
  set nomEnt(String? value) => setField<String>('nomEnt', value);

  String? get apeEnt => getField<String>('apeEnt');
  set apeEnt(String? value) => setField<String>('apeEnt', value);

  String? get edadEnt => getField<String>('edadEnt');
  set edadEnt(String? value) => setField<String>('edadEnt', value);

  String? get ocuEnt => getField<String>('ocuEnt');
  set ocuEnt(String? value) => setField<String>('ocuEnt', value);

  String? get dirEnt => getField<String>('dirEnt');
  set dirEnt(String? value) => setField<String>('dirEnt', value);

  String? get telEnt => getField<String>('telEnt');
  set telEnt(String? value) => setField<String>('telEnt', value);

  String? get relacion => getField<String>('relacion');
  set relacion(String? value) => setField<String>('relacion', value);

  String? get registro => getField<String>('registro');
  set registro(String? value) => setField<String>('registro', value);

  String? get valSugerencias => getField<String>('ValSugerencias');
  set valSugerencias(String? value) =>
      setField<String>('ValSugerencias', value);

  String? get observacion => getField<String>('Observacion');
  set observacion(String? value) => setField<String>('Observacion', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
