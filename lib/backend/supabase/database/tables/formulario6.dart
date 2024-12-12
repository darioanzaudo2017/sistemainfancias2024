import '../database.dart';

class Formulario6Table extends SupabaseTable<Formulario6Row> {
  @override
  String get tableName => 'Formulario6';

  @override
  Formulario6Row createRow(Map<String, dynamic> data) => Formulario6Row(data);
}

class Formulario6Row extends SupabaseDataRow {
  Formulario6Row(super.data);

  @override
  SupabaseTable get table => Formulario6Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get propuestasDemedidas => getField<String>('propuestasDemedidas');
  set propuestasDemedidas(String? value) =>
      setField<String>('propuestasDemedidas', value);

  String? get descripcionDeAcciones =>
      getField<String>('DescripcionDeAcciones');
  set descripcionDeAcciones(String? value) =>
      setField<String>('DescripcionDeAcciones', value);

  String? get responsables => getField<String>('Responsables');
  set responsables(String? value) => setField<String>('Responsables', value);

  String? get plazos => getField<String>('plazos');
  set plazos(String? value) => setField<String>('plazos', value);

  String? get accionesDeSeguimiento =>
      getField<String>('AccionesDeSeguimiento');
  set accionesDeSeguimiento(String? value) =>
      setField<String>('AccionesDeSeguimiento', value);

  DateTime? get fecha => getField<DateTime>('Fecha');
  set fecha(DateTime? value) => setField<DateTime>('Fecha', value);

  int? get idIngresoform6 => getField<int>('idIngresoform6');
  set idIngresoform6(int? value) => setField<int>('idIngresoform6', value);

  int? get idExpform6 => getField<int>('idExpform6');
  set idExpform6(int? value) => setField<int>('idExpform6', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get obsEstado => getField<String>('ObsEstado');
  set obsEstado(String? value) => setField<String>('ObsEstado', value);

  int? get idmedidasustiuida => getField<int>('idmedidasustiuida');
  set idmedidasustiuida(int? value) =>
      setField<int>('idmedidasustiuida', value);

  String? get derechoVul => getField<String>('DerechoVul');
  set derechoVul(String? value) => setField<String>('DerechoVul', value);

  String? get subDerecho => getField<String>('subDerecho');
  set subDerecho(String? value) => setField<String>('subDerecho', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  DateTime? get fechaPlazo => getField<DateTime>('fechaPlazo');
  set fechaPlazo(DateTime? value) => setField<DateTime>('fechaPlazo', value);

  String? get restituido => getField<String>('restituido');
  set restituido(String? value) => setField<String>('restituido', value);
}
