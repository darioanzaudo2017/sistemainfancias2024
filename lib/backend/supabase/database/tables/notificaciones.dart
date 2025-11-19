import '../database.dart';

class NotificacionesTable extends SupabaseTable<NotificacionesRow> {
  @override
  String get tableName => 'notificaciones';

  @override
  NotificacionesRow createRow(Map<String, dynamic> data) =>
      NotificacionesRow(data);
}

class NotificacionesRow extends SupabaseDataRow {
  NotificacionesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacionesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  List<String> get idsusuarios => getListField<String>('idsusuarios');
  set idsusuarios(List<String>? value) =>
      setListField<String>('idsusuarios', value);

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  String? get spdnuevo => getField<String>('spdnuevo');
  set spdnuevo(String? value) => setField<String>('spdnuevo', value);
}
