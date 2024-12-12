import '../database.dart';

class PaginaFormulario2y3Table extends SupabaseTable<PaginaFormulario2y3Row> {
  @override
  String get tableName => 'paginaFormulario2y3';

  @override
  PaginaFormulario2y3Row createRow(Map<String, dynamic> data) =>
      PaginaFormulario2y3Row(data);
}

class PaginaFormulario2y3Row extends SupabaseDataRow {
  PaginaFormulario2y3Row(super.data);

  @override
  SupabaseTable get table => PaginaFormulario2y3Table();

  int? get idIngresoFormulario2 => getField<int>('idIngreso_Formulario2');
  set idIngresoFormulario2(int? value) =>
      setField<int>('idIngreso_Formulario2', value);

  int? get idIngresoFormulario3 => getField<int>('idIngreso_Formulario3');
  set idIngresoFormulario3(int? value) =>
      setField<int>('idIngreso_Formulario3', value);

  String? get redesFormulario2 => getField<String>('redes_Formulario2');
  set redesFormulario2(String? value) =>
      setField<String>('redes_Formulario2', value);

  List<String> get redesdropFormulario2 =>
      getListField<String>('redesdrop_Formulario2');
  set redesdropFormulario2(List<String>? value) =>
      setListField<String>('redesdrop_Formulario2', value);

  String? get estrategiasFormulario2 =>
      getField<String>('estrategias_Formulario2');
  set estrategiasFormulario2(String? value) =>
      setField<String>('estrategias_Formulario2', value);

  String? get descripcionFormulario2 =>
      getField<String>('descripcion_Formulario2');
  set descripcionFormulario2(String? value) =>
      setField<String>('descripcion_Formulario2', value);

  String? get profesionalesFormulario2 =>
      getField<String>('profesionales_Formulario2');
  set profesionalesFormulario2(String? value) =>
      setField<String>('profesionales_Formulario2', value);

  String? get descripcionFormulario3 =>
      getField<String>('descripcion_Formulario3');
  set descripcionFormulario3(String? value) =>
      setField<String>('descripcion_Formulario3', value);

  String? get redesFormulario3 => getField<String>('redes_Formulario3');
  set redesFormulario3(String? value) =>
      setField<String>('redes_Formulario3', value);

  List<String> get redesdropFormulario3 =>
      getListField<String>('redesdrop_Formulario3');
  set redesdropFormulario3(List<String>? value) =>
      setListField<String>('redesdrop_Formulario3', value);

  String? get otrasactFormulario3 => getField<String>('otrasact_Formulario3');
  set otrasactFormulario3(String? value) =>
      setField<String>('otrasact_Formulario3', value);

  String? get profesionalesFormulario3 =>
      getField<String>('profesionales_Formulario3');
  set profesionalesFormulario3(String? value) =>
      setField<String>('profesionales_Formulario3', value);
}
