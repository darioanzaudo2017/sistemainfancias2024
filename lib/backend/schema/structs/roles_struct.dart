// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RolesStruct extends BaseStruct {
  RolesStruct({
    int? idrol,
    String? rol,
  })  : _idrol = idrol,
        _rol = rol;

  // "idrol" field.
  int? _idrol;
  int get idrol => _idrol ?? 0;
  set idrol(int? val) => _idrol = val;

  void incrementIdrol(int amount) => idrol = idrol + amount;

  bool hasIdrol() => _idrol != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  set rol(String? val) => _rol = val;

  bool hasRol() => _rol != null;

  static RolesStruct fromMap(Map<String, dynamic> data) => RolesStruct(
        idrol: castToType<int>(data['idrol']),
        rol: data['rol'] as String?,
      );

  static RolesStruct? maybeFromMap(dynamic data) =>
      data is Map ? RolesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idrol': _idrol,
        'rol': _rol,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idrol': serializeParam(
          _idrol,
          ParamType.int,
        ),
        'rol': serializeParam(
          _rol,
          ParamType.String,
        ),
      }.withoutNulls;

  static RolesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RolesStruct(
        idrol: deserializeParam(
          data['idrol'],
          ParamType.int,
          false,
        ),
        rol: deserializeParam(
          data['rol'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RolesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RolesStruct && idrol == other.idrol && rol == other.rol;
  }

  @override
  int get hashCode => const ListEquality().hash([idrol, rol]);
}

RolesStruct createRolesStruct({
  int? idrol,
  String? rol,
}) =>
    RolesStruct(
      idrol: idrol,
      rol: rol,
    );
