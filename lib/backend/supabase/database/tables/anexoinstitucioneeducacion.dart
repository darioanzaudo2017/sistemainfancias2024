import '../database.dart';

class AnexoinstitucioneeducacionTable
    extends SupabaseTable<AnexoinstitucioneeducacionRow> {
  @override
  String get tableName => 'anexoinstitucioneeducacion';

  @override
  AnexoinstitucioneeducacionRow createRow(Map<String, dynamic> data) =>
      AnexoinstitucioneeducacionRow(data);
}

class AnexoinstitucioneeducacionRow extends SupabaseDataRow {
  AnexoinstitucioneeducacionRow(super.data);

  @override
  SupabaseTable get table => AnexoinstitucioneeducacionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  String? get fecha => getField<String>('fecha');
  set fecha(String? value) => setField<String>('fecha', value);

  String? get mes => getField<String>('mes');
  set mes(String? value) => setField<String>('mes', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  String? get expediente => getField<String>('expediente');
  set expediente(String? value) => setField<String>('expediente', value);

  String? get linkdoc => getField<String>('linkdoc');
  set linkdoc(String? value) => setField<String>('linkdoc', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get fechacomienzo => getField<String>('fechacomienzo');
  set fechacomienzo(String? value) => setField<String>('fechacomienzo', value);

  String? get numestablecimiento => getField<String>('numestablecimiento');
  set numestablecimiento(String? value) =>
      setField<String>('numestablecimiento', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
