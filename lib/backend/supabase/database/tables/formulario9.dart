import '../database.dart';

class Formulario9Table extends SupabaseTable<Formulario9Row> {
  @override
  String get tableName => 'Formulario9';

  @override
  Formulario9Row createRow(Map<String, dynamic> data) => Formulario9Row(data);
}

class Formulario9Row extends SupabaseDataRow {
  Formulario9Row(Map<String, dynamic> data) : super(data);

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

  String? get acciones => getField<String>('acciones');
  set acciones(String? value) => setField<String>('acciones', value);

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

  String? get resenadelasitu => getField<String>('reseñadelasitu');
  set resenadelasitu(String? value) =>
      setField<String>('reseñadelasitu', value);

  String? get linksolicitud => getField<String>('linksolicitud');
  set linksolicitud(String? value) => setField<String>('linksolicitud', value);

  String? get observacionesmedidaadoptada =>
      getField<String>('observacionesmedidaadoptada');
  set observacionesmedidaadoptada(String? value) =>
      setField<String>('observacionesmedidaadoptada', value);

  String? get linksolicitudSENAF => getField<String>('linksolicitudSENAF');
  set linksolicitudSENAF(String? value) =>
      setField<String>('linksolicitudSENAF', value);

  DateTime? get fechaSolicitudEquipo =>
      getField<DateTime>('fechaSolicitudEquipo');
  set fechaSolicitudEquipo(DateTime? value) =>
      setField<DateTime>('fechaSolicitudEquipo', value);

  DateTime? get fechaSolicitudaSenaf =>
      getField<DateTime>('FechaSolicitudaSenaf');
  set fechaSolicitudaSenaf(DateTime? value) =>
      setField<DateTime>('FechaSolicitudaSenaf', value);

  String? get estadoinforme => getField<String>('estadoinforme');
  set estadoinforme(String? value) => setField<String>('estadoinforme', value);

  bool? get spd => getField<bool>('spd');
  set spd(bool? value) => setField<bool>('spd', value);

  bool? get cordinacionzonal => getField<bool>('cordinacionzonal');
  set cordinacionzonal(bool? value) =>
      setField<bool>('cordinacionzonal', value);

  bool? get cordinaciongenaral => getField<bool>('cordinaciongenaral');
  set cordinaciongenaral(bool? value) =>
      setField<bool>('cordinaciongenaral', value);

  String? get solicitudVsSPD => getField<String>('solicitudVsSPD');
  set solicitudVsSPD(String? value) =>
      setField<String>('solicitudVsSPD', value);

  String? get solicitudVsCoordinacionzonal =>
      getField<String>('SolicitudVsCoordinacionzonal');
  set solicitudVsCoordinacionzonal(String? value) =>
      setField<String>('SolicitudVsCoordinacionzonal', value);

  String? get solicitudVsCoordinacionGral =>
      getField<String>('SolicitudVsCoordinacionGral');
  set solicitudVsCoordinacionGral(String? value) =>
      setField<String>('SolicitudVsCoordinacionGral', value);

  String? get iddrive => getField<String>('iddrive');
  set iddrive(String? value) => setField<String>('iddrive', value);

  String? get responsable => getField<String>('responsable');
  set responsable(String? value) => setField<String>('responsable', value);

  String? get estadointerno => getField<String>('estadointerno');
  set estadointerno(String? value) => setField<String>('estadointerno', value);
}
