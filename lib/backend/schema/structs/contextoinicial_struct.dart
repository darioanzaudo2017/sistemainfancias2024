// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContextoinicialStruct extends BaseStruct {
  ContextoinicialStruct({
    UsuarioStruct? usuario,
    HomeKpisStruct? homeKpis,
  })  : _usuario = usuario,
        _homeKpis = homeKpis;

  // "usuario" field.
  UsuarioStruct? _usuario;
  UsuarioStruct get usuario => _usuario ?? UsuarioStruct();
  set usuario(UsuarioStruct? val) => _usuario = val;

  void updateUsuario(Function(UsuarioStruct) updateFn) {
    updateFn(_usuario ??= UsuarioStruct());
  }

  bool hasUsuario() => _usuario != null;

  // "home_kpis" field.
  HomeKpisStruct? _homeKpis;
  HomeKpisStruct get homeKpis => _homeKpis ?? HomeKpisStruct();
  set homeKpis(HomeKpisStruct? val) => _homeKpis = val;

  void updateHomeKpis(Function(HomeKpisStruct) updateFn) {
    updateFn(_homeKpis ??= HomeKpisStruct());
  }

  bool hasHomeKpis() => _homeKpis != null;

  static ContextoinicialStruct fromMap(Map<String, dynamic> data) =>
      ContextoinicialStruct(
        usuario: data['usuario'] is UsuarioStruct
            ? data['usuario']
            : UsuarioStruct.maybeFromMap(data['usuario']),
        homeKpis: data['home_kpis'] is HomeKpisStruct
            ? data['home_kpis']
            : HomeKpisStruct.maybeFromMap(data['home_kpis']),
      );

  static ContextoinicialStruct? maybeFromMap(dynamic data) => data is Map
      ? ContextoinicialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'usuario': _usuario?.toMap(),
        'home_kpis': _homeKpis?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usuario': serializeParam(
          _usuario,
          ParamType.DataStruct,
        ),
        'home_kpis': serializeParam(
          _homeKpis,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ContextoinicialStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContextoinicialStruct(
        usuario: deserializeStructParam(
          data['usuario'],
          ParamType.DataStruct,
          false,
          structBuilder: UsuarioStruct.fromSerializableMap,
        ),
        homeKpis: deserializeStructParam(
          data['home_kpis'],
          ParamType.DataStruct,
          false,
          structBuilder: HomeKpisStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ContextoinicialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContextoinicialStruct &&
        usuario == other.usuario &&
        homeKpis == other.homeKpis;
  }

  @override
  int get hashCode => const ListEquality().hash([usuario, homeKpis]);
}

ContextoinicialStruct createContextoinicialStruct({
  UsuarioStruct? usuario,
  HomeKpisStruct? homeKpis,
}) =>
    ContextoinicialStruct(
      usuario: usuario ?? UsuarioStruct(),
      homeKpis: homeKpis ?? HomeKpisStruct(),
    );
