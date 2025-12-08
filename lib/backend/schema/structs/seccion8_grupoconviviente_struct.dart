// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Seccion8GrupoconvivienteStruct extends BaseStruct {
  Seccion8GrupoconvivienteStruct({
    int? idSec3,
    String? nombre,
    String? apellido,
    String? telefono,
    String? direccion,
    int? idIngreso,
    int? idExpediente,
    String? updatedAt,
    String? iduser,
    String? idgrupofamiliar,
    String? vinculo,
    bool? entrevistado,
    String? ocupacion,
    String? refdeubicacion,
    int? idNNyA,
    int? idGrupoconviviente,
    GrupoConvivienteStruct? grupoConviviente,
  })  : _idSec3 = idSec3,
        _nombre = nombre,
        _apellido = apellido,
        _telefono = telefono,
        _direccion = direccion,
        _idIngreso = idIngreso,
        _idExpediente = idExpediente,
        _updatedAt = updatedAt,
        _iduser = iduser,
        _idgrupofamiliar = idgrupofamiliar,
        _vinculo = vinculo,
        _entrevistado = entrevistado,
        _ocupacion = ocupacion,
        _refdeubicacion = refdeubicacion,
        _idNNyA = idNNyA,
        _idGrupoconviviente = idGrupoconviviente,
        _grupoConviviente = grupoConviviente;

  // "idSec3" field.
  int? _idSec3;
  int get idSec3 => _idSec3 ?? 0;
  set idSec3(int? val) => _idSec3 = val;

  void incrementIdSec3(int amount) => idSec3 = idSec3 + amount;

  bool hasIdSec3() => _idSec3 != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

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

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

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

  // "Vinculo" field.
  String? _vinculo;
  String get vinculo => _vinculo ?? '';
  set vinculo(String? val) => _vinculo = val;

  bool hasVinculo() => _vinculo != null;

  // "entrevistado" field.
  bool? _entrevistado;
  bool get entrevistado => _entrevistado ?? false;
  set entrevistado(bool? val) => _entrevistado = val;

  bool hasEntrevistado() => _entrevistado != null;

  // "ocupacion" field.
  String? _ocupacion;
  String get ocupacion => _ocupacion ?? '';
  set ocupacion(String? val) => _ocupacion = val;

  bool hasOcupacion() => _ocupacion != null;

  // "refdeubicacion" field.
  String? _refdeubicacion;
  String get refdeubicacion => _refdeubicacion ?? '';
  set refdeubicacion(String? val) => _refdeubicacion = val;

  bool hasRefdeubicacion() => _refdeubicacion != null;

  // "idNNyA" field.
  int? _idNNyA;
  int get idNNyA => _idNNyA ?? 0;
  set idNNyA(int? val) => _idNNyA = val;

  void incrementIdNNyA(int amount) => idNNyA = idNNyA + amount;

  bool hasIdNNyA() => _idNNyA != null;

  // "id_grupoconviviente" field.
  int? _idGrupoconviviente;
  int get idGrupoconviviente => _idGrupoconviviente ?? 0;
  set idGrupoconviviente(int? val) => _idGrupoconviviente = val;

  void incrementIdGrupoconviviente(int amount) =>
      idGrupoconviviente = idGrupoconviviente + amount;

  bool hasIdGrupoconviviente() => _idGrupoconviviente != null;

  // "grupo_conviviente" field.
  GrupoConvivienteStruct? _grupoConviviente;
  GrupoConvivienteStruct get grupoConviviente =>
      _grupoConviviente ?? GrupoConvivienteStruct();
  set grupoConviviente(GrupoConvivienteStruct? val) => _grupoConviviente = val;

  void updateGrupoConviviente(Function(GrupoConvivienteStruct) updateFn) {
    updateFn(_grupoConviviente ??= GrupoConvivienteStruct());
  }

  bool hasGrupoConviviente() => _grupoConviviente != null;

  static Seccion8GrupoconvivienteStruct fromMap(Map<String, dynamic> data) =>
      Seccion8GrupoconvivienteStruct(
        idSec3: castToType<int>(data['idSec3']),
        nombre: data['nombre'] as String?,
        apellido: data['apellido'] as String?,
        telefono: data['telefono'] as String?,
        direccion: data['direccion'] as String?,
        idIngreso: castToType<int>(data['idIngreso']),
        idExpediente: castToType<int>(data['idExpediente']),
        updatedAt: data['updated_at'] as String?,
        iduser: data['iduser'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        vinculo: data['Vinculo'] as String?,
        entrevistado: data['entrevistado'] as bool?,
        ocupacion: data['ocupacion'] as String?,
        refdeubicacion: data['refdeubicacion'] as String?,
        idNNyA: castToType<int>(data['idNNyA']),
        idGrupoconviviente: castToType<int>(data['id_grupoconviviente']),
        grupoConviviente: data['grupo_conviviente'] is GrupoConvivienteStruct
            ? data['grupo_conviviente']
            : GrupoConvivienteStruct.maybeFromMap(data['grupo_conviviente']),
      );

  static Seccion8GrupoconvivienteStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? Seccion8GrupoconvivienteStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'idSec3': _idSec3,
        'nombre': _nombre,
        'apellido': _apellido,
        'telefono': _telefono,
        'direccion': _direccion,
        'idIngreso': _idIngreso,
        'idExpediente': _idExpediente,
        'updated_at': _updatedAt,
        'iduser': _iduser,
        'idgrupofamiliar': _idgrupofamiliar,
        'Vinculo': _vinculo,
        'entrevistado': _entrevistado,
        'ocupacion': _ocupacion,
        'refdeubicacion': _refdeubicacion,
        'idNNyA': _idNNyA,
        'id_grupoconviviente': _idGrupoconviviente,
        'grupo_conviviente': _grupoConviviente?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idSec3': serializeParam(
          _idSec3,
          ParamType.int,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
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
        'updated_at': serializeParam(
          _updatedAt,
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
        'Vinculo': serializeParam(
          _vinculo,
          ParamType.String,
        ),
        'entrevistado': serializeParam(
          _entrevistado,
          ParamType.bool,
        ),
        'ocupacion': serializeParam(
          _ocupacion,
          ParamType.String,
        ),
        'refdeubicacion': serializeParam(
          _refdeubicacion,
          ParamType.String,
        ),
        'idNNyA': serializeParam(
          _idNNyA,
          ParamType.int,
        ),
        'id_grupoconviviente': serializeParam(
          _idGrupoconviviente,
          ParamType.int,
        ),
        'grupo_conviviente': serializeParam(
          _grupoConviviente,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static Seccion8GrupoconvivienteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      Seccion8GrupoconvivienteStruct(
        idSec3: deserializeParam(
          data['idSec3'],
          ParamType.int,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['apellido'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
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
        updatedAt: deserializeParam(
          data['updated_at'],
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
        vinculo: deserializeParam(
          data['Vinculo'],
          ParamType.String,
          false,
        ),
        entrevistado: deserializeParam(
          data['entrevistado'],
          ParamType.bool,
          false,
        ),
        ocupacion: deserializeParam(
          data['ocupacion'],
          ParamType.String,
          false,
        ),
        refdeubicacion: deserializeParam(
          data['refdeubicacion'],
          ParamType.String,
          false,
        ),
        idNNyA: deserializeParam(
          data['idNNyA'],
          ParamType.int,
          false,
        ),
        idGrupoconviviente: deserializeParam(
          data['id_grupoconviviente'],
          ParamType.int,
          false,
        ),
        grupoConviviente: deserializeStructParam(
          data['grupo_conviviente'],
          ParamType.DataStruct,
          false,
          structBuilder: GrupoConvivienteStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'Seccion8GrupoconvivienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Seccion8GrupoconvivienteStruct &&
        idSec3 == other.idSec3 &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        telefono == other.telefono &&
        direccion == other.direccion &&
        idIngreso == other.idIngreso &&
        idExpediente == other.idExpediente &&
        updatedAt == other.updatedAt &&
        iduser == other.iduser &&
        idgrupofamiliar == other.idgrupofamiliar &&
        vinculo == other.vinculo &&
        entrevistado == other.entrevistado &&
        ocupacion == other.ocupacion &&
        refdeubicacion == other.refdeubicacion &&
        idNNyA == other.idNNyA &&
        idGrupoconviviente == other.idGrupoconviviente &&
        grupoConviviente == other.grupoConviviente;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idSec3,
        nombre,
        apellido,
        telefono,
        direccion,
        idIngreso,
        idExpediente,
        updatedAt,
        iduser,
        idgrupofamiliar,
        vinculo,
        entrevistado,
        ocupacion,
        refdeubicacion,
        idNNyA,
        idGrupoconviviente,
        grupoConviviente
      ]);
}

Seccion8GrupoconvivienteStruct createSeccion8GrupoconvivienteStruct({
  int? idSec3,
  String? nombre,
  String? apellido,
  String? telefono,
  String? direccion,
  int? idIngreso,
  int? idExpediente,
  String? updatedAt,
  String? iduser,
  String? idgrupofamiliar,
  String? vinculo,
  bool? entrevistado,
  String? ocupacion,
  String? refdeubicacion,
  int? idNNyA,
  int? idGrupoconviviente,
  GrupoConvivienteStruct? grupoConviviente,
}) =>
    Seccion8GrupoconvivienteStruct(
      idSec3: idSec3,
      nombre: nombre,
      apellido: apellido,
      telefono: telefono,
      direccion: direccion,
      idIngreso: idIngreso,
      idExpediente: idExpediente,
      updatedAt: updatedAt,
      iduser: iduser,
      idgrupofamiliar: idgrupofamiliar,
      vinculo: vinculo,
      entrevistado: entrevistado,
      ocupacion: ocupacion,
      refdeubicacion: refdeubicacion,
      idNNyA: idNNyA,
      idGrupoconviviente: idGrupoconviviente,
      grupoConviviente: grupoConviviente ?? GrupoConvivienteStruct(),
    );
