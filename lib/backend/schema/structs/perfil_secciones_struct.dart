// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerfilSeccionesStruct extends BaseStruct {
  PerfilSeccionesStruct({
    Seccion1Struct? seccion1,
    Seccion2Struct? seccion2,
    Seccion9Struct? seccion9,
  })  : _seccion1 = seccion1,
        _seccion2 = seccion2,
        _seccion9 = seccion9;

  // "seccion1" field.
  Seccion1Struct? _seccion1;
  Seccion1Struct get seccion1 => _seccion1 ?? Seccion1Struct();
  set seccion1(Seccion1Struct? val) => _seccion1 = val;

  void updateSeccion1(Function(Seccion1Struct) updateFn) {
    updateFn(_seccion1 ??= Seccion1Struct());
  }

  bool hasSeccion1() => _seccion1 != null;

  // "seccion2" field.
  Seccion2Struct? _seccion2;
  Seccion2Struct get seccion2 => _seccion2 ?? Seccion2Struct();
  set seccion2(Seccion2Struct? val) => _seccion2 = val;

  void updateSeccion2(Function(Seccion2Struct) updateFn) {
    updateFn(_seccion2 ??= Seccion2Struct());
  }

  bool hasSeccion2() => _seccion2 != null;

  // "seccion9" field.
  Seccion9Struct? _seccion9;
  Seccion9Struct get seccion9 => _seccion9 ?? Seccion9Struct();
  set seccion9(Seccion9Struct? val) => _seccion9 = val;

  void updateSeccion9(Function(Seccion9Struct) updateFn) {
    updateFn(_seccion9 ??= Seccion9Struct());
  }

  bool hasSeccion9() => _seccion9 != null;

  static PerfilSeccionesStruct fromMap(Map<String, dynamic> data) =>
      PerfilSeccionesStruct(
        seccion1: data['seccion1'] is Seccion1Struct
            ? data['seccion1']
            : Seccion1Struct.maybeFromMap(data['seccion1']),
        seccion2: data['seccion2'] is Seccion2Struct
            ? data['seccion2']
            : Seccion2Struct.maybeFromMap(data['seccion2']),
        seccion9: data['seccion9'] is Seccion9Struct
            ? data['seccion9']
            : Seccion9Struct.maybeFromMap(data['seccion9']),
      );

  static PerfilSeccionesStruct? maybeFromMap(dynamic data) => data is Map
      ? PerfilSeccionesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'seccion1': _seccion1?.toMap(),
        'seccion2': _seccion2?.toMap(),
        'seccion9': _seccion9?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'seccion1': serializeParam(
          _seccion1,
          ParamType.DataStruct,
        ),
        'seccion2': serializeParam(
          _seccion2,
          ParamType.DataStruct,
        ),
        'seccion9': serializeParam(
          _seccion9,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PerfilSeccionesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PerfilSeccionesStruct(
        seccion1: deserializeStructParam(
          data['seccion1'],
          ParamType.DataStruct,
          false,
          structBuilder: Seccion1Struct.fromSerializableMap,
        ),
        seccion2: deserializeStructParam(
          data['seccion2'],
          ParamType.DataStruct,
          false,
          structBuilder: Seccion2Struct.fromSerializableMap,
        ),
        seccion9: deserializeStructParam(
          data['seccion9'],
          ParamType.DataStruct,
          false,
          structBuilder: Seccion9Struct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PerfilSeccionesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PerfilSeccionesStruct &&
        seccion1 == other.seccion1 &&
        seccion2 == other.seccion2 &&
        seccion9 == other.seccion9;
  }

  @override
  int get hashCode => const ListEquality().hash([seccion1, seccion2, seccion9]);
}

PerfilSeccionesStruct createPerfilSeccionesStruct({
  Seccion1Struct? seccion1,
  Seccion2Struct? seccion2,
  Seccion9Struct? seccion9,
}) =>
    PerfilSeccionesStruct(
      seccion1: seccion1 ?? Seccion1Struct(),
      seccion2: seccion2 ?? Seccion2Struct(),
      seccion9: seccion9 ?? Seccion9Struct(),
    );
