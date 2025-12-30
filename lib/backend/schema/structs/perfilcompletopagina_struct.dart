// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerfilcompletopaginaStruct extends BaseStruct {
  PerfilcompletopaginaStruct({
    PerfilIngresoStruct? perfilIngreso,
    PerfilExpedienteStruct? perfilExpediente,
    PerfilEstadoExpedienteStruct? perfilEstadoExpediente,
    List<PerfilGrupoConvivienteStruct>? perfilGrupoConviviente,
    String? perfilAnexoA,
    PerfilSeccionesStruct? perfilSecciones,
    bool? perfilPuedeAvanzar,
  })  : _perfilIngreso = perfilIngreso,
        _perfilExpediente = perfilExpediente,
        _perfilEstadoExpediente = perfilEstadoExpediente,
        _perfilGrupoConviviente = perfilGrupoConviviente,
        _perfilAnexoA = perfilAnexoA,
        _perfilSecciones = perfilSecciones,
        _perfilPuedeAvanzar = perfilPuedeAvanzar;

  // "perfilIngreso" field.
  PerfilIngresoStruct? _perfilIngreso;
  PerfilIngresoStruct get perfilIngreso =>
      _perfilIngreso ?? PerfilIngresoStruct();
  set perfilIngreso(PerfilIngresoStruct? val) => _perfilIngreso = val;

  void updatePerfilIngreso(Function(PerfilIngresoStruct) updateFn) {
    updateFn(_perfilIngreso ??= PerfilIngresoStruct());
  }

  bool hasPerfilIngreso() => _perfilIngreso != null;

  // "perfilExpediente" field.
  PerfilExpedienteStruct? _perfilExpediente;
  PerfilExpedienteStruct get perfilExpediente =>
      _perfilExpediente ?? PerfilExpedienteStruct();
  set perfilExpediente(PerfilExpedienteStruct? val) => _perfilExpediente = val;

  void updatePerfilExpediente(Function(PerfilExpedienteStruct) updateFn) {
    updateFn(_perfilExpediente ??= PerfilExpedienteStruct());
  }

  bool hasPerfilExpediente() => _perfilExpediente != null;

  // "perfilEstadoExpediente" field.
  PerfilEstadoExpedienteStruct? _perfilEstadoExpediente;
  PerfilEstadoExpedienteStruct get perfilEstadoExpediente =>
      _perfilEstadoExpediente ?? PerfilEstadoExpedienteStruct();
  set perfilEstadoExpediente(PerfilEstadoExpedienteStruct? val) =>
      _perfilEstadoExpediente = val;

  void updatePerfilEstadoExpediente(
      Function(PerfilEstadoExpedienteStruct) updateFn) {
    updateFn(_perfilEstadoExpediente ??= PerfilEstadoExpedienteStruct());
  }

  bool hasPerfilEstadoExpediente() => _perfilEstadoExpediente != null;

  // "perfilGrupoConviviente" field.
  List<PerfilGrupoConvivienteStruct>? _perfilGrupoConviviente;
  List<PerfilGrupoConvivienteStruct> get perfilGrupoConviviente =>
      _perfilGrupoConviviente ?? const [];
  set perfilGrupoConviviente(List<PerfilGrupoConvivienteStruct>? val) =>
      _perfilGrupoConviviente = val;

  void updatePerfilGrupoConviviente(
      Function(List<PerfilGrupoConvivienteStruct>) updateFn) {
    updateFn(_perfilGrupoConviviente ??= []);
  }

  bool hasPerfilGrupoConviviente() => _perfilGrupoConviviente != null;

  // "perfilAnexoA" field.
  String? _perfilAnexoA;
  String get perfilAnexoA => _perfilAnexoA ?? '';
  set perfilAnexoA(String? val) => _perfilAnexoA = val;

  bool hasPerfilAnexoA() => _perfilAnexoA != null;

  // "perfilSecciones" field.
  PerfilSeccionesStruct? _perfilSecciones;
  PerfilSeccionesStruct get perfilSecciones =>
      _perfilSecciones ?? PerfilSeccionesStruct();
  set perfilSecciones(PerfilSeccionesStruct? val) => _perfilSecciones = val;

  void updatePerfilSecciones(Function(PerfilSeccionesStruct) updateFn) {
    updateFn(_perfilSecciones ??= PerfilSeccionesStruct());
  }

  bool hasPerfilSecciones() => _perfilSecciones != null;

  // "perfilPuedeAvanzar" field.
  bool? _perfilPuedeAvanzar;
  bool get perfilPuedeAvanzar => _perfilPuedeAvanzar ?? false;
  set perfilPuedeAvanzar(bool? val) => _perfilPuedeAvanzar = val;

  bool hasPerfilPuedeAvanzar() => _perfilPuedeAvanzar != null;

  static PerfilcompletopaginaStruct fromMap(Map<String, dynamic> data) =>
      PerfilcompletopaginaStruct(
        perfilIngreso: data['perfilIngreso'] is PerfilIngresoStruct
            ? data['perfilIngreso']
            : PerfilIngresoStruct.maybeFromMap(data['perfilIngreso']),
        perfilExpediente: data['perfilExpediente'] is PerfilExpedienteStruct
            ? data['perfilExpediente']
            : PerfilExpedienteStruct.maybeFromMap(data['perfilExpediente']),
        perfilEstadoExpediente:
            data['perfilEstadoExpediente'] is PerfilEstadoExpedienteStruct
                ? data['perfilEstadoExpediente']
                : PerfilEstadoExpedienteStruct.maybeFromMap(
                    data['perfilEstadoExpediente']),
        perfilGrupoConviviente: getStructList(
          data['perfilGrupoConviviente'],
          PerfilGrupoConvivienteStruct.fromMap,
        ),
        perfilAnexoA: data['perfilAnexoA'] as String?,
        perfilSecciones: data['perfilSecciones'] is PerfilSeccionesStruct
            ? data['perfilSecciones']
            : PerfilSeccionesStruct.maybeFromMap(data['perfilSecciones']),
        perfilPuedeAvanzar: data['perfilPuedeAvanzar'] as bool?,
      );

  static PerfilcompletopaginaStruct? maybeFromMap(dynamic data) => data is Map
      ? PerfilcompletopaginaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'perfilIngreso': _perfilIngreso?.toMap(),
        'perfilExpediente': _perfilExpediente?.toMap(),
        'perfilEstadoExpediente': _perfilEstadoExpediente?.toMap(),
        'perfilGrupoConviviente':
            _perfilGrupoConviviente?.map((e) => e.toMap()).toList(),
        'perfilAnexoA': _perfilAnexoA,
        'perfilSecciones': _perfilSecciones?.toMap(),
        'perfilPuedeAvanzar': _perfilPuedeAvanzar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'perfilIngreso': serializeParam(
          _perfilIngreso,
          ParamType.DataStruct,
        ),
        'perfilExpediente': serializeParam(
          _perfilExpediente,
          ParamType.DataStruct,
        ),
        'perfilEstadoExpediente': serializeParam(
          _perfilEstadoExpediente,
          ParamType.DataStruct,
        ),
        'perfilGrupoConviviente': serializeParam(
          _perfilGrupoConviviente,
          ParamType.DataStruct,
          isList: true,
        ),
        'perfilAnexoA': serializeParam(
          _perfilAnexoA,
          ParamType.String,
        ),
        'perfilSecciones': serializeParam(
          _perfilSecciones,
          ParamType.DataStruct,
        ),
        'perfilPuedeAvanzar': serializeParam(
          _perfilPuedeAvanzar,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PerfilcompletopaginaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PerfilcompletopaginaStruct(
        perfilIngreso: deserializeStructParam(
          data['perfilIngreso'],
          ParamType.DataStruct,
          false,
          structBuilder: PerfilIngresoStruct.fromSerializableMap,
        ),
        perfilExpediente: deserializeStructParam(
          data['perfilExpediente'],
          ParamType.DataStruct,
          false,
          structBuilder: PerfilExpedienteStruct.fromSerializableMap,
        ),
        perfilEstadoExpediente: deserializeStructParam(
          data['perfilEstadoExpediente'],
          ParamType.DataStruct,
          false,
          structBuilder: PerfilEstadoExpedienteStruct.fromSerializableMap,
        ),
        perfilGrupoConviviente:
            deserializeStructParam<PerfilGrupoConvivienteStruct>(
          data['perfilGrupoConviviente'],
          ParamType.DataStruct,
          true,
          structBuilder: PerfilGrupoConvivienteStruct.fromSerializableMap,
        ),
        perfilAnexoA: deserializeParam(
          data['perfilAnexoA'],
          ParamType.String,
          false,
        ),
        perfilSecciones: deserializeStructParam(
          data['perfilSecciones'],
          ParamType.DataStruct,
          false,
          structBuilder: PerfilSeccionesStruct.fromSerializableMap,
        ),
        perfilPuedeAvanzar: deserializeParam(
          data['perfilPuedeAvanzar'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PerfilcompletopaginaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PerfilcompletopaginaStruct &&
        perfilIngreso == other.perfilIngreso &&
        perfilExpediente == other.perfilExpediente &&
        perfilEstadoExpediente == other.perfilEstadoExpediente &&
        listEquality.equals(
            perfilGrupoConviviente, other.perfilGrupoConviviente) &&
        perfilAnexoA == other.perfilAnexoA &&
        perfilSecciones == other.perfilSecciones &&
        perfilPuedeAvanzar == other.perfilPuedeAvanzar;
  }

  @override
  int get hashCode => const ListEquality().hash([
        perfilIngreso,
        perfilExpediente,
        perfilEstadoExpediente,
        perfilGrupoConviviente,
        perfilAnexoA,
        perfilSecciones,
        perfilPuedeAvanzar
      ]);
}

PerfilcompletopaginaStruct createPerfilcompletopaginaStruct({
  PerfilIngresoStruct? perfilIngreso,
  PerfilExpedienteStruct? perfilExpediente,
  PerfilEstadoExpedienteStruct? perfilEstadoExpediente,
  String? perfilAnexoA,
  PerfilSeccionesStruct? perfilSecciones,
  bool? perfilPuedeAvanzar,
}) =>
    PerfilcompletopaginaStruct(
      perfilIngreso: perfilIngreso ?? PerfilIngresoStruct(),
      perfilExpediente: perfilExpediente ?? PerfilExpedienteStruct(),
      perfilEstadoExpediente:
          perfilEstadoExpediente ?? PerfilEstadoExpedienteStruct(),
      perfilAnexoA: perfilAnexoA,
      perfilSecciones: perfilSecciones ?? PerfilSeccionesStruct(),
      perfilPuedeAvanzar: perfilPuedeAvanzar,
    );
