import '../database.dart';

class AvisovisitaNNyATable extends SupabaseTable<AvisovisitaNNyARow> {
  @override
  String get tableName => 'avisovisitaNNyA';

  @override
  AvisovisitaNNyARow createRow(Map<String, dynamic> data) =>
      AvisovisitaNNyARow(data);
}

class AvisovisitaNNyARow extends SupabaseDataRow {
  AvisovisitaNNyARow(super.data);

  @override
  SupabaseTable get table => AvisovisitaNNyATable();

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

  String? get linkdoc => getField<String>('linkdoc');
  set linkdoc(String? value) => setField<String>('linkdoc', value);

  String? get iddoc => getField<String>('iddoc');
  set iddoc(String? value) => setField<String>('iddoc', value);

  String? get linkpdf => getField<String>('linkpdf');
  set linkpdf(String? value) => setField<String>('linkpdf', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
