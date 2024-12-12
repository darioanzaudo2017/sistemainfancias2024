import '../database.dart';

class AnexosForm1Table extends SupabaseTable<AnexosForm1Row> {
  @override
  String get tableName => 'anexos_form_1';

  @override
  AnexosForm1Row createRow(Map<String, dynamic> data) => AnexosForm1Row(data);
}

class AnexosForm1Row extends SupabaseDataRow {
  AnexosForm1Row(super.data);

  @override
  SupabaseTable get table => AnexosForm1Table();

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get a1Id => getField<int>('a1_id');
  set a1Id(int? value) => setField<int>('a1_id', value);

  String? get a1Expediente => getField<String>('a1_expediente');
  set a1Expediente(String? value) => setField<String>('a1_expediente', value);

  DateTime? get a1Fecha => getField<DateTime>('a1_fecha');
  set a1Fecha(DateTime? value) => setField<DateTime>('a1_fecha', value);

  String? get a1Orgoprofremitente => getField<String>('a1_orgoprofremitente');
  set a1Orgoprofremitente(String? value) =>
      setField<String>('a1_orgoprofremitente', value);

  String? get a1Intprofremite => getField<String>('a1_intprofremite');
  set a1Intprofremite(String? value) =>
      setField<String>('a1_intprofremite', value);

  String? get a1Tipointervencion => getField<String>('a1_tipointervencion');
  set a1Tipointervencion(String? value) =>
      setField<String>('a1_tipointervencion', value);

  int? get a1Idexpediente => getField<int>('a1_idexpediente');
  set a1Idexpediente(int? value) => setField<int>('a1_idexpediente', value);

  String? get a1Telefono => getField<String>('a1_telefono');
  set a1Telefono(String? value) => setField<String>('a1_telefono', value);

  String? get a1Correo => getField<String>('a1_correo');
  set a1Correo(String? value) => setField<String>('a1_correo', value);

  String? get a1Linkdoc => getField<String>('a1_linkdoc');
  set a1Linkdoc(String? value) => setField<String>('a1_linkdoc', value);

  int? get aaId => getField<int>('aa_id');
  set aaId(int? value) => setField<int>('aa_id', value);

  String? get aaExpediente => getField<String>('aa_expediente');
  set aaExpediente(String? value) => setField<String>('aa_expediente', value);

  DateTime? get aaFecha => getField<DateTime>('aa_fecha');
  set aaFecha(DateTime? value) => setField<DateTime>('aa_fecha', value);

  String? get aaOrgoprofremitente => getField<String>('aa_orgoprofremitente');
  set aaOrgoprofremitente(String? value) =>
      setField<String>('aa_orgoprofremitente', value);

  String? get aaIntprofremite => getField<String>('aa_intprofremite');
  set aaIntprofremite(String? value) =>
      setField<String>('aa_intprofremite', value);

  String? get aaTipointervencion => getField<String>('aa_tipointervencion');
  set aaTipointervencion(String? value) =>
      setField<String>('aa_tipointervencion', value);

  int? get aaIdexpediente => getField<int>('aa_idexpediente');
  set aaIdexpediente(int? value) => setField<int>('aa_idexpediente', value);

  String? get aaTelefono => getField<String>('aa_telefono');
  set aaTelefono(String? value) => setField<String>('aa_telefono', value);

  String? get aaCorreo => getField<String>('aa_correo');
  set aaCorreo(String? value) => setField<String>('aa_correo', value);

  String? get aaLinkdoc => getField<String>('aa_linkdoc');
  set aaLinkdoc(String? value) => setField<String>('aa_linkdoc', value);

  int? get a3Id => getField<int>('a3_id');
  set a3Id(int? value) => setField<int>('a3_id', value);

  String? get a3Expediente => getField<String>('a3_expediente');
  set a3Expediente(String? value) => setField<String>('a3_expediente', value);

  DateTime? get a3Fecha => getField<DateTime>('a3_fecha');
  set a3Fecha(DateTime? value) => setField<DateTime>('a3_fecha', value);

  String? get a3Orgoprofremitente => getField<String>('a3_orgoprofremitente');
  set a3Orgoprofremitente(String? value) =>
      setField<String>('a3_orgoprofremitente', value);

  String? get a3Intprofremite => getField<String>('a3_intprofremite');
  set a3Intprofremite(String? value) =>
      setField<String>('a3_intprofremite', value);

  String? get a3Tipointervencion => getField<String>('a3_tipointervencion');
  set a3Tipointervencion(String? value) =>
      setField<String>('a3_tipointervencion', value);

  int? get a3Idexpediente => getField<int>('a3_idexpediente');
  set a3Idexpediente(int? value) => setField<int>('a3_idexpediente', value);

  DateTime? get a3UpdatedAt => getField<DateTime>('a3_updated_at');
  set a3UpdatedAt(DateTime? value) =>
      setField<DateTime>('a3_updated_at', value);

  String? get a3Linkdoc => getField<String>('a3_linkdoc');
  set a3Linkdoc(String? value) => setField<String>('a3_linkdoc', value);
}
