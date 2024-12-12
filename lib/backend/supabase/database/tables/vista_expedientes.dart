import '../database.dart';

class VistaExpedientesTable extends SupabaseTable<VistaExpedientesRow> {
  @override
  String get tableName => 'vista_expedientes';

  @override
  VistaExpedientesRow createRow(Map<String, dynamic> data) =>
      VistaExpedientesRow(data);
}

class VistaExpedientesRow extends SupabaseDataRow {
  VistaExpedientesRow(super.data);

  @override
  SupabaseTable get table => VistaExpedientesTable();

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  int? get idForm9 => getField<int>('idForm9');
  set idForm9(int? value) => setField<int>('idForm9', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get causa => getField<String>('causa');
  set causa(String? value) => setField<String>('causa', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get observacioncese => getField<String>('observacioncese');
  set observacioncese(String? value) =>
      setField<String>('observacioncese', value);

  bool? get solicitudMedida => getField<bool>('solicitudMedida');
  set solicitudMedida(bool? value) => setField<bool>('solicitudMedida', value);

  DateTime? get fechasolicitud => getField<DateTime>('fechasolicitud');
  set fechasolicitud(DateTime? value) =>
      setField<DateTime>('fechasolicitud', value);

  String? get motivosolicitud => getField<String>('motivosolicitud');
  set motivosolicitud(String? value) =>
      setField<String>('motivosolicitud', value);

  bool? get evaluacionMedida => getField<bool>('evaluacionMedida');
  set evaluacionMedida(bool? value) =>
      setField<bool>('evaluacionMedida', value);

  bool? get medidaAdoptada => getField<bool>('MedidaAdoptada');
  set medidaAdoptada(bool? value) => setField<bool>('MedidaAdoptada', value);

  DateTime? get fecMedidaAdoptada => getField<DateTime>('FecMedidaAdoptada');
  set fecMedidaAdoptada(DateTime? value) =>
      setField<DateTime>('FecMedidaAdoptada', value);

  bool? get medidaRechazada => getField<bool>('MedidaRechazada');
  set medidaRechazada(bool? value) => setField<bool>('MedidaRechazada', value);

  DateTime? get fechaMedidaRechazada =>
      getField<DateTime>('FechaMedidaRechazada');
  set fechaMedidaRechazada(DateTime? value) =>
      setField<DateTime>('FechaMedidaRechazada', value);

  String? get motivoRechazo => getField<String>('MotivoRechazo');
  set motivoRechazo(String? value) => setField<String>('MotivoRechazo', value);

  String? get acciones => getField<String>('acciones');
  set acciones(String? value) => setField<String>('acciones', value);
}
