// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngresoDtoStruct extends BaseStruct {
  IngresoDtoStruct({
    int? id,
    String? estado,
    String? fechaCierre,
    String? motivoCierre,
    String? observacionCierre,
    bool? form5Completo,
    bool? form6Completo,
    bool? form9Completo,
  })  : _id = id,
        _estado = estado,
        _fechaCierre = fechaCierre,
        _motivoCierre = motivoCierre,
        _observacionCierre = observacionCierre,
        _form5Completo = form5Completo,
        _form6Completo = form6Completo,
        _form9Completo = form9Completo;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "fecha_cierre" field.
  String? _fechaCierre;
  String get fechaCierre => _fechaCierre ?? '';
  set fechaCierre(String? val) => _fechaCierre = val;

  bool hasFechaCierre() => _fechaCierre != null;

  // "motivo_cierre" field.
  String? _motivoCierre;
  String get motivoCierre => _motivoCierre ?? '';
  set motivoCierre(String? val) => _motivoCierre = val;

  bool hasMotivoCierre() => _motivoCierre != null;

  // "observacion_cierre" field.
  String? _observacionCierre;
  String get observacionCierre => _observacionCierre ?? '';
  set observacionCierre(String? val) => _observacionCierre = val;

  bool hasObservacionCierre() => _observacionCierre != null;

  // "form5_completo" field.
  bool? _form5Completo;
  bool get form5Completo => _form5Completo ?? false;
  set form5Completo(bool? val) => _form5Completo = val;

  bool hasForm5Completo() => _form5Completo != null;

  // "form6_completo" field.
  bool? _form6Completo;
  bool get form6Completo => _form6Completo ?? false;
  set form6Completo(bool? val) => _form6Completo = val;

  bool hasForm6Completo() => _form6Completo != null;

  // "form9_completo" field.
  bool? _form9Completo;
  bool get form9Completo => _form9Completo ?? false;
  set form9Completo(bool? val) => _form9Completo = val;

  bool hasForm9Completo() => _form9Completo != null;

  static IngresoDtoStruct fromMap(Map<String, dynamic> data) =>
      IngresoDtoStruct(
        id: castToType<int>(data['id']),
        estado: data['estado'] as String?,
        fechaCierre: data['fecha_cierre'] as String?,
        motivoCierre: data['motivo_cierre'] as String?,
        observacionCierre: data['observacion_cierre'] as String?,
        form5Completo: data['form5_completo'] as bool?,
        form6Completo: data['form6_completo'] as bool?,
        form9Completo: data['form9_completo'] as bool?,
      );

  static IngresoDtoStruct? maybeFromMap(dynamic data) => data is Map
      ? IngresoDtoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'estado': _estado,
        'fecha_cierre': _fechaCierre,
        'motivo_cierre': _motivoCierre,
        'observacion_cierre': _observacionCierre,
        'form5_completo': _form5Completo,
        'form6_completo': _form6Completo,
        'form9_completo': _form9Completo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'fecha_cierre': serializeParam(
          _fechaCierre,
          ParamType.String,
        ),
        'motivo_cierre': serializeParam(
          _motivoCierre,
          ParamType.String,
        ),
        'observacion_cierre': serializeParam(
          _observacionCierre,
          ParamType.String,
        ),
        'form5_completo': serializeParam(
          _form5Completo,
          ParamType.bool,
        ),
        'form6_completo': serializeParam(
          _form6Completo,
          ParamType.bool,
        ),
        'form9_completo': serializeParam(
          _form9Completo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static IngresoDtoStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngresoDtoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        fechaCierre: deserializeParam(
          data['fecha_cierre'],
          ParamType.String,
          false,
        ),
        motivoCierre: deserializeParam(
          data['motivo_cierre'],
          ParamType.String,
          false,
        ),
        observacionCierre: deserializeParam(
          data['observacion_cierre'],
          ParamType.String,
          false,
        ),
        form5Completo: deserializeParam(
          data['form5_completo'],
          ParamType.bool,
          false,
        ),
        form6Completo: deserializeParam(
          data['form6_completo'],
          ParamType.bool,
          false,
        ),
        form9Completo: deserializeParam(
          data['form9_completo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'IngresoDtoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngresoDtoStruct &&
        id == other.id &&
        estado == other.estado &&
        fechaCierre == other.fechaCierre &&
        motivoCierre == other.motivoCierre &&
        observacionCierre == other.observacionCierre &&
        form5Completo == other.form5Completo &&
        form6Completo == other.form6Completo &&
        form9Completo == other.form9Completo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        estado,
        fechaCierre,
        motivoCierre,
        observacionCierre,
        form5Completo,
        form6Completo,
        form9Completo
      ]);
}

IngresoDtoStruct createIngresoDtoStruct({
  int? id,
  String? estado,
  String? fechaCierre,
  String? motivoCierre,
  String? observacionCierre,
  bool? form5Completo,
  bool? form6Completo,
  bool? form9Completo,
}) =>
    IngresoDtoStruct(
      id: id,
      estado: estado,
      fechaCierre: fechaCierre,
      motivoCierre: motivoCierre,
      observacionCierre: observacionCierre,
      form5Completo: form5Completo,
      form6Completo: form6Completo,
      form9Completo: form9Completo,
    );
