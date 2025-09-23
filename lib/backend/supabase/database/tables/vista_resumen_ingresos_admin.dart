import '../database.dart';

class VistaResumenIngresosAdminTable
    extends SupabaseTable<VistaResumenIngresosAdminRow> {
  @override
  String get tableName => 'vista_resumen_ingresos_admin';

  @override
  VistaResumenIngresosAdminRow createRow(Map<String, dynamic> data) =>
      VistaResumenIngresosAdminRow(data);
}

class VistaResumenIngresosAdminRow extends SupabaseDataRow {
  VistaResumenIngresosAdminRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaResumenIngresosAdminTable();

  int? get totalExpedientes => getField<int>('total_expedientes');
  set totalExpedientes(int? value) => setField<int>('total_expedientes', value);

  int? get totalIngresos => getField<int>('total_ingresos');
  set totalIngresos(int? value) => setField<int>('total_ingresos', value);

  int? get ingresosApertura => getField<int>('ingresos_apertura');
  set ingresosApertura(int? value) => setField<int>('ingresos_apertura', value);

  int? get ingresosAsesoramiento => getField<int>('ingresos_asesoramiento');
  set ingresosAsesoramiento(int? value) =>
      setField<int>('ingresos_asesoramiento', value);

  int? get ingresosConSolicitudMedidaExcepcional =>
      getField<int>('ingresos_con_solicitud_medida_excepcional');
  set ingresosConSolicitudMedidaExcepcional(int? value) =>
      setField<int>('ingresos_con_solicitud_medida_excepcional', value);

  int? get ingresosUltimos30Dias => getField<int>('ingresos_ultimos_30_dias');
  set ingresosUltimos30Dias(int? value) =>
      setField<int>('ingresos_ultimos_30_dias', value);
}
