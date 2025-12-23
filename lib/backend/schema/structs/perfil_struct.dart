// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerfilStruct extends BaseStruct {
  PerfilStruct({
    IngresoStruct? ingreso,
    List<GrupoConvivienteStruct>? grupoConviviente,
  })  : _ingreso = ingreso,
        _grupoConviviente = grupoConviviente;

  // "ingreso" field.
  IngresoStruct? _ingreso;
  IngresoStruct get ingreso => _ingreso ?? IngresoStruct();
  set ingreso(IngresoStruct? val) => _ingreso = val;

  void updateIngreso(Function(IngresoStruct) updateFn) {
    updateFn(_ingreso ??= IngresoStruct());
  }

  bool hasIngreso() => _ingreso != null;

  // "grupo_conviviente" field.
  List<GrupoConvivienteStruct>? _grupoConviviente;
  List<GrupoConvivienteStruct> get grupoConviviente =>
      _grupoConviviente ?? const [];
  set grupoConviviente(List<GrupoConvivienteStruct>? val) =>
      _grupoConviviente = val;

  void updateGrupoConviviente(Function(List<GrupoConvivienteStruct>) updateFn) {
    updateFn(_grupoConviviente ??= []);
  }

  bool hasGrupoConviviente() => _grupoConviviente != null;

  static PerfilStruct fromMap(Map<String, dynamic> data) => PerfilStruct(
        ingreso: data['ingreso'] is IngresoStruct
            ? data['ingreso']
            : IngresoStruct.maybeFromMap(data['ingreso']),
        grupoConviviente: getStructList(
          data['grupo_conviviente'],
          GrupoConvivienteStruct.fromMap,
        ),
      );

  static PerfilStruct? maybeFromMap(dynamic data) =>
      data is Map ? PerfilStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ingreso': _ingreso?.toMap(),
        'grupo_conviviente': _grupoConviviente?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ingreso': serializeParam(
          _ingreso,
          ParamType.DataStruct,
        ),
        'grupo_conviviente': serializeParam(
          _grupoConviviente,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PerfilStruct fromSerializableMap(Map<String, dynamic> data) =>
      PerfilStruct(
        ingreso: deserializeStructParam(
          data['ingreso'],
          ParamType.DataStruct,
          false,
          structBuilder: IngresoStruct.fromSerializableMap,
        ),
        grupoConviviente: deserializeStructParam<GrupoConvivienteStruct>(
          data['grupo_conviviente'],
          ParamType.DataStruct,
          true,
          structBuilder: GrupoConvivienteStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PerfilStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PerfilStruct &&
        ingreso == other.ingreso &&
        listEquality.equals(grupoConviviente, other.grupoConviviente);
  }

  @override
  int get hashCode => const ListEquality().hash([ingreso, grupoConviviente]);
}

PerfilStruct createPerfilStruct({
  IngresoStruct? ingreso,
}) =>
    PerfilStruct(
      ingreso: ingreso ?? IngresoStruct(),
    );
