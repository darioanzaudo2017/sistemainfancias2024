import '../database.dart';

class Formulario3Table extends SupabaseTable<Formulario3Row> {
  @override
  String get tableName => 'Formulario3';

  @override
  Formulario3Row createRow(Map<String, dynamic> data) => Formulario3Row(data);
}

class Formulario3Row extends SupabaseDataRow {
  Formulario3Row(super.data);

  @override
  SupabaseTable get table => Formulario3Table();

  int get idForm3 => getField<int>('idForm3')!;
  set idForm3(int value) => setField<int>('idForm3', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  String? get profesionales => getField<String>('profesionales');
  set profesionales(String? value) => setField<String>('profesionales', value);

  String? get adultos => getField<String>('adultos');
  set adultos(String? value) => setField<String>('adultos', value);

  String? get personasDatos => getField<String>('personasDatos');
  set personasDatos(String? value) => setField<String>('personasDatos', value);

  String? get antecedentes => getField<String>('antecedentes');
  set antecedentes(String? value) => setField<String>('antecedentes', value);

  String? get redes => getField<String>('redes');
  set redes(String? value) => setField<String>('redes', value);

  String? get otrasAct => getField<String>('otrasAct');
  set otrasAct(String? value) => setField<String>('otrasAct', value);

  String? get otrosInt => getField<String>('otrosInt');
  set otrosInt(String? value) => setField<String>('otrosInt', value);

  String? get derVul => getField<String>('derVul');
  set derVul(String? value) => setField<String>('derVul', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  List<String> get redesDrop => getListField<String>('redesDrop');
  set redesDrop(List<String>? value) =>
      setListField<String>('redesDrop', value);

  List<String> get actividadesDrop => getListField<String>('actividadesDrop');
  set actividadesDrop(List<String>? value) =>
      setListField<String>('actividadesDrop', value);

  List<String> get intereseDrop => getListField<String>('intereseDrop');
  set intereseDrop(List<String>? value) =>
      setListField<String>('intereseDrop', value);

  int? get idultimavisita => getField<int>('idultimavisita');
  set idultimavisita(int? value) => setField<int>('idultimavisita', value);

  String? get objetivosdeentrevista =>
      getField<String>('objetivosdeentrevista');
  set objetivosdeentrevista(String? value) =>
      setField<String>('objetivosdeentrevista', value);

  String? get valoracionSugerencias =>
      getField<String>('ValoracionSugerencias');
  set valoracionSugerencias(String? value) =>
      setField<String>('ValoracionSugerencias', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
