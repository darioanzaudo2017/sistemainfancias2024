// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Form9CeseRowStruct extends BaseStruct {
  Form9CeseRowStruct({
    int? idForm9,
    int? idIngreso,
    int? idExpediente,
    String? fecha,
    String? causa,
    String? estado,
    String? observacioncese,
    bool? solicitudMedida,
    String? acciones,
    String? updatedAt,
    String? idusers,
    String? iduser,
    String? idgrupofamiliar,
    String? fechasolicitudsenaf,
    String? agotadomedida,
    String? riesgovida,
    String? fundamentacionsolicitud,
    String? resenadelasitu,
    String? linksolicitud,
    String? observacionesmedidaadoptada,
    String? linksolicitudSENAF,
    String? fechaSolicitudEquipo,
    String? fechaSolicitudaSenaf,
    String? estadoinforme,
    bool? spd,
    bool? cordinacionzonal,
    bool? cordinaciongenaral,
    String? solicitudVsSPD,
    String? solicitudVsCoordinacionzonal,
    String? solicitudVsCoordinacionGral,
    String? iddrive,
    String? responsable,
    String? estadointerno,
  })  : _idForm9 = idForm9,
        _idIngreso = idIngreso,
        _idExpediente = idExpediente,
        _fecha = fecha,
        _causa = causa,
        _estado = estado,
        _observacioncese = observacioncese,
        _solicitudMedida = solicitudMedida,
        _acciones = acciones,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _iduser = iduser,
        _idgrupofamiliar = idgrupofamiliar,
        _fechasolicitudsenaf = fechasolicitudsenaf,
        _agotadomedida = agotadomedida,
        _riesgovida = riesgovida,
        _fundamentacionsolicitud = fundamentacionsolicitud,
        _resenadelasitu = resenadelasitu,
        _linksolicitud = linksolicitud,
        _observacionesmedidaadoptada = observacionesmedidaadoptada,
        _linksolicitudSENAF = linksolicitudSENAF,
        _fechaSolicitudEquipo = fechaSolicitudEquipo,
        _fechaSolicitudaSenaf = fechaSolicitudaSenaf,
        _estadoinforme = estadoinforme,
        _spd = spd,
        _cordinacionzonal = cordinacionzonal,
        _cordinaciongenaral = cordinaciongenaral,
        _solicitudVsSPD = solicitudVsSPD,
        _solicitudVsCoordinacionzonal = solicitudVsCoordinacionzonal,
        _solicitudVsCoordinacionGral = solicitudVsCoordinacionGral,
        _iddrive = iddrive,
        _responsable = responsable,
        _estadointerno = estadointerno;

  // "idForm9" field.
  int? _idForm9;
  int get idForm9 => _idForm9 ?? 0;
  set idForm9(int? val) => _idForm9 = val;

  void incrementIdForm9(int amount) => idForm9 = idForm9 + amount;

  bool hasIdForm9() => _idForm9 != null;

  // "idIngreso" field.
  int? _idIngreso;
  int get idIngreso => _idIngreso ?? 0;
  set idIngreso(int? val) => _idIngreso = val;

  void incrementIdIngreso(int amount) => idIngreso = idIngreso + amount;

  bool hasIdIngreso() => _idIngreso != null;

  // "idExpediente" field.
  int? _idExpediente;
  int get idExpediente => _idExpediente ?? 0;
  set idExpediente(int? val) => _idExpediente = val;

  void incrementIdExpediente(int amount) =>
      idExpediente = idExpediente + amount;

  bool hasIdExpediente() => _idExpediente != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "causa" field.
  String? _causa;
  String get causa => _causa ?? '';
  set causa(String? val) => _causa = val;

  bool hasCausa() => _causa != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "observacioncese" field.
  String? _observacioncese;
  String get observacioncese => _observacioncese ?? '';
  set observacioncese(String? val) => _observacioncese = val;

  bool hasObservacioncese() => _observacioncese != null;

  // "solicitudMedida" field.
  bool? _solicitudMedida;
  bool get solicitudMedida => _solicitudMedida ?? false;
  set solicitudMedida(bool? val) => _solicitudMedida = val;

  bool hasSolicitudMedida() => _solicitudMedida != null;

  // "acciones" field.
  String? _acciones;
  String get acciones => _acciones ?? '';
  set acciones(String? val) => _acciones = val;

  bool hasAcciones() => _acciones != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  set idusers(String? val) => _idusers = val;

  bool hasIdusers() => _idusers != null;

  // "iduser" field.
  String? _iduser;
  String get iduser => _iduser ?? '';
  set iduser(String? val) => _iduser = val;

  bool hasIduser() => _iduser != null;

  // "idgrupofamiliar" field.
  String? _idgrupofamiliar;
  String get idgrupofamiliar => _idgrupofamiliar ?? '';
  set idgrupofamiliar(String? val) => _idgrupofamiliar = val;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  // "fechasolicitudsenaf" field.
  String? _fechasolicitudsenaf;
  String get fechasolicitudsenaf => _fechasolicitudsenaf ?? '';
  set fechasolicitudsenaf(String? val) => _fechasolicitudsenaf = val;

  bool hasFechasolicitudsenaf() => _fechasolicitudsenaf != null;

  // "agotadomedida" field.
  String? _agotadomedida;
  String get agotadomedida => _agotadomedida ?? '';
  set agotadomedida(String? val) => _agotadomedida = val;

  bool hasAgotadomedida() => _agotadomedida != null;

  // "riesgovida" field.
  String? _riesgovida;
  String get riesgovida => _riesgovida ?? '';
  set riesgovida(String? val) => _riesgovida = val;

  bool hasRiesgovida() => _riesgovida != null;

  // "fundamentacionsolicitud" field.
  String? _fundamentacionsolicitud;
  String get fundamentacionsolicitud => _fundamentacionsolicitud ?? '';
  set fundamentacionsolicitud(String? val) => _fundamentacionsolicitud = val;

  bool hasFundamentacionsolicitud() => _fundamentacionsolicitud != null;

  // "resenadelasitu" field.
  String? _resenadelasitu;
  String get resenadelasitu => _resenadelasitu ?? '';
  set resenadelasitu(String? val) => _resenadelasitu = val;

  bool hasResenadelasitu() => _resenadelasitu != null;

  // "linksolicitud" field.
  String? _linksolicitud;
  String get linksolicitud => _linksolicitud ?? '';
  set linksolicitud(String? val) => _linksolicitud = val;

  bool hasLinksolicitud() => _linksolicitud != null;

  // "observacionesmedidaadoptada" field.
  String? _observacionesmedidaadoptada;
  String get observacionesmedidaadoptada => _observacionesmedidaadoptada ?? '';
  set observacionesmedidaadoptada(String? val) =>
      _observacionesmedidaadoptada = val;

  bool hasObservacionesmedidaadoptada() => _observacionesmedidaadoptada != null;

  // "linksolicitudSENAF" field.
  String? _linksolicitudSENAF;
  String get linksolicitudSENAF => _linksolicitudSENAF ?? '';
  set linksolicitudSENAF(String? val) => _linksolicitudSENAF = val;

  bool hasLinksolicitudSENAF() => _linksolicitudSENAF != null;

  // "fechaSolicitudEquipo" field.
  String? _fechaSolicitudEquipo;
  String get fechaSolicitudEquipo => _fechaSolicitudEquipo ?? '';
  set fechaSolicitudEquipo(String? val) => _fechaSolicitudEquipo = val;

  bool hasFechaSolicitudEquipo() => _fechaSolicitudEquipo != null;

  // "FechaSolicitudaSenaf" field.
  String? _fechaSolicitudaSenaf;
  String get fechaSolicitudaSenaf => _fechaSolicitudaSenaf ?? '';
  set fechaSolicitudaSenaf(String? val) => _fechaSolicitudaSenaf = val;

  bool hasFechaSolicitudaSenaf() => _fechaSolicitudaSenaf != null;

  // "estadoinforme" field.
  String? _estadoinforme;
  String get estadoinforme => _estadoinforme ?? '';
  set estadoinforme(String? val) => _estadoinforme = val;

  bool hasEstadoinforme() => _estadoinforme != null;

  // "spd" field.
  bool? _spd;
  bool get spd => _spd ?? false;
  set spd(bool? val) => _spd = val;

  bool hasSpd() => _spd != null;

  // "cordinacionzonal" field.
  bool? _cordinacionzonal;
  bool get cordinacionzonal => _cordinacionzonal ?? false;
  set cordinacionzonal(bool? val) => _cordinacionzonal = val;

  bool hasCordinacionzonal() => _cordinacionzonal != null;

  // "cordinaciongenaral" field.
  bool? _cordinaciongenaral;
  bool get cordinaciongenaral => _cordinaciongenaral ?? false;
  set cordinaciongenaral(bool? val) => _cordinaciongenaral = val;

  bool hasCordinaciongenaral() => _cordinaciongenaral != null;

  // "solicitudVsSPD" field.
  String? _solicitudVsSPD;
  String get solicitudVsSPD => _solicitudVsSPD ?? '';
  set solicitudVsSPD(String? val) => _solicitudVsSPD = val;

  bool hasSolicitudVsSPD() => _solicitudVsSPD != null;

  // "SolicitudVsCoordinacionzonal" field.
  String? _solicitudVsCoordinacionzonal;
  String get solicitudVsCoordinacionzonal =>
      _solicitudVsCoordinacionzonal ?? '';
  set solicitudVsCoordinacionzonal(String? val) =>
      _solicitudVsCoordinacionzonal = val;

  bool hasSolicitudVsCoordinacionzonal() =>
      _solicitudVsCoordinacionzonal != null;

  // "SolicitudVsCoordinacionGral" field.
  String? _solicitudVsCoordinacionGral;
  String get solicitudVsCoordinacionGral => _solicitudVsCoordinacionGral ?? '';
  set solicitudVsCoordinacionGral(String? val) =>
      _solicitudVsCoordinacionGral = val;

  bool hasSolicitudVsCoordinacionGral() => _solicitudVsCoordinacionGral != null;

  // "iddrive" field.
  String? _iddrive;
  String get iddrive => _iddrive ?? '';
  set iddrive(String? val) => _iddrive = val;

  bool hasIddrive() => _iddrive != null;

  // "responsable" field.
  String? _responsable;
  String get responsable => _responsable ?? '';
  set responsable(String? val) => _responsable = val;

  bool hasResponsable() => _responsable != null;

  // "estadointerno" field.
  String? _estadointerno;
  String get estadointerno => _estadointerno ?? '';
  set estadointerno(String? val) => _estadointerno = val;

  bool hasEstadointerno() => _estadointerno != null;

  static Form9CeseRowStruct fromMap(Map<String, dynamic> data) =>
      Form9CeseRowStruct(
        idForm9: castToType<int>(data['idForm9']),
        idIngreso: castToType<int>(data['idIngreso']),
        idExpediente: castToType<int>(data['idExpediente']),
        fecha: data['fecha'] as String?,
        causa: data['causa'] as String?,
        estado: data['estado'] as String?,
        observacioncese: data['observacioncese'] as String?,
        solicitudMedida: data['solicitudMedida'] as bool?,
        acciones: data['acciones'] as String?,
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        iduser: data['iduser'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        fechasolicitudsenaf: data['fechasolicitudsenaf'] as String?,
        agotadomedida: data['agotadomedida'] as String?,
        riesgovida: data['riesgovida'] as String?,
        fundamentacionsolicitud: data['fundamentacionsolicitud'] as String?,
        resenadelasitu: data['resenadelasitu'] as String?,
        linksolicitud: data['linksolicitud'] as String?,
        observacionesmedidaadoptada:
            data['observacionesmedidaadoptada'] as String?,
        linksolicitudSENAF: data['linksolicitudSENAF'] as String?,
        fechaSolicitudEquipo: data['fechaSolicitudEquipo'] as String?,
        fechaSolicitudaSenaf: data['FechaSolicitudaSenaf'] as String?,
        estadoinforme: data['estadoinforme'] as String?,
        spd: data['spd'] as bool?,
        cordinacionzonal: data['cordinacionzonal'] as bool?,
        cordinaciongenaral: data['cordinaciongenaral'] as bool?,
        solicitudVsSPD: data['solicitudVsSPD'] as String?,
        solicitudVsCoordinacionzonal:
            data['SolicitudVsCoordinacionzonal'] as String?,
        solicitudVsCoordinacionGral:
            data['SolicitudVsCoordinacionGral'] as String?,
        iddrive: data['iddrive'] as String?,
        responsable: data['responsable'] as String?,
        estadointerno: data['estadointerno'] as String?,
      );

  static Form9CeseRowStruct? maybeFromMap(dynamic data) => data is Map
      ? Form9CeseRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idForm9': _idForm9,
        'idIngreso': _idIngreso,
        'idExpediente': _idExpediente,
        'fecha': _fecha,
        'causa': _causa,
        'estado': _estado,
        'observacioncese': _observacioncese,
        'solicitudMedida': _solicitudMedida,
        'acciones': _acciones,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'iduser': _iduser,
        'idgrupofamiliar': _idgrupofamiliar,
        'fechasolicitudsenaf': _fechasolicitudsenaf,
        'agotadomedida': _agotadomedida,
        'riesgovida': _riesgovida,
        'fundamentacionsolicitud': _fundamentacionsolicitud,
        'resenadelasitu': _resenadelasitu,
        'linksolicitud': _linksolicitud,
        'observacionesmedidaadoptada': _observacionesmedidaadoptada,
        'linksolicitudSENAF': _linksolicitudSENAF,
        'fechaSolicitudEquipo': _fechaSolicitudEquipo,
        'FechaSolicitudaSenaf': _fechaSolicitudaSenaf,
        'estadoinforme': _estadoinforme,
        'spd': _spd,
        'cordinacionzonal': _cordinacionzonal,
        'cordinaciongenaral': _cordinaciongenaral,
        'solicitudVsSPD': _solicitudVsSPD,
        'SolicitudVsCoordinacionzonal': _solicitudVsCoordinacionzonal,
        'SolicitudVsCoordinacionGral': _solicitudVsCoordinacionGral,
        'iddrive': _iddrive,
        'responsable': _responsable,
        'estadointerno': _estadointerno,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idForm9': serializeParam(
          _idForm9,
          ParamType.int,
        ),
        'idIngreso': serializeParam(
          _idIngreso,
          ParamType.int,
        ),
        'idExpediente': serializeParam(
          _idExpediente,
          ParamType.int,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'causa': serializeParam(
          _causa,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'observacioncese': serializeParam(
          _observacioncese,
          ParamType.String,
        ),
        'solicitudMedida': serializeParam(
          _solicitudMedida,
          ParamType.bool,
        ),
        'acciones': serializeParam(
          _acciones,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'idusers': serializeParam(
          _idusers,
          ParamType.String,
        ),
        'iduser': serializeParam(
          _iduser,
          ParamType.String,
        ),
        'idgrupofamiliar': serializeParam(
          _idgrupofamiliar,
          ParamType.String,
        ),
        'fechasolicitudsenaf': serializeParam(
          _fechasolicitudsenaf,
          ParamType.String,
        ),
        'agotadomedida': serializeParam(
          _agotadomedida,
          ParamType.String,
        ),
        'riesgovida': serializeParam(
          _riesgovida,
          ParamType.String,
        ),
        'fundamentacionsolicitud': serializeParam(
          _fundamentacionsolicitud,
          ParamType.String,
        ),
        'resenadelasitu': serializeParam(
          _resenadelasitu,
          ParamType.String,
        ),
        'linksolicitud': serializeParam(
          _linksolicitud,
          ParamType.String,
        ),
        'observacionesmedidaadoptada': serializeParam(
          _observacionesmedidaadoptada,
          ParamType.String,
        ),
        'linksolicitudSENAF': serializeParam(
          _linksolicitudSENAF,
          ParamType.String,
        ),
        'fechaSolicitudEquipo': serializeParam(
          _fechaSolicitudEquipo,
          ParamType.String,
        ),
        'FechaSolicitudaSenaf': serializeParam(
          _fechaSolicitudaSenaf,
          ParamType.String,
        ),
        'estadoinforme': serializeParam(
          _estadoinforme,
          ParamType.String,
        ),
        'spd': serializeParam(
          _spd,
          ParamType.bool,
        ),
        'cordinacionzonal': serializeParam(
          _cordinacionzonal,
          ParamType.bool,
        ),
        'cordinaciongenaral': serializeParam(
          _cordinaciongenaral,
          ParamType.bool,
        ),
        'solicitudVsSPD': serializeParam(
          _solicitudVsSPD,
          ParamType.String,
        ),
        'SolicitudVsCoordinacionzonal': serializeParam(
          _solicitudVsCoordinacionzonal,
          ParamType.String,
        ),
        'SolicitudVsCoordinacionGral': serializeParam(
          _solicitudVsCoordinacionGral,
          ParamType.String,
        ),
        'iddrive': serializeParam(
          _iddrive,
          ParamType.String,
        ),
        'responsable': serializeParam(
          _responsable,
          ParamType.String,
        ),
        'estadointerno': serializeParam(
          _estadointerno,
          ParamType.String,
        ),
      }.withoutNulls;

  static Form9CeseRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      Form9CeseRowStruct(
        idForm9: deserializeParam(
          data['idForm9'],
          ParamType.int,
          false,
        ),
        idIngreso: deserializeParam(
          data['idIngreso'],
          ParamType.int,
          false,
        ),
        idExpediente: deserializeParam(
          data['idExpediente'],
          ParamType.int,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        causa: deserializeParam(
          data['causa'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        observacioncese: deserializeParam(
          data['observacioncese'],
          ParamType.String,
          false,
        ),
        solicitudMedida: deserializeParam(
          data['solicitudMedida'],
          ParamType.bool,
          false,
        ),
        acciones: deserializeParam(
          data['acciones'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        idusers: deserializeParam(
          data['idusers'],
          ParamType.String,
          false,
        ),
        iduser: deserializeParam(
          data['iduser'],
          ParamType.String,
          false,
        ),
        idgrupofamiliar: deserializeParam(
          data['idgrupofamiliar'],
          ParamType.String,
          false,
        ),
        fechasolicitudsenaf: deserializeParam(
          data['fechasolicitudsenaf'],
          ParamType.String,
          false,
        ),
        agotadomedida: deserializeParam(
          data['agotadomedida'],
          ParamType.String,
          false,
        ),
        riesgovida: deserializeParam(
          data['riesgovida'],
          ParamType.String,
          false,
        ),
        fundamentacionsolicitud: deserializeParam(
          data['fundamentacionsolicitud'],
          ParamType.String,
          false,
        ),
        resenadelasitu: deserializeParam(
          data['resenadelasitu'],
          ParamType.String,
          false,
        ),
        linksolicitud: deserializeParam(
          data['linksolicitud'],
          ParamType.String,
          false,
        ),
        observacionesmedidaadoptada: deserializeParam(
          data['observacionesmedidaadoptada'],
          ParamType.String,
          false,
        ),
        linksolicitudSENAF: deserializeParam(
          data['linksolicitudSENAF'],
          ParamType.String,
          false,
        ),
        fechaSolicitudEquipo: deserializeParam(
          data['fechaSolicitudEquipo'],
          ParamType.String,
          false,
        ),
        fechaSolicitudaSenaf: deserializeParam(
          data['FechaSolicitudaSenaf'],
          ParamType.String,
          false,
        ),
        estadoinforme: deserializeParam(
          data['estadoinforme'],
          ParamType.String,
          false,
        ),
        spd: deserializeParam(
          data['spd'],
          ParamType.bool,
          false,
        ),
        cordinacionzonal: deserializeParam(
          data['cordinacionzonal'],
          ParamType.bool,
          false,
        ),
        cordinaciongenaral: deserializeParam(
          data['cordinaciongenaral'],
          ParamType.bool,
          false,
        ),
        solicitudVsSPD: deserializeParam(
          data['solicitudVsSPD'],
          ParamType.String,
          false,
        ),
        solicitudVsCoordinacionzonal: deserializeParam(
          data['SolicitudVsCoordinacionzonal'],
          ParamType.String,
          false,
        ),
        solicitudVsCoordinacionGral: deserializeParam(
          data['SolicitudVsCoordinacionGral'],
          ParamType.String,
          false,
        ),
        iddrive: deserializeParam(
          data['iddrive'],
          ParamType.String,
          false,
        ),
        responsable: deserializeParam(
          data['responsable'],
          ParamType.String,
          false,
        ),
        estadointerno: deserializeParam(
          data['estadointerno'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Form9CeseRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Form9CeseRowStruct &&
        idForm9 == other.idForm9 &&
        idIngreso == other.idIngreso &&
        idExpediente == other.idExpediente &&
        fecha == other.fecha &&
        causa == other.causa &&
        estado == other.estado &&
        observacioncese == other.observacioncese &&
        solicitudMedida == other.solicitudMedida &&
        acciones == other.acciones &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        iduser == other.iduser &&
        idgrupofamiliar == other.idgrupofamiliar &&
        fechasolicitudsenaf == other.fechasolicitudsenaf &&
        agotadomedida == other.agotadomedida &&
        riesgovida == other.riesgovida &&
        fundamentacionsolicitud == other.fundamentacionsolicitud &&
        resenadelasitu == other.resenadelasitu &&
        linksolicitud == other.linksolicitud &&
        observacionesmedidaadoptada == other.observacionesmedidaadoptada &&
        linksolicitudSENAF == other.linksolicitudSENAF &&
        fechaSolicitudEquipo == other.fechaSolicitudEquipo &&
        fechaSolicitudaSenaf == other.fechaSolicitudaSenaf &&
        estadoinforme == other.estadoinforme &&
        spd == other.spd &&
        cordinacionzonal == other.cordinacionzonal &&
        cordinaciongenaral == other.cordinaciongenaral &&
        solicitudVsSPD == other.solicitudVsSPD &&
        solicitudVsCoordinacionzonal == other.solicitudVsCoordinacionzonal &&
        solicitudVsCoordinacionGral == other.solicitudVsCoordinacionGral &&
        iddrive == other.iddrive &&
        responsable == other.responsable &&
        estadointerno == other.estadointerno;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idForm9,
        idIngreso,
        idExpediente,
        fecha,
        causa,
        estado,
        observacioncese,
        solicitudMedida,
        acciones,
        updatedAt,
        idusers,
        iduser,
        idgrupofamiliar,
        fechasolicitudsenaf,
        agotadomedida,
        riesgovida,
        fundamentacionsolicitud,
        resenadelasitu,
        linksolicitud,
        observacionesmedidaadoptada,
        linksolicitudSENAF,
        fechaSolicitudEquipo,
        fechaSolicitudaSenaf,
        estadoinforme,
        spd,
        cordinacionzonal,
        cordinaciongenaral,
        solicitudVsSPD,
        solicitudVsCoordinacionzonal,
        solicitudVsCoordinacionGral,
        iddrive,
        responsable,
        estadointerno
      ]);
}

Form9CeseRowStruct createForm9CeseRowStruct({
  int? idForm9,
  int? idIngreso,
  int? idExpediente,
  String? fecha,
  String? causa,
  String? estado,
  String? observacioncese,
  bool? solicitudMedida,
  String? acciones,
  String? updatedAt,
  String? idusers,
  String? iduser,
  String? idgrupofamiliar,
  String? fechasolicitudsenaf,
  String? agotadomedida,
  String? riesgovida,
  String? fundamentacionsolicitud,
  String? resenadelasitu,
  String? linksolicitud,
  String? observacionesmedidaadoptada,
  String? linksolicitudSENAF,
  String? fechaSolicitudEquipo,
  String? fechaSolicitudaSenaf,
  String? estadoinforme,
  bool? spd,
  bool? cordinacionzonal,
  bool? cordinaciongenaral,
  String? solicitudVsSPD,
  String? solicitudVsCoordinacionzonal,
  String? solicitudVsCoordinacionGral,
  String? iddrive,
  String? responsable,
  String? estadointerno,
}) =>
    Form9CeseRowStruct(
      idForm9: idForm9,
      idIngreso: idIngreso,
      idExpediente: idExpediente,
      fecha: fecha,
      causa: causa,
      estado: estado,
      observacioncese: observacioncese,
      solicitudMedida: solicitudMedida,
      acciones: acciones,
      updatedAt: updatedAt,
      idusers: idusers,
      iduser: iduser,
      idgrupofamiliar: idgrupofamiliar,
      fechasolicitudsenaf: fechasolicitudsenaf,
      agotadomedida: agotadomedida,
      riesgovida: riesgovida,
      fundamentacionsolicitud: fundamentacionsolicitud,
      resenadelasitu: resenadelasitu,
      linksolicitud: linksolicitud,
      observacionesmedidaadoptada: observacionesmedidaadoptada,
      linksolicitudSENAF: linksolicitudSENAF,
      fechaSolicitudEquipo: fechaSolicitudEquipo,
      fechaSolicitudaSenaf: fechaSolicitudaSenaf,
      estadoinforme: estadoinforme,
      spd: spd,
      cordinacionzonal: cordinacionzonal,
      cordinaciongenaral: cordinaciongenaral,
      solicitudVsSPD: solicitudVsSPD,
      solicitudVsCoordinacionzonal: solicitudVsCoordinacionzonal,
      solicitudVsCoordinacionGral: solicitudVsCoordinacionGral,
      iddrive: iddrive,
      responsable: responsable,
      estadointerno: estadointerno,
    );
