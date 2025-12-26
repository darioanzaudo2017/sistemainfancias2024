// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Seccion1Struct extends BaseStruct {
  Seccion1Struct({
    int? idSec1,
    String? lugarNac,
    String? domicilio,
    String? telefono,
    String? genero,
    String? adultoRes,
    String? rnp,
    String? centro,
    String? historiaCli,
    String? cud,
    String? obraSoc,
    String? escuela,
    String? cursoEsc,
    String? domEsc,
    String? telEsc,
    String? cocurrenciaEsc,
    String? nivelAlcanzado,
    String? referente,
    String? trabaja,
    int? idIngreso,
    int? idExpediente,
    String? turno,
    String? trabajoObs,
    String? matriculo,
    String? updatedAt,
    String? idusers,
    String? iduser,
    String? idgrupofamiliar,
    String? tipoFamilia,
    String? barrio,
    List<String>? discapacidad,
    String? accedeprestaciones,
    String? cualesPrestaciones,
    String? barrioOtro,
  })  : _idSec1 = idSec1,
        _lugarNac = lugarNac,
        _domicilio = domicilio,
        _telefono = telefono,
        _genero = genero,
        _adultoRes = adultoRes,
        _rnp = rnp,
        _centro = centro,
        _historiaCli = historiaCli,
        _cud = cud,
        _obraSoc = obraSoc,
        _escuela = escuela,
        _cursoEsc = cursoEsc,
        _domEsc = domEsc,
        _telEsc = telEsc,
        _cocurrenciaEsc = cocurrenciaEsc,
        _nivelAlcanzado = nivelAlcanzado,
        _referente = referente,
        _trabaja = trabaja,
        _idIngreso = idIngreso,
        _idExpediente = idExpediente,
        _turno = turno,
        _trabajoObs = trabajoObs,
        _matriculo = matriculo,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _iduser = iduser,
        _idgrupofamiliar = idgrupofamiliar,
        _tipoFamilia = tipoFamilia,
        _barrio = barrio,
        _discapacidad = discapacidad,
        _accedeprestaciones = accedeprestaciones,
        _cualesPrestaciones = cualesPrestaciones,
        _barrioOtro = barrioOtro;

  // "idSec1" field.
  int? _idSec1;
  int get idSec1 => _idSec1 ?? 0;
  set idSec1(int? val) => _idSec1 = val;

  void incrementIdSec1(int amount) => idSec1 = idSec1 + amount;

  bool hasIdSec1() => _idSec1 != null;

  // "lugarNac" field.
  String? _lugarNac;
  String get lugarNac => _lugarNac ?? '';
  set lugarNac(String? val) => _lugarNac = val;

  bool hasLugarNac() => _lugarNac != null;

  // "domicilio" field.
  String? _domicilio;
  String get domicilio => _domicilio ?? '';
  set domicilio(String? val) => _domicilio = val;

  bool hasDomicilio() => _domicilio != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  set genero(String? val) => _genero = val;

  bool hasGenero() => _genero != null;

  // "adultoRes" field.
  String? _adultoRes;
  String get adultoRes => _adultoRes ?? '';
  set adultoRes(String? val) => _adultoRes = val;

  bool hasAdultoRes() => _adultoRes != null;

  // "rnp" field.
  String? _rnp;
  String get rnp => _rnp ?? '';
  set rnp(String? val) => _rnp = val;

  bool hasRnp() => _rnp != null;

  // "centro" field.
  String? _centro;
  String get centro => _centro ?? '';
  set centro(String? val) => _centro = val;

  bool hasCentro() => _centro != null;

  // "historiaCli" field.
  String? _historiaCli;
  String get historiaCli => _historiaCli ?? '';
  set historiaCli(String? val) => _historiaCli = val;

  bool hasHistoriaCli() => _historiaCli != null;

  // "cud" field.
  String? _cud;
  String get cud => _cud ?? '';
  set cud(String? val) => _cud = val;

  bool hasCud() => _cud != null;

  // "obraSoc" field.
  String? _obraSoc;
  String get obraSoc => _obraSoc ?? '';
  set obraSoc(String? val) => _obraSoc = val;

  bool hasObraSoc() => _obraSoc != null;

  // "escuela" field.
  String? _escuela;
  String get escuela => _escuela ?? '';
  set escuela(String? val) => _escuela = val;

  bool hasEscuela() => _escuela != null;

  // "cursoEsc" field.
  String? _cursoEsc;
  String get cursoEsc => _cursoEsc ?? '';
  set cursoEsc(String? val) => _cursoEsc = val;

  bool hasCursoEsc() => _cursoEsc != null;

  // "domEsc" field.
  String? _domEsc;
  String get domEsc => _domEsc ?? '';
  set domEsc(String? val) => _domEsc = val;

  bool hasDomEsc() => _domEsc != null;

  // "telEsc" field.
  String? _telEsc;
  String get telEsc => _telEsc ?? '';
  set telEsc(String? val) => _telEsc = val;

  bool hasTelEsc() => _telEsc != null;

  // "cocurrenciaEsc" field.
  String? _cocurrenciaEsc;
  String get cocurrenciaEsc => _cocurrenciaEsc ?? '';
  set cocurrenciaEsc(String? val) => _cocurrenciaEsc = val;

  bool hasCocurrenciaEsc() => _cocurrenciaEsc != null;

  // "nivelAlcanzado" field.
  String? _nivelAlcanzado;
  String get nivelAlcanzado => _nivelAlcanzado ?? '';
  set nivelAlcanzado(String? val) => _nivelAlcanzado = val;

  bool hasNivelAlcanzado() => _nivelAlcanzado != null;

  // "referente" field.
  String? _referente;
  String get referente => _referente ?? '';
  set referente(String? val) => _referente = val;

  bool hasReferente() => _referente != null;

  // "trabaja" field.
  String? _trabaja;
  String get trabaja => _trabaja ?? '';
  set trabaja(String? val) => _trabaja = val;

  bool hasTrabaja() => _trabaja != null;

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

  // "turno" field.
  String? _turno;
  String get turno => _turno ?? '';
  set turno(String? val) => _turno = val;

  bool hasTurno() => _turno != null;

  // "trabajoObs" field.
  String? _trabajoObs;
  String get trabajoObs => _trabajoObs ?? '';
  set trabajoObs(String? val) => _trabajoObs = val;

  bool hasTrabajoObs() => _trabajoObs != null;

  // "Matriculo" field.
  String? _matriculo;
  String get matriculo => _matriculo ?? '';
  set matriculo(String? val) => _matriculo = val;

  bool hasMatriculo() => _matriculo != null;

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

  // "TipoFamilia" field.
  String? _tipoFamilia;
  String get tipoFamilia => _tipoFamilia ?? '';
  set tipoFamilia(String? val) => _tipoFamilia = val;

  bool hasTipoFamilia() => _tipoFamilia != null;

  // "barrio" field.
  String? _barrio;
  String get barrio => _barrio ?? '';
  set barrio(String? val) => _barrio = val;

  bool hasBarrio() => _barrio != null;

  // "discapacidad" field.
  List<String>? _discapacidad;
  List<String> get discapacidad => _discapacidad ?? const [];
  set discapacidad(List<String>? val) => _discapacidad = val;

  void updateDiscapacidad(Function(List<String>) updateFn) {
    updateFn(_discapacidad ??= []);
  }

  bool hasDiscapacidad() => _discapacidad != null;

  // "accedeprestaciones" field.
  String? _accedeprestaciones;
  String get accedeprestaciones => _accedeprestaciones ?? '';
  set accedeprestaciones(String? val) => _accedeprestaciones = val;

  bool hasAccedeprestaciones() => _accedeprestaciones != null;

  // "cualesPrestaciones" field.
  String? _cualesPrestaciones;
  String get cualesPrestaciones => _cualesPrestaciones ?? '';
  set cualesPrestaciones(String? val) => _cualesPrestaciones = val;

  bool hasCualesPrestaciones() => _cualesPrestaciones != null;

  // "Barrio_Otro" field.
  String? _barrioOtro;
  String get barrioOtro => _barrioOtro ?? '';
  set barrioOtro(String? val) => _barrioOtro = val;

  bool hasBarrioOtro() => _barrioOtro != null;

  static Seccion1Struct fromMap(Map<String, dynamic> data) => Seccion1Struct(
        idSec1: castToType<int>(data['idSec1']),
        lugarNac: data['lugarNac'] as String?,
        domicilio: data['domicilio'] as String?,
        telefono: data['telefono'] as String?,
        genero: data['genero'] as String?,
        adultoRes: data['adultoRes'] as String?,
        rnp: data['rnp'] as String?,
        centro: data['centro'] as String?,
        historiaCli: data['historiaCli'] as String?,
        cud: data['cud'] as String?,
        obraSoc: data['obraSoc'] as String?,
        escuela: data['escuela'] as String?,
        cursoEsc: data['cursoEsc'] as String?,
        domEsc: data['domEsc'] as String?,
        telEsc: data['telEsc'] as String?,
        cocurrenciaEsc: data['cocurrenciaEsc'] as String?,
        nivelAlcanzado: data['nivelAlcanzado'] as String?,
        referente: data['referente'] as String?,
        trabaja: data['trabaja'] as String?,
        idIngreso: castToType<int>(data['idIngreso']),
        idExpediente: castToType<int>(data['idExpediente']),
        turno: data['turno'] as String?,
        trabajoObs: data['trabajoObs'] as String?,
        matriculo: data['Matriculo'] as String?,
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        iduser: data['iduser'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        tipoFamilia: data['TipoFamilia'] as String?,
        barrio: data['barrio'] as String?,
        discapacidad: getDataList(data['discapacidad']),
        accedeprestaciones: data['accedeprestaciones'] as String?,
        cualesPrestaciones: data['cualesPrestaciones'] as String?,
        barrioOtro: data['Barrio_Otro'] as String?,
      );

  static Seccion1Struct? maybeFromMap(dynamic data) =>
      data is Map ? Seccion1Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idSec1': _idSec1,
        'lugarNac': _lugarNac,
        'domicilio': _domicilio,
        'telefono': _telefono,
        'genero': _genero,
        'adultoRes': _adultoRes,
        'rnp': _rnp,
        'centro': _centro,
        'historiaCli': _historiaCli,
        'cud': _cud,
        'obraSoc': _obraSoc,
        'escuela': _escuela,
        'cursoEsc': _cursoEsc,
        'domEsc': _domEsc,
        'telEsc': _telEsc,
        'cocurrenciaEsc': _cocurrenciaEsc,
        'nivelAlcanzado': _nivelAlcanzado,
        'referente': _referente,
        'trabaja': _trabaja,
        'idIngreso': _idIngreso,
        'idExpediente': _idExpediente,
        'turno': _turno,
        'trabajoObs': _trabajoObs,
        'Matriculo': _matriculo,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'iduser': _iduser,
        'idgrupofamiliar': _idgrupofamiliar,
        'TipoFamilia': _tipoFamilia,
        'barrio': _barrio,
        'discapacidad': _discapacidad,
        'accedeprestaciones': _accedeprestaciones,
        'cualesPrestaciones': _cualesPrestaciones,
        'Barrio_Otro': _barrioOtro,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idSec1': serializeParam(
          _idSec1,
          ParamType.int,
        ),
        'lugarNac': serializeParam(
          _lugarNac,
          ParamType.String,
        ),
        'domicilio': serializeParam(
          _domicilio,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'genero': serializeParam(
          _genero,
          ParamType.String,
        ),
        'adultoRes': serializeParam(
          _adultoRes,
          ParamType.String,
        ),
        'rnp': serializeParam(
          _rnp,
          ParamType.String,
        ),
        'centro': serializeParam(
          _centro,
          ParamType.String,
        ),
        'historiaCli': serializeParam(
          _historiaCli,
          ParamType.String,
        ),
        'cud': serializeParam(
          _cud,
          ParamType.String,
        ),
        'obraSoc': serializeParam(
          _obraSoc,
          ParamType.String,
        ),
        'escuela': serializeParam(
          _escuela,
          ParamType.String,
        ),
        'cursoEsc': serializeParam(
          _cursoEsc,
          ParamType.String,
        ),
        'domEsc': serializeParam(
          _domEsc,
          ParamType.String,
        ),
        'telEsc': serializeParam(
          _telEsc,
          ParamType.String,
        ),
        'cocurrenciaEsc': serializeParam(
          _cocurrenciaEsc,
          ParamType.String,
        ),
        'nivelAlcanzado': serializeParam(
          _nivelAlcanzado,
          ParamType.String,
        ),
        'referente': serializeParam(
          _referente,
          ParamType.String,
        ),
        'trabaja': serializeParam(
          _trabaja,
          ParamType.String,
        ),
        'idIngreso': serializeParam(
          _idIngreso,
          ParamType.int,
        ),
        'idExpediente': serializeParam(
          _idExpediente,
          ParamType.int,
        ),
        'turno': serializeParam(
          _turno,
          ParamType.String,
        ),
        'trabajoObs': serializeParam(
          _trabajoObs,
          ParamType.String,
        ),
        'Matriculo': serializeParam(
          _matriculo,
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
        'TipoFamilia': serializeParam(
          _tipoFamilia,
          ParamType.String,
        ),
        'barrio': serializeParam(
          _barrio,
          ParamType.String,
        ),
        'discapacidad': serializeParam(
          _discapacidad,
          ParamType.String,
          isList: true,
        ),
        'accedeprestaciones': serializeParam(
          _accedeprestaciones,
          ParamType.String,
        ),
        'cualesPrestaciones': serializeParam(
          _cualesPrestaciones,
          ParamType.String,
        ),
        'Barrio_Otro': serializeParam(
          _barrioOtro,
          ParamType.String,
        ),
      }.withoutNulls;

  static Seccion1Struct fromSerializableMap(Map<String, dynamic> data) =>
      Seccion1Struct(
        idSec1: deserializeParam(
          data['idSec1'],
          ParamType.int,
          false,
        ),
        lugarNac: deserializeParam(
          data['lugarNac'],
          ParamType.String,
          false,
        ),
        domicilio: deserializeParam(
          data['domicilio'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        genero: deserializeParam(
          data['genero'],
          ParamType.String,
          false,
        ),
        adultoRes: deserializeParam(
          data['adultoRes'],
          ParamType.String,
          false,
        ),
        rnp: deserializeParam(
          data['rnp'],
          ParamType.String,
          false,
        ),
        centro: deserializeParam(
          data['centro'],
          ParamType.String,
          false,
        ),
        historiaCli: deserializeParam(
          data['historiaCli'],
          ParamType.String,
          false,
        ),
        cud: deserializeParam(
          data['cud'],
          ParamType.String,
          false,
        ),
        obraSoc: deserializeParam(
          data['obraSoc'],
          ParamType.String,
          false,
        ),
        escuela: deserializeParam(
          data['escuela'],
          ParamType.String,
          false,
        ),
        cursoEsc: deserializeParam(
          data['cursoEsc'],
          ParamType.String,
          false,
        ),
        domEsc: deserializeParam(
          data['domEsc'],
          ParamType.String,
          false,
        ),
        telEsc: deserializeParam(
          data['telEsc'],
          ParamType.String,
          false,
        ),
        cocurrenciaEsc: deserializeParam(
          data['cocurrenciaEsc'],
          ParamType.String,
          false,
        ),
        nivelAlcanzado: deserializeParam(
          data['nivelAlcanzado'],
          ParamType.String,
          false,
        ),
        referente: deserializeParam(
          data['referente'],
          ParamType.String,
          false,
        ),
        trabaja: deserializeParam(
          data['trabaja'],
          ParamType.String,
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
        turno: deserializeParam(
          data['turno'],
          ParamType.String,
          false,
        ),
        trabajoObs: deserializeParam(
          data['trabajoObs'],
          ParamType.String,
          false,
        ),
        matriculo: deserializeParam(
          data['Matriculo'],
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
        tipoFamilia: deserializeParam(
          data['TipoFamilia'],
          ParamType.String,
          false,
        ),
        barrio: deserializeParam(
          data['barrio'],
          ParamType.String,
          false,
        ),
        discapacidad: deserializeParam<String>(
          data['discapacidad'],
          ParamType.String,
          true,
        ),
        accedeprestaciones: deserializeParam(
          data['accedeprestaciones'],
          ParamType.String,
          false,
        ),
        cualesPrestaciones: deserializeParam(
          data['cualesPrestaciones'],
          ParamType.String,
          false,
        ),
        barrioOtro: deserializeParam(
          data['Barrio_Otro'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Seccion1Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is Seccion1Struct &&
        idSec1 == other.idSec1 &&
        lugarNac == other.lugarNac &&
        domicilio == other.domicilio &&
        telefono == other.telefono &&
        genero == other.genero &&
        adultoRes == other.adultoRes &&
        rnp == other.rnp &&
        centro == other.centro &&
        historiaCli == other.historiaCli &&
        cud == other.cud &&
        obraSoc == other.obraSoc &&
        escuela == other.escuela &&
        cursoEsc == other.cursoEsc &&
        domEsc == other.domEsc &&
        telEsc == other.telEsc &&
        cocurrenciaEsc == other.cocurrenciaEsc &&
        nivelAlcanzado == other.nivelAlcanzado &&
        referente == other.referente &&
        trabaja == other.trabaja &&
        idIngreso == other.idIngreso &&
        idExpediente == other.idExpediente &&
        turno == other.turno &&
        trabajoObs == other.trabajoObs &&
        matriculo == other.matriculo &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        iduser == other.iduser &&
        idgrupofamiliar == other.idgrupofamiliar &&
        tipoFamilia == other.tipoFamilia &&
        barrio == other.barrio &&
        listEquality.equals(discapacidad, other.discapacidad) &&
        accedeprestaciones == other.accedeprestaciones &&
        cualesPrestaciones == other.cualesPrestaciones &&
        barrioOtro == other.barrioOtro;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idSec1,
        lugarNac,
        domicilio,
        telefono,
        genero,
        adultoRes,
        rnp,
        centro,
        historiaCli,
        cud,
        obraSoc,
        escuela,
        cursoEsc,
        domEsc,
        telEsc,
        cocurrenciaEsc,
        nivelAlcanzado,
        referente,
        trabaja,
        idIngreso,
        idExpediente,
        turno,
        trabajoObs,
        matriculo,
        updatedAt,
        idusers,
        iduser,
        idgrupofamiliar,
        tipoFamilia,
        barrio,
        discapacidad,
        accedeprestaciones,
        cualesPrestaciones,
        barrioOtro
      ]);
}

Seccion1Struct createSeccion1Struct({
  int? idSec1,
  String? lugarNac,
  String? domicilio,
  String? telefono,
  String? genero,
  String? adultoRes,
  String? rnp,
  String? centro,
  String? historiaCli,
  String? cud,
  String? obraSoc,
  String? escuela,
  String? cursoEsc,
  String? domEsc,
  String? telEsc,
  String? cocurrenciaEsc,
  String? nivelAlcanzado,
  String? referente,
  String? trabaja,
  int? idIngreso,
  int? idExpediente,
  String? turno,
  String? trabajoObs,
  String? matriculo,
  String? updatedAt,
  String? idusers,
  String? iduser,
  String? idgrupofamiliar,
  String? tipoFamilia,
  String? barrio,
  String? accedeprestaciones,
  String? cualesPrestaciones,
  String? barrioOtro,
}) =>
    Seccion1Struct(
      idSec1: idSec1,
      lugarNac: lugarNac,
      domicilio: domicilio,
      telefono: telefono,
      genero: genero,
      adultoRes: adultoRes,
      rnp: rnp,
      centro: centro,
      historiaCli: historiaCli,
      cud: cud,
      obraSoc: obraSoc,
      escuela: escuela,
      cursoEsc: cursoEsc,
      domEsc: domEsc,
      telEsc: telEsc,
      cocurrenciaEsc: cocurrenciaEsc,
      nivelAlcanzado: nivelAlcanzado,
      referente: referente,
      trabaja: trabaja,
      idIngreso: idIngreso,
      idExpediente: idExpediente,
      turno: turno,
      trabajoObs: trabajoObs,
      matriculo: matriculo,
      updatedAt: updatedAt,
      idusers: idusers,
      iduser: iduser,
      idgrupofamiliar: idgrupofamiliar,
      tipoFamilia: tipoFamilia,
      barrio: barrio,
      accedeprestaciones: accedeprestaciones,
      cualesPrestaciones: cualesPrestaciones,
      barrioOtro: barrioOtro,
    );
