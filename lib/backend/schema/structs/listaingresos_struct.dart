// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaingresosStruct extends BaseStruct {
  ListaingresosStruct({
    int? id,
    bool? form1,
    bool? form3,
    bool? form4,
    bool? form5,
    bool? form6,
    bool? form7,
    bool? form8,
    bool? form9,
    String? estado,
    String? createdAt,
    String? updatedAt,
    String? diasCierre,
    String? fechacierre,
    String? motivocierre,
    bool? form1completo,
    bool? form3completo,
    bool? form4completo,
    bool? form5completo,
    bool? form6completo,
    bool? form7completo,
    bool? form8completo,
    bool? form9completo,
    int? diasUltimaActualizacion,
  })  : _id = id,
        _form1 = form1,
        _form3 = form3,
        _form4 = form4,
        _form5 = form5,
        _form6 = form6,
        _form7 = form7,
        _form8 = form8,
        _form9 = form9,
        _estado = estado,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _diasCierre = diasCierre,
        _fechacierre = fechacierre,
        _motivocierre = motivocierre,
        _form1completo = form1completo,
        _form3completo = form3completo,
        _form4completo = form4completo,
        _form5completo = form5completo,
        _form6completo = form6completo,
        _form7completo = form7completo,
        _form8completo = form8completo,
        _form9completo = form9completo,
        _diasUltimaActualizacion = diasUltimaActualizacion;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "form1" field.
  bool? _form1;
  bool get form1 => _form1 ?? false;
  set form1(bool? val) => _form1 = val;

  bool hasForm1() => _form1 != null;

  // "form3" field.
  bool? _form3;
  bool get form3 => _form3 ?? false;
  set form3(bool? val) => _form3 = val;

  bool hasForm3() => _form3 != null;

  // "form4" field.
  bool? _form4;
  bool get form4 => _form4 ?? false;
  set form4(bool? val) => _form4 = val;

  bool hasForm4() => _form4 != null;

  // "form5" field.
  bool? _form5;
  bool get form5 => _form5 ?? false;
  set form5(bool? val) => _form5 = val;

  bool hasForm5() => _form5 != null;

  // "form6" field.
  bool? _form6;
  bool get form6 => _form6 ?? false;
  set form6(bool? val) => _form6 = val;

  bool hasForm6() => _form6 != null;

  // "form7" field.
  bool? _form7;
  bool get form7 => _form7 ?? false;
  set form7(bool? val) => _form7 = val;

  bool hasForm7() => _form7 != null;

  // "form8" field.
  bool? _form8;
  bool get form8 => _form8 ?? false;
  set form8(bool? val) => _form8 = val;

  bool hasForm8() => _form8 != null;

  // "form9" field.
  bool? _form9;
  bool get form9 => _form9 ?? false;
  set form9(bool? val) => _form9 = val;

  bool hasForm9() => _form9 != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "dias_cierre" field.
  String? _diasCierre;
  String get diasCierre => _diasCierre ?? '';
  set diasCierre(String? val) => _diasCierre = val;

  bool hasDiasCierre() => _diasCierre != null;

  // "fechacierre" field.
  String? _fechacierre;
  String get fechacierre => _fechacierre ?? '';
  set fechacierre(String? val) => _fechacierre = val;

  bool hasFechacierre() => _fechacierre != null;

  // "motivocierre" field.
  String? _motivocierre;
  String get motivocierre => _motivocierre ?? '';
  set motivocierre(String? val) => _motivocierre = val;

  bool hasMotivocierre() => _motivocierre != null;

  // "form1completo" field.
  bool? _form1completo;
  bool get form1completo => _form1completo ?? false;
  set form1completo(bool? val) => _form1completo = val;

  bool hasForm1completo() => _form1completo != null;

  // "form3completo" field.
  bool? _form3completo;
  bool get form3completo => _form3completo ?? false;
  set form3completo(bool? val) => _form3completo = val;

  bool hasForm3completo() => _form3completo != null;

  // "form4completo" field.
  bool? _form4completo;
  bool get form4completo => _form4completo ?? false;
  set form4completo(bool? val) => _form4completo = val;

  bool hasForm4completo() => _form4completo != null;

  // "form5completo" field.
  bool? _form5completo;
  bool get form5completo => _form5completo ?? false;
  set form5completo(bool? val) => _form5completo = val;

  bool hasForm5completo() => _form5completo != null;

  // "form6completo" field.
  bool? _form6completo;
  bool get form6completo => _form6completo ?? false;
  set form6completo(bool? val) => _form6completo = val;

  bool hasForm6completo() => _form6completo != null;

  // "form7completo" field.
  bool? _form7completo;
  bool get form7completo => _form7completo ?? false;
  set form7completo(bool? val) => _form7completo = val;

  bool hasForm7completo() => _form7completo != null;

  // "form8completo" field.
  bool? _form8completo;
  bool get form8completo => _form8completo ?? false;
  set form8completo(bool? val) => _form8completo = val;

  bool hasForm8completo() => _form8completo != null;

  // "form9completo" field.
  bool? _form9completo;
  bool get form9completo => _form9completo ?? false;
  set form9completo(bool? val) => _form9completo = val;

  bool hasForm9completo() => _form9completo != null;

  // "dias_ultima_actualizacion" field.
  int? _diasUltimaActualizacion;
  int get diasUltimaActualizacion => _diasUltimaActualizacion ?? 0;
  set diasUltimaActualizacion(int? val) => _diasUltimaActualizacion = val;

  void incrementDiasUltimaActualizacion(int amount) =>
      diasUltimaActualizacion = diasUltimaActualizacion + amount;

  bool hasDiasUltimaActualizacion() => _diasUltimaActualizacion != null;

  static ListaingresosStruct fromMap(Map<String, dynamic> data) =>
      ListaingresosStruct(
        id: castToType<int>(data['id']),
        form1: data['form1'] as bool?,
        form3: data['form3'] as bool?,
        form4: data['form4'] as bool?,
        form5: data['form5'] as bool?,
        form6: data['form6'] as bool?,
        form7: data['form7'] as bool?,
        form8: data['form8'] as bool?,
        form9: data['form9'] as bool?,
        estado: data['estado'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        diasCierre: data['dias_cierre'] as String?,
        fechacierre: data['fechacierre'] as String?,
        motivocierre: data['motivocierre'] as String?,
        form1completo: data['form1completo'] as bool?,
        form3completo: data['form3completo'] as bool?,
        form4completo: data['form4completo'] as bool?,
        form5completo: data['form5completo'] as bool?,
        form6completo: data['form6completo'] as bool?,
        form7completo: data['form7completo'] as bool?,
        form8completo: data['form8completo'] as bool?,
        form9completo: data['form9completo'] as bool?,
        diasUltimaActualizacion:
            castToType<int>(data['dias_ultima_actualizacion']),
      );

  static ListaingresosStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaingresosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'form1': _form1,
        'form3': _form3,
        'form4': _form4,
        'form5': _form5,
        'form6': _form6,
        'form7': _form7,
        'form8': _form8,
        'form9': _form9,
        'estado': _estado,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'dias_cierre': _diasCierre,
        'fechacierre': _fechacierre,
        'motivocierre': _motivocierre,
        'form1completo': _form1completo,
        'form3completo': _form3completo,
        'form4completo': _form4completo,
        'form5completo': _form5completo,
        'form6completo': _form6completo,
        'form7completo': _form7completo,
        'form8completo': _form8completo,
        'form9completo': _form9completo,
        'dias_ultima_actualizacion': _diasUltimaActualizacion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'form1': serializeParam(
          _form1,
          ParamType.bool,
        ),
        'form3': serializeParam(
          _form3,
          ParamType.bool,
        ),
        'form4': serializeParam(
          _form4,
          ParamType.bool,
        ),
        'form5': serializeParam(
          _form5,
          ParamType.bool,
        ),
        'form6': serializeParam(
          _form6,
          ParamType.bool,
        ),
        'form7': serializeParam(
          _form7,
          ParamType.bool,
        ),
        'form8': serializeParam(
          _form8,
          ParamType.bool,
        ),
        'form9': serializeParam(
          _form9,
          ParamType.bool,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'dias_cierre': serializeParam(
          _diasCierre,
          ParamType.String,
        ),
        'fechacierre': serializeParam(
          _fechacierre,
          ParamType.String,
        ),
        'motivocierre': serializeParam(
          _motivocierre,
          ParamType.String,
        ),
        'form1completo': serializeParam(
          _form1completo,
          ParamType.bool,
        ),
        'form3completo': serializeParam(
          _form3completo,
          ParamType.bool,
        ),
        'form4completo': serializeParam(
          _form4completo,
          ParamType.bool,
        ),
        'form5completo': serializeParam(
          _form5completo,
          ParamType.bool,
        ),
        'form6completo': serializeParam(
          _form6completo,
          ParamType.bool,
        ),
        'form7completo': serializeParam(
          _form7completo,
          ParamType.bool,
        ),
        'form8completo': serializeParam(
          _form8completo,
          ParamType.bool,
        ),
        'form9completo': serializeParam(
          _form9completo,
          ParamType.bool,
        ),
        'dias_ultima_actualizacion': serializeParam(
          _diasUltimaActualizacion,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListaingresosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListaingresosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        form1: deserializeParam(
          data['form1'],
          ParamType.bool,
          false,
        ),
        form3: deserializeParam(
          data['form3'],
          ParamType.bool,
          false,
        ),
        form4: deserializeParam(
          data['form4'],
          ParamType.bool,
          false,
        ),
        form5: deserializeParam(
          data['form5'],
          ParamType.bool,
          false,
        ),
        form6: deserializeParam(
          data['form6'],
          ParamType.bool,
          false,
        ),
        form7: deserializeParam(
          data['form7'],
          ParamType.bool,
          false,
        ),
        form8: deserializeParam(
          data['form8'],
          ParamType.bool,
          false,
        ),
        form9: deserializeParam(
          data['form9'],
          ParamType.bool,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        diasCierre: deserializeParam(
          data['dias_cierre'],
          ParamType.String,
          false,
        ),
        fechacierre: deserializeParam(
          data['fechacierre'],
          ParamType.String,
          false,
        ),
        motivocierre: deserializeParam(
          data['motivocierre'],
          ParamType.String,
          false,
        ),
        form1completo: deserializeParam(
          data['form1completo'],
          ParamType.bool,
          false,
        ),
        form3completo: deserializeParam(
          data['form3completo'],
          ParamType.bool,
          false,
        ),
        form4completo: deserializeParam(
          data['form4completo'],
          ParamType.bool,
          false,
        ),
        form5completo: deserializeParam(
          data['form5completo'],
          ParamType.bool,
          false,
        ),
        form6completo: deserializeParam(
          data['form6completo'],
          ParamType.bool,
          false,
        ),
        form7completo: deserializeParam(
          data['form7completo'],
          ParamType.bool,
          false,
        ),
        form8completo: deserializeParam(
          data['form8completo'],
          ParamType.bool,
          false,
        ),
        form9completo: deserializeParam(
          data['form9completo'],
          ParamType.bool,
          false,
        ),
        diasUltimaActualizacion: deserializeParam(
          data['dias_ultima_actualizacion'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListaingresosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaingresosStruct &&
        id == other.id &&
        form1 == other.form1 &&
        form3 == other.form3 &&
        form4 == other.form4 &&
        form5 == other.form5 &&
        form6 == other.form6 &&
        form7 == other.form7 &&
        form8 == other.form8 &&
        form9 == other.form9 &&
        estado == other.estado &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        diasCierre == other.diasCierre &&
        fechacierre == other.fechacierre &&
        motivocierre == other.motivocierre &&
        form1completo == other.form1completo &&
        form3completo == other.form3completo &&
        form4completo == other.form4completo &&
        form5completo == other.form5completo &&
        form6completo == other.form6completo &&
        form7completo == other.form7completo &&
        form8completo == other.form8completo &&
        form9completo == other.form9completo &&
        diasUltimaActualizacion == other.diasUltimaActualizacion;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        form1,
        form3,
        form4,
        form5,
        form6,
        form7,
        form8,
        form9,
        estado,
        createdAt,
        updatedAt,
        diasCierre,
        fechacierre,
        motivocierre,
        form1completo,
        form3completo,
        form4completo,
        form5completo,
        form6completo,
        form7completo,
        form8completo,
        form9completo,
        diasUltimaActualizacion
      ]);
}

ListaingresosStruct createListaingresosStruct({
  int? id,
  bool? form1,
  bool? form3,
  bool? form4,
  bool? form5,
  bool? form6,
  bool? form7,
  bool? form8,
  bool? form9,
  String? estado,
  String? createdAt,
  String? updatedAt,
  String? diasCierre,
  String? fechacierre,
  String? motivocierre,
  bool? form1completo,
  bool? form3completo,
  bool? form4completo,
  bool? form5completo,
  bool? form6completo,
  bool? form7completo,
  bool? form8completo,
  bool? form9completo,
  int? diasUltimaActualizacion,
}) =>
    ListaingresosStruct(
      id: id,
      form1: form1,
      form3: form3,
      form4: form4,
      form5: form5,
      form6: form6,
      form7: form7,
      form8: form8,
      form9: form9,
      estado: estado,
      createdAt: createdAt,
      updatedAt: updatedAt,
      diasCierre: diasCierre,
      fechacierre: fechacierre,
      motivocierre: motivocierre,
      form1completo: form1completo,
      form3completo: form3completo,
      form4completo: form4completo,
      form5completo: form5completo,
      form6completo: form6completo,
      form7completo: form7completo,
      form8completo: form8completo,
      form9completo: form9completo,
      diasUltimaActualizacion: diasUltimaActualizacion,
    );
