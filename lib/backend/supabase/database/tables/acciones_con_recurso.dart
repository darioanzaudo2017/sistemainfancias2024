import '../database.dart';

class AccionesConRecursoTable extends SupabaseTable<AccionesConRecursoRow> {
  @override
  String get tableName => 'acciones_con_recurso';

  @override
  AccionesConRecursoRow createRow(Map<String, dynamic> data) =>
      AccionesConRecursoRow(data);
}

class AccionesConRecursoRow extends SupabaseDataRow {
  AccionesConRecursoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccionesConRecursoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get accion => getField<String>('accion');
  set accion(String? value) => setField<String>('accion', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idmedida => getField<int>('idmedida');
  set idmedida(int? value) => setField<int>('idmedida', value);

  String? get responsables => getField<String>('responsables');
  set responsables(String? value) => setField<String>('responsables', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get requiereRecurso => getField<String>('requiere_recurso');
  set requiereRecurso(String? value) =>
      setField<String>('requiere_recurso', value);

  String? get recurso => getField<String>('recurso');
  set recurso(String? value) => setField<String>('recurso', value);

  String? get respuestaDeRecurso => getField<String>('respuesta de recurso');
  set respuestaDeRecurso(String? value) =>
      setField<String>('respuesta de recurso', value);

  bool? get avisoCoordinacion => getField<bool>('Aviso_coordinacion');
  set avisoCoordinacion(bool? value) =>
      setField<bool>('Aviso_coordinacion', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  String? get estadoIngreso => getField<String>('estado_ingreso');
  set estadoIngreso(String? value) => setField<String>('estado_ingreso', value);

  DateTime? get fechacierre => getField<DateTime>('fechacierre');
  set fechacierre(DateTime? value) => setField<DateTime>('fechacierre', value);

  String? get motivocierre => getField<String>('Motivocierre');
  set motivocierre(String? value) => setField<String>('Motivocierre', value);

  String? get observacioncierre => getField<String>('observacioncierre');
  set observacioncierre(String? value) =>
      setField<String>('observacioncierre', value);
}
