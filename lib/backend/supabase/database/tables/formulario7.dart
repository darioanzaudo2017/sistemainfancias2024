import '../database.dart';

class Formulario7Table extends SupabaseTable<Formulario7Row> {
  @override
  String get tableName => 'Formulario7';

  @override
  Formulario7Row createRow(Map<String, dynamic> data) => Formulario7Row(data);
}

class Formulario7Row extends SupabaseDataRow {
  Formulario7Row(super.data);

  @override
  SupabaseTable get table => Formulario7Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);

  String? get nombresFamiliar => getField<String>('nombresFamiliar');
  set nombresFamiliar(String? value) =>
      setField<String>('nombresFamiliar', value);

  String? get apellidosFamiliar => getField<String>('apellidosFamiliar');
  set apellidosFamiliar(String? value) =>
      setField<String>('apellidosFamiliar', value);

  String? get dniFamiliar => getField<String>('dniFamiliar');
  set dniFamiliar(String? value) => setField<String>('dniFamiliar', value);

  String? get domicilio => getField<String>('Domicilio');
  set domicilio(String? value) => setField<String>('Domicilio', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get numExp => getField<String>('numExp');
  set numExp(String? value) => setField<String>('numExp', value);

  String? get diasLetras => getField<String>('diasLetras');
  set diasLetras(String? value) => setField<String>('diasLetras', value);

  String? get mes => getField<String>('Mes');
  set mes(String? value) => setField<String>('Mes', value);

  String? get anoletras => getField<String>('añoletras');
  set anoletras(String? value) => setField<String>('añoletras', value);

  String? get cpc => getField<String>('CPC');
  set cpc(String? value) => setField<String>('CPC', value);

  String? get representadoPor => getField<String>('representadoPor');
  set representadoPor(String? value) =>
      setField<String>('representadoPor', value);

  String? get medidaProt => getField<String>('medidaProt');
  set medidaProt(String? value) => setField<String>('medidaProt', value);

  String? get responsableServicio => getField<String>('responsableServicio');
  set responsableServicio(String? value) =>
      setField<String>('responsableServicio', value);

  String? get responsablefamilia => getField<String>('responsablefamilia');
  set responsablefamilia(String? value) =>
      setField<String>('responsablefamilia', value);

  String? get institucion => getField<String>('institucion');
  set institucion(String? value) => setField<String>('institucion', value);

  String? get compromisoInstitucion =>
      getField<String>('compromisoInstitucion');
  set compromisoInstitucion(String? value) =>
      setField<String>('compromisoInstitucion', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  String? get acta => getField<String>('acta');
  set acta(String? value) => setField<String>('acta', value);

  String? get linkDocs => getField<String>('link_docs');
  set linkDocs(String? value) => setField<String>('link_docs', value);

  String? get linkPdf => getField<String>('Link_Pdf');
  set linkPdf(String? value) => setField<String>('Link_Pdf', value);

  String? get iddocs => getField<String>('Iddocs');
  set iddocs(String? value) => setField<String>('Iddocs', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
