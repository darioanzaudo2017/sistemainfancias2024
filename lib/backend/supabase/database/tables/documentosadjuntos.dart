import '../database.dart';

class DocumentosadjuntosTable extends SupabaseTable<DocumentosadjuntosRow> {
  @override
  String get tableName => 'documentosadjuntos';

  @override
  DocumentosadjuntosRow createRow(Map<String, dynamic> data) =>
      DocumentosadjuntosRow(data);
}

class DocumentosadjuntosRow extends SupabaseDataRow {
  DocumentosadjuntosRow(super.data);

  @override
  SupabaseTable get table => DocumentosadjuntosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get idexpdoc => getField<double>('idexpdoc');
  set idexpdoc(double? value) => setField<double>('idexpdoc', value);

  int? get idingresodoc => getField<int>('idingresodoc');
  set idingresodoc(int? value) => setField<int>('idingresodoc', value);

  String? get documento => getField<String>('documento');
  set documento(String? value) => setField<String>('documento', value);

  String? get tipodocumento => getField<String>('tipodocumento');
  set tipodocumento(String? value) => setField<String>('tipodocumento', value);

  String? get observaciones => getField<String>('Observaciones');
  set observaciones(String? value) => setField<String>('Observaciones', value);

  String? get documentopdf => getField<String>('documentopdf');
  set documentopdf(String? value) => setField<String>('documentopdf', value);

  String? get iddocdrive => getField<String>('iddocdrive');
  set iddocdrive(String? value) => setField<String>('iddocdrive', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);

  String? get idpdfdrive => getField<String>('idpdfdrive');
  set idpdfdrive(String? value) => setField<String>('idpdfdrive', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
