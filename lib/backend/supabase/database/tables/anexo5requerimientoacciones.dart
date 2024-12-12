import '../database.dart';

class Anexo5requerimientoaccionesTable
    extends SupabaseTable<Anexo5requerimientoaccionesRow> {
  @override
  String get tableName => 'anexo5requerimientoacciones';

  @override
  Anexo5requerimientoaccionesRow createRow(Map<String, dynamic> data) =>
      Anexo5requerimientoaccionesRow(data);
}

class Anexo5requerimientoaccionesRow extends SupabaseDataRow {
  Anexo5requerimientoaccionesRow(super.data);

  @override
  SupabaseTable get table => Anexo5requerimientoaccionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get expediente => getField<String>('expediente');
  set expediente(String? value) => setField<String>('expediente', value);

  String? get lugar => getField<String>('lugar');
  set lugar(String? value) => setField<String>('lugar', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  String? get institucionderiva => getField<String>('institucionderiva');
  set institucionderiva(String? value) =>
      setField<String>('institucionderiva', value);

  String? get nombre => getField<String>('Nombre');
  set nombre(String? value) => setField<String>('Nombre', value);

  String? get apellido => getField<String>('Apellido');
  set apellido(String? value) => setField<String>('Apellido', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);

  String? get acciones => getField<String>('acciones');
  set acciones(String? value) => setField<String>('acciones', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexp => getField<int>('idexp');
  set idexp(int? value) => setField<int>('idexp', value);

  String? get linkdoc => getField<String>('linkdoc');
  set linkdoc(String? value) => setField<String>('linkdoc', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  int? get idmedidaform6 => getField<int>('idmedidaform6');
  set idmedidaform6(int? value) => setField<int>('idmedidaform6', value);
}
