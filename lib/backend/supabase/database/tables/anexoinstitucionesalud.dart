import '../database.dart';

class AnexoinstitucionesaludTable
    extends SupabaseTable<AnexoinstitucionesaludRow> {
  @override
  String get tableName => 'anexoinstitucionesalud';

  @override
  AnexoinstitucionesaludRow createRow(Map<String, dynamic> data) =>
      AnexoinstitucionesaludRow(data);
}

class AnexoinstitucionesaludRow extends SupabaseDataRow {
  AnexoinstitucionesaludRow(super.data);

  @override
  SupabaseTable get table => AnexoinstitucionesaludTable();

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

  String? get ano => getField<String>('Año');
  set ano(String? value) => setField<String>('Año', value);

  String? get historiaclinica => getField<String>('historiaclinica');
  set historiaclinica(String? value) =>
      setField<String>('historiaclinica', value);

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

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
