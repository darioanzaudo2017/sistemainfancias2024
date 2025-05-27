import '../database.dart';

class VistaHistorialMovimientosSolicitudsenafTable
    extends SupabaseTable<VistaHistorialMovimientosSolicitudsenafRow> {
  @override
  String get tableName => 'vista_historial_movimientos_solicitudsenaf';

  @override
  VistaHistorialMovimientosSolicitudsenafRow createRow(
          Map<String, dynamic> data) =>
      VistaHistorialMovimientosSolicitudsenafRow(data);
}

class VistaHistorialMovimientosSolicitudsenafRow extends SupabaseDataRow {
  VistaHistorialMovimientosSolicitudsenafRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => VistaHistorialMovimientosSolicitudsenafTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get reponsable => getField<String>('reponsable');
  set reponsable(String? value) => setField<String>('reponsable', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  String? get nombreUser => getField<String>('nombre_user');
  set nombreUser(String? value) => setField<String>('nombre_user', value);

  String? get iduserLeido => getField<String>('iduser leido');
  set iduserLeido(String? value) => setField<String>('iduser leido', value);

  String? get nombreUserLeido => getField<String>('nombre_user_leido');
  set nombreUserLeido(String? value) =>
      setField<String>('nombre_user_leido', value);

  DateTime? get updateAd => getField<DateTime>('update_ad');
  set updateAd(DateTime? value) => setField<DateTime>('update_ad', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  int? get idform9 => getField<int>('idform9');
  set idform9(int? value) => setField<int>('idform9', value);

  bool? get leido => getField<bool>('leido');
  set leido(bool? value) => setField<bool>('leido', value);

  bool? get enviado => getField<bool>('enviado');
  set enviado(bool? value) => setField<bool>('enviado', value);

  String? get linksolicitud => getField<String>('linksolicitud');
  set linksolicitud(String? value) => setField<String>('linksolicitud', value);
}
