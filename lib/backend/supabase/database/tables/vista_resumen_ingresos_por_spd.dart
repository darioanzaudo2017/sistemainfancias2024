import '../database.dart';

class VistaResumenIngresosPorSpdTable
    extends SupabaseTable<VistaResumenIngresosPorSpdRow> {
  @override
  String get tableName => 'vista_resumen_ingresos_por_spd';

  @override
  VistaResumenIngresosPorSpdRow createRow(Map<String, dynamic> data) =>
      VistaResumenIngresosPorSpdRow(data);
}

class VistaResumenIngresosPorSpdRow extends SupabaseDataRow {
  VistaResumenIngresosPorSpdRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaResumenIngresosPorSpdTable();

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

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
