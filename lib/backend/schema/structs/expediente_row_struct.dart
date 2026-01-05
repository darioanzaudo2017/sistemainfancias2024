// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpedienteRowStruct extends BaseStruct {
  ExpedienteRowStruct({
    int? id,
    String? expediente,
    String? fecha,
    String? nombres,
    String? apellidos,
    int? dni,
    String? spd,
    String? derivacion,
    String? canalIngr,
    String? epecificar,
    String? actuacion,
    String? profesional,
    String? fechaNac,
    int? edad,
    bool? estado,
    String? idusuario,
    String? updatedAt,
    String? idusers,
    String? iduser,
    String? idgrupofamiliar,
    int? idNNyA,
    int? zona,
  })  : _id = id,
        _expediente = expediente,
        _fecha = fecha,
        _nombres = nombres,
        _apellidos = apellidos,
        _dni = dni,
        _spd = spd,
        _derivacion = derivacion,
        _canalIngr = canalIngr,
        _epecificar = epecificar,
        _actuacion = actuacion,
        _profesional = profesional,
        _fechaNac = fechaNac,
        _edad = edad,
        _estado = estado,
        _idusuario = idusuario,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _iduser = iduser,
        _idgrupofamiliar = idgrupofamiliar,
        _idNNyA = idNNyA,
        _zona = zona;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "expediente" field.
  String? _expediente;
  String get expediente => _expediente ?? '';
  set expediente(String? val) => _expediente = val;

  bool hasExpediente() => _expediente != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  set nombres(String? val) => _nombres = val;

  bool hasNombres() => _nombres != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  set apellidos(String? val) => _apellidos = val;

  bool hasApellidos() => _apellidos != null;

  // "dni" field.
  int? _dni;
  int get dni => _dni ?? 0;
  set dni(int? val) => _dni = val;

  void incrementDni(int amount) => dni = dni + amount;

  bool hasDni() => _dni != null;

  // "spd" field.
  String? _spd;
  String get spd => _spd ?? '';
  set spd(String? val) => _spd = val;

  bool hasSpd() => _spd != null;

  // "derivacion" field.
  String? _derivacion;
  String get derivacion => _derivacion ?? '';
  set derivacion(String? val) => _derivacion = val;

  bool hasDerivacion() => _derivacion != null;

  // "canalIngr" field.
  String? _canalIngr;
  String get canalIngr => _canalIngr ?? '';
  set canalIngr(String? val) => _canalIngr = val;

  bool hasCanalIngr() => _canalIngr != null;

  // "epecificar" field.
  String? _epecificar;
  String get epecificar => _epecificar ?? '';
  set epecificar(String? val) => _epecificar = val;

  bool hasEpecificar() => _epecificar != null;

  // "actuacion" field.
  String? _actuacion;
  String get actuacion => _actuacion ?? '';
  set actuacion(String? val) => _actuacion = val;

  bool hasActuacion() => _actuacion != null;

  // "profesional" field.
  String? _profesional;
  String get profesional => _profesional ?? '';
  set profesional(String? val) => _profesional = val;

  bool hasProfesional() => _profesional != null;

  // "fechaNac" field.
  String? _fechaNac;
  String get fechaNac => _fechaNac ?? '';
  set fechaNac(String? val) => _fechaNac = val;

  bool hasFechaNac() => _fechaNac != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  set edad(int? val) => _edad = val;

  void incrementEdad(int amount) => edad = edad + amount;

  bool hasEdad() => _edad != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  set estado(bool? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "idusuario" field.
  String? _idusuario;
  String get idusuario => _idusuario ?? '';
  set idusuario(String? val) => _idusuario = val;

  bool hasIdusuario() => _idusuario != null;

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

  // "idNNyA" field.
  int? _idNNyA;
  int get idNNyA => _idNNyA ?? 0;
  set idNNyA(int? val) => _idNNyA = val;

  void incrementIdNNyA(int amount) => idNNyA = idNNyA + amount;

  bool hasIdNNyA() => _idNNyA != null;

  // "zona" field.
  int? _zona;
  int get zona => _zona ?? 0;
  set zona(int? val) => _zona = val;

  void incrementZona(int amount) => zona = zona + amount;

  bool hasZona() => _zona != null;

  static ExpedienteRowStruct fromMap(Map<String, dynamic> data) =>
      ExpedienteRowStruct(
        id: castToType<int>(data['id']),
        expediente: data['expediente'] as String?,
        fecha: data['fecha'] as String?,
        nombres: data['nombres'] as String?,
        apellidos: data['apellidos'] as String?,
        dni: castToType<int>(data['dni']),
        spd: data['spd'] as String?,
        derivacion: data['derivacion'] as String?,
        canalIngr: data['canalIngr'] as String?,
        epecificar: data['epecificar'] as String?,
        actuacion: data['actuacion'] as String?,
        profesional: data['profesional'] as String?,
        fechaNac: data['fechaNac'] as String?,
        edad: castToType<int>(data['edad']),
        estado: data['estado'] as bool?,
        idusuario: data['idusuario'] as String?,
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        iduser: data['iduser'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        idNNyA: castToType<int>(data['idNNyA']),
        zona: castToType<int>(data['zona']),
      );

  static ExpedienteRowStruct? maybeFromMap(dynamic data) => data is Map
      ? ExpedienteRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'expediente': _expediente,
        'fecha': _fecha,
        'nombres': _nombres,
        'apellidos': _apellidos,
        'dni': _dni,
        'spd': _spd,
        'derivacion': _derivacion,
        'canalIngr': _canalIngr,
        'epecificar': _epecificar,
        'actuacion': _actuacion,
        'profesional': _profesional,
        'fechaNac': _fechaNac,
        'edad': _edad,
        'estado': _estado,
        'idusuario': _idusuario,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'iduser': _iduser,
        'idgrupofamiliar': _idgrupofamiliar,
        'idNNyA': _idNNyA,
        'zona': _zona,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'expediente': serializeParam(
          _expediente,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'nombres': serializeParam(
          _nombres,
          ParamType.String,
        ),
        'apellidos': serializeParam(
          _apellidos,
          ParamType.String,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.int,
        ),
        'spd': serializeParam(
          _spd,
          ParamType.String,
        ),
        'derivacion': serializeParam(
          _derivacion,
          ParamType.String,
        ),
        'canalIngr': serializeParam(
          _canalIngr,
          ParamType.String,
        ),
        'epecificar': serializeParam(
          _epecificar,
          ParamType.String,
        ),
        'actuacion': serializeParam(
          _actuacion,
          ParamType.String,
        ),
        'profesional': serializeParam(
          _profesional,
          ParamType.String,
        ),
        'fechaNac': serializeParam(
          _fechaNac,
          ParamType.String,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.bool,
        ),
        'idusuario': serializeParam(
          _idusuario,
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
        'idNNyA': serializeParam(
          _idNNyA,
          ParamType.int,
        ),
        'zona': serializeParam(
          _zona,
          ParamType.int,
        ),
      }.withoutNulls;

  static ExpedienteRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpedienteRowStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        expediente: deserializeParam(
          data['expediente'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        nombres: deserializeParam(
          data['nombres'],
          ParamType.String,
          false,
        ),
        apellidos: deserializeParam(
          data['apellidos'],
          ParamType.String,
          false,
        ),
        dni: deserializeParam(
          data['dni'],
          ParamType.int,
          false,
        ),
        spd: deserializeParam(
          data['spd'],
          ParamType.String,
          false,
        ),
        derivacion: deserializeParam(
          data['derivacion'],
          ParamType.String,
          false,
        ),
        canalIngr: deserializeParam(
          data['canalIngr'],
          ParamType.String,
          false,
        ),
        epecificar: deserializeParam(
          data['epecificar'],
          ParamType.String,
          false,
        ),
        actuacion: deserializeParam(
          data['actuacion'],
          ParamType.String,
          false,
        ),
        profesional: deserializeParam(
          data['profesional'],
          ParamType.String,
          false,
        ),
        fechaNac: deserializeParam(
          data['fechaNac'],
          ParamType.String,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.bool,
          false,
        ),
        idusuario: deserializeParam(
          data['idusuario'],
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
        idNNyA: deserializeParam(
          data['idNNyA'],
          ParamType.int,
          false,
        ),
        zona: deserializeParam(
          data['zona'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ExpedienteRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpedienteRowStruct &&
        id == other.id &&
        expediente == other.expediente &&
        fecha == other.fecha &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        dni == other.dni &&
        spd == other.spd &&
        derivacion == other.derivacion &&
        canalIngr == other.canalIngr &&
        epecificar == other.epecificar &&
        actuacion == other.actuacion &&
        profesional == other.profesional &&
        fechaNac == other.fechaNac &&
        edad == other.edad &&
        estado == other.estado &&
        idusuario == other.idusuario &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        iduser == other.iduser &&
        idgrupofamiliar == other.idgrupofamiliar &&
        idNNyA == other.idNNyA &&
        zona == other.zona;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        expediente,
        fecha,
        nombres,
        apellidos,
        dni,
        spd,
        derivacion,
        canalIngr,
        epecificar,
        actuacion,
        profesional,
        fechaNac,
        edad,
        estado,
        idusuario,
        updatedAt,
        idusers,
        iduser,
        idgrupofamiliar,
        idNNyA,
        zona
      ]);
}

ExpedienteRowStruct createExpedienteRowStruct({
  int? id,
  String? expediente,
  String? fecha,
  String? nombres,
  String? apellidos,
  int? dni,
  String? spd,
  String? derivacion,
  String? canalIngr,
  String? epecificar,
  String? actuacion,
  String? profesional,
  String? fechaNac,
  int? edad,
  bool? estado,
  String? idusuario,
  String? updatedAt,
  String? idusers,
  String? iduser,
  String? idgrupofamiliar,
  int? idNNyA,
  int? zona,
}) =>
    ExpedienteRowStruct(
      id: id,
      expediente: expediente,
      fecha: fecha,
      nombres: nombres,
      apellidos: apellidos,
      dni: dni,
      spd: spd,
      derivacion: derivacion,
      canalIngr: canalIngr,
      epecificar: epecificar,
      actuacion: actuacion,
      profesional: profesional,
      fechaNac: fechaNac,
      edad: edad,
      estado: estado,
      idusuario: idusuario,
      updatedAt: updatedAt,
      idusers: idusers,
      iduser: iduser,
      idgrupofamiliar: idgrupofamiliar,
      idNNyA: idNNyA,
      zona: zona,
    );
