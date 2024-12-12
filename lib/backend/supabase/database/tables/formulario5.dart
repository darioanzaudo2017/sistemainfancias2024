import '../database.dart';

class Formulario5Table extends SupabaseTable<Formulario5Row> {
  @override
  String get tableName => 'Formulario5';

  @override
  Formulario5Row createRow(Map<String, dynamic> data) => Formulario5Row(data);
}

class Formulario5Row extends SupabaseDataRow {
  Formulario5Row(super.data);

  @override
  SupabaseTable get table => Formulario5Table();

  int get idForm5 => getField<int>('idForm5')!;
  set idForm5(int value) => setField<int>('idForm5', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get profesionales => getField<String>('profesionales');
  set profesionales(String? value) => setField<String>('profesionales', value);

  String? get fundamento => getField<String>('fundamento');
  set fundamento(String? value) => setField<String>('fundamento', value);

  String? get indicadores => getField<String>('indicadores');
  set indicadores(String? value) => setField<String>('indicadores', value);

  String? get antecedentes => getField<String>('antecedentes');
  set antecedentes(String? value) => setField<String>('antecedentes', value);

  String? get info1 => getField<String>('info1');
  set info1(String? value) => setField<String>('info1', value);

  String? get info2 => getField<String>('info2');
  set info2(String? value) => setField<String>('info2', value);

  String? get info3 => getField<String>('info3');
  set info3(String? value) => setField<String>('info3', value);

  String? get cuadro => getField<String>('cuadro');
  set cuadro(String? value) => setField<String>('cuadro', value);

  String? get responsables => getField<String>('responsables');
  set responsables(String? value) => setField<String>('responsables', value);

  List<String> get criteriopriorizaciondrop =>
      getListField<String>('criteriopriorizaciondrop');
  set criteriopriorizaciondrop(List<String>? value) =>
      setListField<String>('criteriopriorizaciondrop', value);

  List<String> get actoresdrop => getListField<String>('actoresdrop');
  set actoresdrop(List<String>? value) =>
      setListField<String>('actoresdrop', value);

  String? get valoracionIntegral => getField<String>('Valoracion Integral');
  set valoracionIntegral(String? value) =>
      setField<String>('Valoracion Integral', value);

  String? get propuestaMedida => getField<String>('PropuestaMedida');
  set propuestaMedida(String? value) =>
      setField<String>('PropuestaMedida', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
