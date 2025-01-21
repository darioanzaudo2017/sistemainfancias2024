import '../database.dart';

class VistaConteoEntrevistasTable
    extends SupabaseTable<VistaConteoEntrevistasRow> {
  @override
  String get tableName => 'vista_conteo_entrevistas';

  @override
  VistaConteoEntrevistasRow createRow(Map<String, dynamic> data) =>
      VistaConteoEntrevistasRow(data);
}

class VistaConteoEntrevistasRow extends SupabaseDataRow {
  VistaConteoEntrevistasRow(super.data);

  @override
  SupabaseTable get table => VistaConteoEntrevistasTable();

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get countFormulario2 => getField<int>('count_formulario2');
  set countFormulario2(int? value) => setField<int>('count_formulario2', value);

  int? get countFormulario3 => getField<int>('count_formulario3');
  set countFormulario3(int? value) => setField<int>('count_formulario3', value);

  int? get countFormulario4 => getField<int>('count_formulario4');
  set countFormulario4(int? value) => setField<int>('count_formulario4', value);

  int? get countAcciones => getField<int>('count_acciones');
  set countAcciones(int? value) => setField<int>('count_acciones', value);
}
