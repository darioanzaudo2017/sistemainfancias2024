import '../database.dart';

class Anexo1Form1Table extends SupabaseTable<Anexo1Form1Row> {
  @override
  String get tableName => 'Anexo1Form1';

  @override
  Anexo1Form1Row createRow(Map<String, dynamic> data) => Anexo1Form1Row(data);
}

class Anexo1Form1Row extends SupabaseDataRow {
  Anexo1Form1Row(super.data);

  @override
  SupabaseTable get table => Anexo1Form1Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get expediente => getField<String>('expediente');
  set expediente(String? value) => setField<String>('expediente', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get orgOProfRemitente => getField<String>('orgOProfRemitente');
  set orgOProfRemitente(String? value) =>
      setField<String>('orgOProfRemitente', value);

  String? get intProfremite => getField<String>('IntProfremite');
  set intProfremite(String? value) => setField<String>('IntProfremite', value);

  String? get tipoIntervencion => getField<String>('tipoIntervencion');
  set tipoIntervencion(String? value) =>
      setField<String>('tipoIntervencion', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  String? get linkdoc => getField<String>('linkdoc');
  set linkdoc(String? value) => setField<String>('linkdoc', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
