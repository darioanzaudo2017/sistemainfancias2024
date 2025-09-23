import '../database.dart';

class TNotificacionUsuariosTable
    extends SupabaseTable<TNotificacionUsuariosRow> {
  @override
  String get tableName => 't_notificacion_usuarios';

  @override
  TNotificacionUsuariosRow createRow(Map<String, dynamic> data) =>
      TNotificacionUsuariosRow(data);
}

class TNotificacionUsuariosRow extends SupabaseDataRow {
  TNotificacionUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TNotificacionUsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idnotificacion => getField<int>('idnotificacion');
  set idnotificacion(int? value) => setField<int>('idnotificacion', value);
}
