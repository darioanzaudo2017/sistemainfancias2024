import '../database.dart';

class VistaRecepciondelademandaTable
    extends SupabaseTable<VistaRecepciondelademandaRow> {
  @override
  String get tableName => 'vista_recepciondelademanda';

  @override
  VistaRecepciondelademandaRow createRow(Map<String, dynamic> data) =>
      VistaRecepciondelademandaRow(data);
}

class VistaRecepciondelademandaRow extends SupabaseDataRow {
  VistaRecepciondelademandaRow(super.data);

  @override
  SupabaseTable get table => VistaRecepciondelademandaTable();

  int? get idIngresoIngresos => getField<int>('idIngreso_ingresos');
  set idIngresoIngresos(int? value) =>
      setField<int>('idIngreso_ingresos', value);

  int? get idIngresoSeccion1 => getField<int>('idIngreso_seccion1');
  set idIngresoSeccion1(int? value) =>
      setField<int>('idIngreso_seccion1', value);

  String? get domicilioSeccion1 => getField<String>('domicilio_seccion1');
  set domicilioSeccion1(String? value) =>
      setField<String>('domicilio_seccion1', value);

  String? get rnpSeccion1 => getField<String>('rnp_seccion1');
  set rnpSeccion1(String? value) => setField<String>('rnp_seccion1', value);

  String? get centroSeccion1 => getField<String>('centro_seccion1');
  set centroSeccion1(String? value) =>
      setField<String>('centro_seccion1', value);

  String? get historiaclinicaSeccion1 =>
      getField<String>('Historiaclinica_seccion1');
  set historiaclinicaSeccion1(String? value) =>
      setField<String>('Historiaclinica_seccion1', value);

  String? get cudSeccion1 => getField<String>('cud_seccion1');
  set cudSeccion1(String? value) => setField<String>('cud_seccion1', value);

  String? get lugarNacimientoSeccion1 =>
      getField<String>('LugarNacimiento_seccion1');
  set lugarNacimientoSeccion1(String? value) =>
      setField<String>('LugarNacimiento_seccion1', value);

  String? get tipofamiliaSeccion1 => getField<String>('tipofamilia_seccion1');
  set tipofamiliaSeccion1(String? value) =>
      setField<String>('tipofamilia_seccion1', value);

  String? get obrasocialSeccion1 => getField<String>('obrasocial_seccion1');
  set obrasocialSeccion1(String? value) =>
      setField<String>('obrasocial_seccion1', value);

  String? get escuelaSeccion1 => getField<String>('escuela_seccion1');
  set escuelaSeccion1(String? value) =>
      setField<String>('escuela_seccion1', value);

  String? get domicilioescuelaSeccion1 =>
      getField<String>('domicilioescuela_seccion1');
  set domicilioescuelaSeccion1(String? value) =>
      setField<String>('domicilioescuela_seccion1', value);

  String? get tipotrabajoSeccion1 => getField<String>('tipotrabajo_seccion1');
  set tipotrabajoSeccion1(String? value) =>
      setField<String>('tipotrabajo_seccion1', value);

  double? get telescSeccion1 => getField<double>('telesc_seccion1');
  set telescSeccion1(double? value) =>
      setField<double>('telesc_seccion1', value);

  String? get nivelAlcanzado => getField<String>('nivelAlcanzado');
  set nivelAlcanzado(String? value) =>
      setField<String>('nivelAlcanzado', value);

  String? get gradoSeccion1 => getField<String>('grado_seccion1');
  set gradoSeccion1(String? value) => setField<String>('grado_seccion1', value);

  String? get turnoSeccion1 => getField<String>('turno_seccion1');
  set turnoSeccion1(String? value) => setField<String>('turno_seccion1', value);

  double? get telefonoSeccion1 => getField<double>('telefono_seccion1');
  set telefonoSeccion1(double? value) =>
      setField<double>('telefono_seccion1', value);

  String? get nivelalcanzadoSeccion1 =>
      getField<String>('nivelalcanzado_seccion1');
  set nivelalcanzadoSeccion1(String? value) =>
      setField<String>('nivelalcanzado_seccion1', value);

  String? get referenteescuelaSeccion1 =>
      getField<String>('referenteescuela_seccion1');
  set referenteescuelaSeccion1(String? value) =>
      setField<String>('referenteescuela_seccion1', value);

  String? get concurrenciaSeccion1 => getField<String>('concurrencia_seccion1');
  set concurrenciaSeccion1(String? value) =>
      setField<String>('concurrencia_seccion1', value);

  String? get trabaja => getField<String>('trabaja');
  set trabaja(String? value) => setField<String>('trabaja', value);

  int? get idIngresoSeccion2 => getField<int>('idIngreso_seccion2');
  set idIngresoSeccion2(int? value) =>
      setField<int>('idIngreso_seccion2', value);

  String? get solicitanteSeccion2 => getField<String>('solicitante_seccion2');
  set solicitanteSeccion2(String? value) =>
      setField<String>('solicitante_seccion2', value);

  String? get direccionSeccion2 => getField<String>('Direccion_seccion2');
  set direccionSeccion2(String? value) =>
      setField<String>('Direccion_seccion2', value);

  String? get vinculoSeccion2 => getField<String>('vinculo_seccion2');
  set vinculoSeccion2(String? value) =>
      setField<String>('vinculo_seccion2', value);

  int? get idIngresoSeccion5 => getField<int>('idIngreso_seccion5');
  set idIngresoSeccion5(int? value) =>
      setField<int>('idIngreso_seccion5', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get resena => getField<String>('resena');
  set resena(String? value) => setField<String>('resena', value);

  int? get idIngresoSeccion7 => getField<int>('idIngreso_seccion7');
  set idIngresoSeccion7(int? value) =>
      setField<int>('idIngreso_seccion7', value);

  List<String> get criteriosSeccion7 =>
      getListField<String>('criterios_seccion7');
  set criteriosSeccion7(List<String>? value) =>
      setListField<String>('criterios_seccion7', value);

  int? get idIngresoSeccion9 => getField<int>('idIngreso_seccion9');
  set idIngresoSeccion9(int? value) =>
      setField<int>('idIngreso_seccion9', value);

  String? get desicionSeccion9 => getField<String>('desicion_seccion9');
  set desicionSeccion9(String? value) =>
      setField<String>('desicion_seccion9', value);
}
