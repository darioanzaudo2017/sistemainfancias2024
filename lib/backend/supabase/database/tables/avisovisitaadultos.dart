import '../database.dart';

class AvisovisitaadultosTable extends SupabaseTable<AvisovisitaadultosRow> {
  @override
  String get tableName => 'avisovisitaadultos';

  @override
  AvisovisitaadultosRow createRow(Map<String, dynamic> data) =>
      AvisovisitaadultosRow(data);
}

class AvisovisitaadultosRow extends SupabaseDataRow {
  AvisovisitaadultosRow(super.data);

  @override
  SupabaseTable get table => AvisovisitaadultosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  DateTime? get fechadoc => getField<DateTime>('fechadoc');
  set fechadoc(DateTime? value) => setField<DateTime>('fechadoc', value);

  String? get domicilio => getField<String>('domicilio');
  set domicilio(String? value) => setField<String>('domicilio', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get hora => getField<String>('hora');
  set hora(String? value) => setField<String>('hora', value);

  String? get cpc => getField<String>('CPC');
  set cpc(String? value) => setField<String>('CPC', value);

  String? get linkdocConcurrencia => getField<String>('linkdocConcurrencia');
  set linkdocConcurrencia(String? value) =>
      setField<String>('linkdocConcurrencia', value);

  String? get iddoc => getField<String>('iddoc');
  set iddoc(String? value) => setField<String>('iddoc', value);

  String? get linkpdf => getField<String>('linkpdf');
  set linkpdf(String? value) => setField<String>('linkpdf', value);

  int? get dni => getField<int>('dni');
  set dni(int? value) => setField<int>('dni', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  int? get telcontactospd => getField<int>('telcontactospd');
  set telcontactospd(int? value) => setField<int>('telcontactospd', value);

  String? get linkAviso => getField<String>('linkAviso');
  set linkAviso(String? value) => setField<String>('linkAviso', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
