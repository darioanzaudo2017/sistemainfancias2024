import '../database.dart';

class Formulario2Table extends SupabaseTable<Formulario2Row> {
  @override
  String get tableName => 'Formulario2';

  @override
  Formulario2Row createRow(Map<String, dynamic> data) => Formulario2Row(data);
}

class Formulario2Row extends SupabaseDataRow {
  Formulario2Row(super.data);

  @override
  SupabaseTable get table => Formulario2Table();

  int get idForm2 => getField<int>('idForm2')!;
  set idForm2(int value) => setField<int>('idForm2', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get profesionales => getField<String>('profesionales');
  set profesionales(String? value) => setField<String>('profesionales', value);

  String? get ocuEnt => getField<String>('ocuEnt');
  set ocuEnt(String? value) => setField<String>('ocuEnt', value);

  String? get dirEnt => getField<String>('dirEnt');
  set dirEnt(String? value) => setField<String>('dirEnt', value);

  String? get refEnt => getField<String>('refEnt');
  set refEnt(String? value) => setField<String>('refEnt', value);

  String? get telEnt => getField<String>('telEnt');
  set telEnt(String? value) => setField<String>('telEnt', value);

  String? get vinEnt => getField<String>('vinEnt');
  set vinEnt(String? value) => setField<String>('vinEnt', value);

  String? get datEnt => getField<String>('datEnt');
  set datEnt(String? value) => setField<String>('datEnt', value);

  String? get objetivoEnt => getField<String>('objetivoEnt');
  set objetivoEnt(String? value) => setField<String>('objetivoEnt', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get personasDatos => getField<String>('personasDatos');
  set personasDatos(String? value) => setField<String>('personasDatos', value);

  String? get antecedentes => getField<String>('antecedentes');
  set antecedentes(String? value) => setField<String>('antecedentes', value);

  String? get estrategias => getField<String>('estrategias');
  set estrategias(String? value) => setField<String>('estrategias', value);

  String? get redes => getField<String>('redes');
  set redes(String? value) => setField<String>('redes', value);

  String? get espacios => getField<String>('espacios');
  set espacios(String? value) => setField<String>('espacios', value);

  String? get personasServicios => getField<String>('personasServicios');
  set personasServicios(String? value) =>
      setField<String>('personasServicios', value);

  String? get otros => getField<String>('otros');
  set otros(String? value) => setField<String>('otros', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  bool? get primeraNNyA => getField<bool>('primeraNNyA');
  set primeraNNyA(bool? value) => setField<bool>('primeraNNyA', value);

  bool? get primerafamilia => getField<bool>('Primerafamilia');
  set primerafamilia(bool? value) => setField<bool>('Primerafamilia', value);

  String? get estrategiasSobrevivencia =>
      getField<String>('estrategiasSobrevivencia');
  set estrategiasSobrevivencia(String? value) =>
      setField<String>('estrategiasSobrevivencia', value);

  DateTime? get fecDeNacEnt => getField<DateTime>('fecDeNacEnt');
  set fecDeNacEnt(DateTime? value) => setField<DateTime>('fecDeNacEnt', value);

  String? get nomEnt => getField<String>('nomEnt');
  set nomEnt(String? value) => setField<String>('nomEnt', value);

  String? get apeEnt => getField<String>('apeEnt');
  set apeEnt(String? value) => setField<String>('apeEnt', value);

  String? get dniEnt => getField<String>('dniEnt');
  set dniEnt(String? value) => setField<String>('dniEnt', value);

  int? get edadEnt => getField<int>('edadEnt');
  set edadEnt(int? value) => setField<int>('edadEnt', value);

  List<String> get redes2drop => getListField<String>('redes2drop');
  set redes2drop(List<String>? value) =>
      setListField<String>('redes2drop', value);

  String? get espacios2 => getField<String>('espacios2');
  set espacios2(String? value) => setField<String>('espacios2', value);

  String? get linkanexob => getField<String>('linkanexob');
  set linkanexob(String? value) => setField<String>('linkanexob', value);

  String? get linkanexoA => getField<String>('linkanexoA');
  set linkanexoA(String? value) => setField<String>('linkanexoA', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
