// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioStruct extends BaseStruct {
  UsuarioStruct({
    String? id,
    String? nombre,
    String? spd,
    int? zona,
    bool? esGlobal,
    List<RolesStruct>? roles,
  })  : _id = id,
        _nombre = nombre,
        _spd = spd,
        _zona = zona,
        _esGlobal = esGlobal,
        _roles = roles;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "spd" field.
  String? _spd;
  String get spd => _spd ?? '';
  set spd(String? val) => _spd = val;

  bool hasSpd() => _spd != null;

  // "zona" field.
  int? _zona;
  int get zona => _zona ?? 0;
  set zona(int? val) => _zona = val;

  void incrementZona(int amount) => zona = zona + amount;

  bool hasZona() => _zona != null;

  // "es_global" field.
  bool? _esGlobal;
  bool get esGlobal => _esGlobal ?? false;
  set esGlobal(bool? val) => _esGlobal = val;

  bool hasEsGlobal() => _esGlobal != null;

  // "roles" field.
  List<RolesStruct>? _roles;
  List<RolesStruct> get roles => _roles ?? const [];
  set roles(List<RolesStruct>? val) => _roles = val;

  void updateRoles(Function(List<RolesStruct>) updateFn) {
    updateFn(_roles ??= []);
  }

  bool hasRoles() => _roles != null;

  static UsuarioStruct fromMap(Map<String, dynamic> data) => UsuarioStruct(
        id: data['id'] as String?,
        nombre: data['nombre'] as String?,
        spd: data['spd'] as String?,
        zona: castToType<int>(data['zona']),
        esGlobal: data['es_global'] as bool?,
        roles: getStructList(
          data['roles'],
          RolesStruct.fromMap,
        ),
      );

  static UsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nombre': _nombre,
        'spd': _spd,
        'zona': _zona,
        'es_global': _esGlobal,
        'roles': _roles?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'spd': serializeParam(
          _spd,
          ParamType.String,
        ),
        'zona': serializeParam(
          _zona,
          ParamType.int,
        ),
        'es_global': serializeParam(
          _esGlobal,
          ParamType.bool,
        ),
        'roles': serializeParam(
          _roles,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        spd: deserializeParam(
          data['spd'],
          ParamType.String,
          false,
        ),
        zona: deserializeParam(
          data['zona'],
          ParamType.int,
          false,
        ),
        esGlobal: deserializeParam(
          data['es_global'],
          ParamType.bool,
          false,
        ),
        roles: deserializeStructParam<RolesStruct>(
          data['roles'],
          ParamType.DataStruct,
          true,
          structBuilder: RolesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UsuarioStruct &&
        id == other.id &&
        nombre == other.nombre &&
        spd == other.spd &&
        zona == other.zona &&
        esGlobal == other.esGlobal &&
        listEquality.equals(roles, other.roles);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, nombre, spd, zona, esGlobal, roles]);
}

UsuarioStruct createUsuarioStruct({
  String? id,
  String? nombre,
  String? spd,
  int? zona,
  bool? esGlobal,
}) =>
    UsuarioStruct(
      id: id,
      nombre: nombre,
      spd: spd,
      zona: zona,
      esGlobal: esGlobal,
    );
