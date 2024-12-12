import '../database.dart';

class Anexo4RequerimientoaccionesTable
    extends SupabaseTable<Anexo4RequerimientoaccionesRow> {
  @override
  String get tableName => 'Anexo4Requerimientoacciones';

  @override
  Anexo4RequerimientoaccionesRow createRow(Map<String, dynamic> data) =>
      Anexo4RequerimientoaccionesRow(data);
}

class Anexo4RequerimientoaccionesRow extends SupabaseDataRow {
  Anexo4RequerimientoaccionesRow(super.data);

  @override
  SupabaseTable get table => Anexo4RequerimientoaccionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  String? get fecha => getField<String>('fecha');
  set fecha(String? value) => setField<String>('fecha', value);

  String? get institucion => getField<String>('institucion');
  set institucion(String? value) => setField<String>('institucion', value);

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

  String? get objetivos => getField<String>('objetivos');
  set objetivos(String? value) => setField<String>('objetivos', value);

  String? get reunion => getField<String>('reunion');
  set reunion(String? value) => setField<String>('reunion', value);

  String? get puntosacuerdos => getField<String>('puntosacuerdos');
  set puntosacuerdos(String? value) =>
      setField<String>('puntosacuerdos', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  int? get idmedidaform6 => getField<int>('idmedidaform6');
  set idmedidaform6(int? value) => setField<int>('idmedidaform6', value);
}
