import '../database.dart';

class Formulario9Table extends SupabaseTable<Formulario9Row> {
  @override
  String get tableName => 'Formulario9';

  @override
  Formulario9Row createRow(Map<String, dynamic> data) => Formulario9Row(data);
}

class Formulario9Row extends SupabaseDataRow {
  Formulario9Row(super.data);

  @override
  SupabaseTable get table => Formulario9Table();

  int get idForm9 => getField<int>('idForm9')!;
  set idForm9(int value) => setField<int>('idForm9', value);

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

  DateTime? get reiteracionFecha => getField<DateTime>('reiteracionFecha');
  set reiteracionFecha(DateTime? value) =>
      setField<DateTime>('reiteracionFecha', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  DateTime? get fechasolicitudsenaf =>
      getField<DateTime>('fechasolicitudsenaf');
  set fechasolicitudsenaf(DateTime? value) =>
      setField<DateTime>('fechasolicitudsenaf', value);

  String? get agotadomedida => getField<String>('agotadomedida');
  set agotadomedida(String? value) => setField<String>('agotadomedida', value);

  String? get riesgovida => getField<String>('riesgovida');
  set riesgovida(String? value) => setField<String>('riesgovida', value);

  String? get fundamentacionsolicitud =>
      getField<String>('fundamentacionsolicitud');
  set fundamentacionsolicitud(String? value) =>
      setField<String>('fundamentacionsolicitud', value);
}
