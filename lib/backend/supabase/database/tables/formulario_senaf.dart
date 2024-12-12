import '../database.dart';

class FormularioSenafTable extends SupabaseTable<FormularioSenafRow> {
  @override
  String get tableName => 'Formulario_senaf';

  @override
  FormularioSenafRow createRow(Map<String, dynamic> data) =>
      FormularioSenafRow(data);
}

class FormularioSenafRow extends SupabaseDataRow {
  FormularioSenafRow(super.data);

  @override
  SupabaseTable get table => FormularioSenafTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tipoFamilia => getField<String>('Tipo Familia');
  set tipoFamilia(String? value) => setField<String>('Tipo Familia', value);

  String? get fundamento => getField<String>('Fundamento');
  set fundamento(String? value) => setField<String>('Fundamento', value);

  String? get agotadoMedidas => getField<String>('Agotado_medidas');
  set agotadoMedidas(String? value) =>
      setField<String>('Agotado_medidas', value);

  String? get permanenciaEnFamilia =>
      getField<String>('Permanencia_en_familia');
  set permanenciaEnFamilia(String? value) =>
      setField<String>('Permanencia_en_familia', value);

  String? get inscriptoRNP => getField<String>('inscriptoRNP');
  set inscriptoRNP(String? value) => setField<String>('inscriptoRNP', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  String? get lugarNacimiento => getField<String>('Lugar_nacimiento');
  set lugarNacimiento(String? value) =>
      setField<String>('Lugar_nacimiento', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
