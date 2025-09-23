import '../database.dart';

class VistaIngresosExpedienteTable
    extends SupabaseTable<VistaIngresosExpedienteRow> {
  @override
  String get tableName => 'vista_ingresos_expediente';

  @override
  VistaIngresosExpedienteRow createRow(Map<String, dynamic> data) =>
      VistaIngresosExpedienteRow(data);
}

class VistaIngresosExpedienteRow extends SupabaseDataRow {
  VistaIngresosExpedienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaIngresosExpedienteTable();

  int? get ingresoId => getField<int>('ingreso_id');
  set ingresoId(int? value) => setField<int>('ingreso_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  DateTime? get fechacierre => getField<DateTime>('fechacierre');
  set fechacierre(DateTime? value) => setField<DateTime>('fechacierre', value);

  String? get motivocierre => getField<String>('Motivocierre');
  set motivocierre(String? value) => setField<String>('Motivocierre', value);

  String? get observacioncierre => getField<String>('observacioncierre');
  set observacioncierre(String? value) =>
      setField<String>('observacioncierre', value);

  String? get Estado => getField<String>('Estado');
  set Estado(String? value) => setField<String>('Estado', value);

  String? get emergencia => getField<String>('emergencia');
  set emergencia(String? value) => setField<String>('emergencia', value);

  int? get idusuario => getField<int>('idusuario');
  set idusuario(int? value) => setField<int>('idusuario', value);

  bool? get carpetaDrive => getField<bool>('carpetaDrive');
  set carpetaDrive(bool? value) => setField<bool>('carpetaDrive', value);

  bool? get listadoimpresiones => getField<bool>('listadoimpresiones');
  set listadoimpresiones(bool? value) =>
      setField<bool>('listadoimpresiones', value);

  String? get idcarpeta => getField<String>('idcarpeta');
  set idcarpeta(String? value) => setField<String>('idcarpeta', value);

  String? get linkcarpeta => getField<String>('linkcarpeta');
  set linkcarpeta(String? value) => setField<String>('linkcarpeta', value);

  DateTime? get updateAt => getField<DateTime>('update_at');
  set updateAt(DateTime? value) => setField<DateTime>('update_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get ingresoIdgrupofamiliar => getField<int>('ingreso_idgrupofamiliar');
  set ingresoIdgrupofamiliar(int? value) =>
      setField<int>('ingreso_idgrupofamiliar', value);

  int? get expedienteId => getField<int>('expediente_id');
  set expedienteId(int? value) => setField<int>('expediente_id', value);

  String? get expediente => getField<String>('expediente');
  set expediente(String? value) => setField<String>('expediente', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  int? get dni => getField<int>('dni');
  set dni(int? value) => setField<int>('dni', value);

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  String? get derivacion => getField<String>('derivacion');
  set derivacion(String? value) => setField<String>('derivacion', value);

  String? get canalIngr => getField<String>('canalIngr');
  set canalIngr(String? value) => setField<String>('canalIngr', value);

  String? get epecificar => getField<String>('epecificar');
  set epecificar(String? value) => setField<String>('epecificar', value);

  String? get actuacion => getField<String>('actuacion');
  set actuacion(String? value) => setField<String>('actuacion', value);

  String? get profesional => getField<String>('profesional');
  set profesional(String? value) => setField<String>('profesional', value);

  DateTime? get fechaNac => getField<DateTime>('fechaNac');
  set fechaNac(DateTime? value) => setField<DateTime>('fechaNac', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  int? get expedienteIdusuario => getField<int>('expediente_idusuario');
  set expedienteIdusuario(int? value) =>
      setField<int>('expediente_idusuario', value);

  DateTime? get expedienteUpdatedAt =>
      getField<DateTime>('expediente_updated_at');
  set expedienteUpdatedAt(DateTime? value) =>
      setField<DateTime>('expediente_updated_at', value);

  int? get expedienteIdusers => getField<int>('expediente_idusers');
  set expedienteIdusers(int? value) =>
      setField<int>('expediente_idusers', value);

  String? get expedienteIduser => getField<String>('expediente_iduser');
  set expedienteIduser(String? value) =>
      setField<String>('expediente_iduser', value);

  int? get expedienteIdgrupofamiliar =>
      getField<int>('expediente_idgrupofamiliar');
  set expedienteIdgrupofamiliar(int? value) =>
      setField<int>('expediente_idgrupofamiliar', value);

  int? get idNNyA => getField<int>('idNNyA');
  set idNNyA(int? value) => setField<int>('idNNyA', value);

  int? get zona => getField<int>('zona');
  set zona(int? value) => setField<int>('zona', value);

  int? get movimientoId => getField<int>('movimiento_id');
  set movimientoId(int? value) => setField<int>('movimiento_id', value);

  DateTime? get movimientoFecha => getField<DateTime>('movimiento_fecha');
  set movimientoFecha(DateTime? value) =>
      setField<DateTime>('movimiento_fecha', value);

  String? get movimientoEstado => getField<String>('movimiento_estado');
  set movimientoEstado(String? value) =>
      setField<String>('movimiento_estado', value);

  String? get movimientoComentario => getField<String>('movimiento_comentario');
  set movimientoComentario(String? value) =>
      setField<String>('movimiento_comentario', value);

  String? get movimientoResponsable =>
      getField<String>('movimiento_responsable');
  set movimientoResponsable(String? value) =>
      setField<String>('movimiento_responsable', value);

  String? get movimientoIduser => getField<String>('movimiento_iduser');
  set movimientoIduser(String? value) =>
      setField<String>('movimiento_iduser', value);

  DateTime? get movimientoUpdateAd =>
      getField<DateTime>('movimiento_update_ad');
  set movimientoUpdateAd(DateTime? value) =>
      setField<DateTime>('movimiento_update_ad', value);

  int? get idform9 => getField<int>('idform9');
  set idform9(int? value) => setField<int>('idform9', value);

  bool? get leido => getField<bool>('leido');
  set leido(bool? value) => setField<bool>('leido', value);

  String? get iduserLeido => getField<String>('iduser leido');
  set iduserLeido(String? value) => setField<String>('iduser leido', value);

  bool? get enviado => getField<bool>('enviado');
  set enviado(bool? value) => setField<bool>('enviado', value);

  String? get linksolicitud => getField<String>('linksolicitud');
  set linksolicitud(String? value) => setField<String>('linksolicitud', value);
}
