// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Apiexpediente6Struct extends BaseStruct {
  Apiexpediente6Struct({
    int? id,
    String? expediente,
    String? fecha,
    String? nombres,
    String? apellidos,
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
    int? idgrupofamiliar,
    int? idNNyA,
    String? ultimoEstado,
    int? idIngreso,
    int? countIngresos,
    int? idgrupo,
    int? idgrupofamiliarvista,
    int? idexpediente,
    String? nombre,
    String? apellido,
    int? dni,
    int? zona,
    int? dniNnya,
    String? edadCalculada,
    String? motivocierre,
  })  : _id = id,
        _expediente = expediente,
        _fecha = fecha,
        _nombres = nombres,
        _apellidos = apellidos,
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
        _ultimoEstado = ultimoEstado,
        _idIngreso = idIngreso,
        _countIngresos = countIngresos,
        _idgrupo = idgrupo,
        _idgrupofamiliarvista = idgrupofamiliarvista,
        _idexpediente = idexpediente,
        _nombre = nombre,
        _apellido = apellido,
        _dni = dni,
        _zona = zona,
        _dniNnya = dniNnya,
        _edadCalculada = edadCalculada,
        _motivocierre = motivocierre;

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
  int? _idgrupofamiliar;
  int get idgrupofamiliar => _idgrupofamiliar ?? 0;
  set idgrupofamiliar(int? val) => _idgrupofamiliar = val;

  void incrementIdgrupofamiliar(int amount) =>
      idgrupofamiliar = idgrupofamiliar + amount;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  // "idNNyA" field.
  int? _idNNyA;
  int get idNNyA => _idNNyA ?? 0;
  set idNNyA(int? val) => _idNNyA = val;

  void incrementIdNNyA(int amount) => idNNyA = idNNyA + amount;

  bool hasIdNNyA() => _idNNyA != null;

  // "ultimo_estado" field.
  String? _ultimoEstado;
  String get ultimoEstado => _ultimoEstado ?? '';
  set ultimoEstado(String? val) => _ultimoEstado = val;

  bool hasUltimoEstado() => _ultimoEstado != null;

  // "id_ingreso" field.
  int? _idIngreso;
  int get idIngreso => _idIngreso ?? 0;
  set idIngreso(int? val) => _idIngreso = val;

  void incrementIdIngreso(int amount) => idIngreso = idIngreso + amount;

  bool hasIdIngreso() => _idIngreso != null;

  // "count_ingresos" field.
  int? _countIngresos;
  int get countIngresos => _countIngresos ?? 0;
  set countIngresos(int? val) => _countIngresos = val;

  void incrementCountIngresos(int amount) =>
      countIngresos = countIngresos + amount;

  bool hasCountIngresos() => _countIngresos != null;

  // "idgrupo" field.
  int? _idgrupo;
  int get idgrupo => _idgrupo ?? 0;
  set idgrupo(int? val) => _idgrupo = val;

  void incrementIdgrupo(int amount) => idgrupo = idgrupo + amount;

  bool hasIdgrupo() => _idgrupo != null;

  // "idgrupofamiliarvista" field.
  int? _idgrupofamiliarvista;
  int get idgrupofamiliarvista => _idgrupofamiliarvista ?? 0;
  set idgrupofamiliarvista(int? val) => _idgrupofamiliarvista = val;

  void incrementIdgrupofamiliarvista(int amount) =>
      idgrupofamiliarvista = idgrupofamiliarvista + amount;

  bool hasIdgrupofamiliarvista() => _idgrupofamiliarvista != null;

  // "idexpediente" field.
  int? _idexpediente;
  int get idexpediente => _idexpediente ?? 0;
  set idexpediente(int? val) => _idexpediente = val;

  void incrementIdexpediente(int amount) =>
      idexpediente = idexpediente + amount;

  bool hasIdexpediente() => _idexpediente != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "Apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "DNI" field.
  int? _dni;
  int get dni => _dni ?? 0;
  set dni(int? val) => _dni = val;

  void incrementDni(int amount) => dni = dni + amount;

  bool hasDni() => _dni != null;

  // "Zona" field.
  int? _zona;
  int get zona => _zona ?? 0;
  set zona(int? val) => _zona = val;

  void incrementZona(int amount) => zona = zona + amount;

  bool hasZona() => _zona != null;

  // "dni_nnya" field.
  int? _dniNnya;
  int get dniNnya => _dniNnya ?? 0;
  set dniNnya(int? val) => _dniNnya = val;

  void incrementDniNnya(int amount) => dniNnya = dniNnya + amount;

  bool hasDniNnya() => _dniNnya != null;

  // "edad_calculada" field.
  String? _edadCalculada;
  String get edadCalculada => _edadCalculada ?? '';
  set edadCalculada(String? val) => _edadCalculada = val;

  bool hasEdadCalculada() => _edadCalculada != null;

  // "Motivocierre" field.
  String? _motivocierre;
  String get motivocierre => _motivocierre ?? '';
  set motivocierre(String? val) => _motivocierre = val;

  bool hasMotivocierre() => _motivocierre != null;

  static Apiexpediente6Struct fromMap(Map<String, dynamic> data) =>
      Apiexpediente6Struct(
        id: castToType<int>(data['id']),
        expediente: data['expediente'] as String?,
        fecha: data['fecha'] as String?,
        nombres: data['nombres'] as String?,
        apellidos: data['apellidos'] as String?,
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
        idgrupofamiliar: castToType<int>(data['idgrupofamiliar']),
        idNNyA: castToType<int>(data['idNNyA']),
        ultimoEstado: data['ultimo_estado'] as String?,
        idIngreso: castToType<int>(data['id_ingreso']),
        countIngresos: castToType<int>(data['count_ingresos']),
        idgrupo: castToType<int>(data['idgrupo']),
        idgrupofamiliarvista: castToType<int>(data['idgrupofamiliarvista']),
        idexpediente: castToType<int>(data['idexpediente']),
        nombre: data['Nombre'] as String?,
        apellido: data['Apellido'] as String?,
        dni: castToType<int>(data['DNI']),
        zona: castToType<int>(data['Zona']),
        dniNnya: castToType<int>(data['dni_nnya']),
        edadCalculada: data['edad_calculada'] as String?,
        motivocierre: data['Motivocierre'] as String?,
      );

  static Apiexpediente6Struct? maybeFromMap(dynamic data) => data is Map
      ? Apiexpediente6Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'expediente': _expediente,
        'fecha': _fecha,
        'nombres': _nombres,
        'apellidos': _apellidos,
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
        'ultimo_estado': _ultimoEstado,
        'id_ingreso': _idIngreso,
        'count_ingresos': _countIngresos,
        'idgrupo': _idgrupo,
        'idgrupofamiliarvista': _idgrupofamiliarvista,
        'idexpediente': _idexpediente,
        'Nombre': _nombre,
        'Apellido': _apellido,
        'DNI': _dni,
        'Zona': _zona,
        'dni_nnya': _dniNnya,
        'edad_calculada': _edadCalculada,
        'Motivocierre': _motivocierre,
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
          ParamType.int,
        ),
        'idNNyA': serializeParam(
          _idNNyA,
          ParamType.int,
        ),
        'ultimo_estado': serializeParam(
          _ultimoEstado,
          ParamType.String,
        ),
        'id_ingreso': serializeParam(
          _idIngreso,
          ParamType.int,
        ),
        'count_ingresos': serializeParam(
          _countIngresos,
          ParamType.int,
        ),
        'idgrupo': serializeParam(
          _idgrupo,
          ParamType.int,
        ),
        'idgrupofamiliarvista': serializeParam(
          _idgrupofamiliarvista,
          ParamType.int,
        ),
        'idexpediente': serializeParam(
          _idexpediente,
          ParamType.int,
        ),
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'Apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'DNI': serializeParam(
          _dni,
          ParamType.int,
        ),
        'Zona': serializeParam(
          _zona,
          ParamType.int,
        ),
        'dni_nnya': serializeParam(
          _dniNnya,
          ParamType.int,
        ),
        'edad_calculada': serializeParam(
          _edadCalculada,
          ParamType.String,
        ),
        'Motivocierre': serializeParam(
          _motivocierre,
          ParamType.String,
        ),
      }.withoutNulls;

  static Apiexpediente6Struct fromSerializableMap(Map<String, dynamic> data) =>
      Apiexpediente6Struct(
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
          ParamType.int,
          false,
        ),
        idNNyA: deserializeParam(
          data['idNNyA'],
          ParamType.int,
          false,
        ),
        ultimoEstado: deserializeParam(
          data['ultimo_estado'],
          ParamType.String,
          false,
        ),
        idIngreso: deserializeParam(
          data['id_ingreso'],
          ParamType.int,
          false,
        ),
        countIngresos: deserializeParam(
          data['count_ingresos'],
          ParamType.int,
          false,
        ),
        idgrupo: deserializeParam(
          data['idgrupo'],
          ParamType.int,
          false,
        ),
        idgrupofamiliarvista: deserializeParam(
          data['idgrupofamiliarvista'],
          ParamType.int,
          false,
        ),
        idexpediente: deserializeParam(
          data['idexpediente'],
          ParamType.int,
          false,
        ),
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['Apellido'],
          ParamType.String,
          false,
        ),
        dni: deserializeParam(
          data['DNI'],
          ParamType.int,
          false,
        ),
        zona: deserializeParam(
          data['Zona'],
          ParamType.int,
          false,
        ),
        dniNnya: deserializeParam(
          data['dni_nnya'],
          ParamType.int,
          false,
        ),
        edadCalculada: deserializeParam(
          data['edad_calculada'],
          ParamType.String,
          false,
        ),
        motivocierre: deserializeParam(
          data['Motivocierre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Apiexpediente6Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Apiexpediente6Struct &&
        id == other.id &&
        expediente == other.expediente &&
        fecha == other.fecha &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
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
        ultimoEstado == other.ultimoEstado &&
        idIngreso == other.idIngreso &&
        countIngresos == other.countIngresos &&
        idgrupo == other.idgrupo &&
        idgrupofamiliarvista == other.idgrupofamiliarvista &&
        idexpediente == other.idexpediente &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        dni == other.dni &&
        zona == other.zona &&
        dniNnya == other.dniNnya &&
        edadCalculada == other.edadCalculada &&
        motivocierre == other.motivocierre;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        expediente,
        fecha,
        nombres,
        apellidos,
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
        ultimoEstado,
        idIngreso,
        countIngresos,
        idgrupo,
        idgrupofamiliarvista,
        idexpediente,
        nombre,
        apellido,
        dni,
        zona,
        dniNnya,
        edadCalculada,
        motivocierre
      ]);
}

Apiexpediente6Struct createApiexpediente6Struct({
  int? id,
  String? expediente,
  String? fecha,
  String? nombres,
  String? apellidos,
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
  int? idgrupofamiliar,
  int? idNNyA,
  String? ultimoEstado,
  int? idIngreso,
  int? countIngresos,
  int? idgrupo,
  int? idgrupofamiliarvista,
  int? idexpediente,
  String? nombre,
  String? apellido,
  int? dni,
  int? zona,
  int? dniNnya,
  String? edadCalculada,
  String? motivocierre,
}) =>
    Apiexpediente6Struct(
      id: id,
      expediente: expediente,
      fecha: fecha,
      nombres: nombres,
      apellidos: apellidos,
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
      ultimoEstado: ultimoEstado,
      idIngreso: idIngreso,
      countIngresos: countIngresos,
      idgrupo: idgrupo,
      idgrupofamiliarvista: idgrupofamiliarvista,
      idexpediente: idexpediente,
      nombre: nombre,
      apellido: apellido,
      dni: dni,
      zona: zona,
      dniNnya: dniNnya,
      edadCalculada: edadCalculada,
      motivocierre: motivocierre,
    );
