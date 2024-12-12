import '../database.dart';

class AnexoAForm1Table extends SupabaseTable<AnexoAForm1Row> {
  @override
  String get tableName => 'AnexoAForm1';

  @override
  AnexoAForm1Row createRow(Map<String, dynamic> data) => AnexoAForm1Row(data);
}

class AnexoAForm1Row extends SupabaseDataRow {
  AnexoAForm1Row(super.data);

  @override
  SupabaseTable get table => AnexoAForm1Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

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
