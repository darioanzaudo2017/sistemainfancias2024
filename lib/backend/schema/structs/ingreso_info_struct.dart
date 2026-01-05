// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngresoInfoStruct extends BaseStruct {
  IngresoInfoStruct({
    int? id,
    String? createdAt,
    bool? form1,
    bool? ampliacion,
    bool? form3,
    bool? form4,
    bool? form5,
    bool? form7,
    bool? form8,
    bool? form9,
    int? idexpediente,
    String? fechacierre,
    String? motivocierre,
    String? observacioncierre,
    String? estado,
    String? emergencia,
    bool? carpetaDrive,
    bool? listadoimpresiones,
    String? idcarpeta,
    String? linkcarpeta,
  })  : _id = id,
        _createdAt = createdAt,
        _form1 = form1,
        _ampliacion = ampliacion,
        _form3 = form3,
        _form4 = form4,
        _form5 = form5,
        _form7 = form7,
        _form8 = form8,
        _form9 = form9,
        _idexpediente = idexpediente,
        _fechacierre = fechacierre,
        _motivocierre = motivocierre,
        _observacioncierre = observacioncierre,
        _estado = estado,
        _emergencia = emergencia,
        _carpetaDrive = carpetaDrive,
        _listadoimpresiones = listadoimpresiones,
        _idcarpeta = idcarpeta,
        _linkcarpeta = linkcarpeta;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "form1" field.
  bool? _form1;
  bool get form1 => _form1 ?? false;
  set form1(bool? val) => _form1 = val;

  bool hasForm1() => _form1 != null;

  // "Ampliacion" field.
  bool? _ampliacion;
  bool get ampliacion => _ampliacion ?? false;
  set ampliacion(bool? val) => _ampliacion = val;

  bool hasAmpliacion() => _ampliacion != null;

  // "Form3" field.
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

  // "Form7" field.
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

  // "idexpediente" field.
  int? _idexpediente;
  int get idexpediente => _idexpediente ?? 0;
  set idexpediente(int? val) => _idexpediente = val;

  void incrementIdexpediente(int amount) =>
      idexpediente = idexpediente + amount;

  bool hasIdexpediente() => _idexpediente != null;

  // "fechacierre" field.
  String? _fechacierre;
  String get fechacierre => _fechacierre ?? '';
  set fechacierre(String? val) => _fechacierre = val;

  bool hasFechacierre() => _fechacierre != null;

  // "Motivocierre" field.
  String? _motivocierre;
  String get motivocierre => _motivocierre ?? '';
  set motivocierre(String? val) => _motivocierre = val;

  bool hasMotivocierre() => _motivocierre != null;

  // "observacioncierre" field.
  String? _observacioncierre;
  String get observacioncierre => _observacioncierre ?? '';
  set observacioncierre(String? val) => _observacioncierre = val;

  bool hasObservacioncierre() => _observacioncierre != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "emergencia" field.
  String? _emergencia;
  String get emergencia => _emergencia ?? '';
  set emergencia(String? val) => _emergencia = val;

  bool hasEmergencia() => _emergencia != null;

  // "carpetaDrive" field.
  bool? _carpetaDrive;
  bool get carpetaDrive => _carpetaDrive ?? false;
  set carpetaDrive(bool? val) => _carpetaDrive = val;

  bool hasCarpetaDrive() => _carpetaDrive != null;

  // "listadoimpresiones" field.
  bool? _listadoimpresiones;
  bool get listadoimpresiones => _listadoimpresiones ?? false;
  set listadoimpresiones(bool? val) => _listadoimpresiones = val;

  bool hasListadoimpresiones() => _listadoimpresiones != null;

  // "idcarpeta" field.
  String? _idcarpeta;
  String get idcarpeta => _idcarpeta ?? '';
  set idcarpeta(String? val) => _idcarpeta = val;

  bool hasIdcarpeta() => _idcarpeta != null;

  // "linkcarpeta" field.
  String? _linkcarpeta;
  String get linkcarpeta => _linkcarpeta ?? '';
  set linkcarpeta(String? val) => _linkcarpeta = val;

  bool hasLinkcarpeta() => _linkcarpeta != null;

  static IngresoInfoStruct fromMap(Map<String, dynamic> data) =>
      IngresoInfoStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        form1: data['form1'] as bool?,
        ampliacion: data['Ampliacion'] as bool?,
        form3: data['Form3'] as bool?,
        form4: data['form4'] as bool?,
        form5: data['form5'] as bool?,
        form7: data['Form7'] as bool?,
        form8: data['form8'] as bool?,
        form9: data['form9'] as bool?,
        idexpediente: castToType<int>(data['idexpediente']),
        fechacierre: data['fechacierre'] as String?,
        motivocierre: data['Motivocierre'] as String?,
        observacioncierre: data['observacioncierre'] as String?,
        estado: data['Estado'] as String?,
        emergencia: data['emergencia'] as String?,
        carpetaDrive: data['carpetaDrive'] as bool?,
        listadoimpresiones: data['listadoimpresiones'] as bool?,
        idcarpeta: data['idcarpeta'] as String?,
        linkcarpeta: data['linkcarpeta'] as String?,
      );

  static IngresoInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? IngresoInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'form1': _form1,
        'Ampliacion': _ampliacion,
        'Form3': _form3,
        'form4': _form4,
        'form5': _form5,
        'Form7': _form7,
        'form8': _form8,
        'form9': _form9,
        'idexpediente': _idexpediente,
        'fechacierre': _fechacierre,
        'Motivocierre': _motivocierre,
        'observacioncierre': _observacioncierre,
        'Estado': _estado,
        'emergencia': _emergencia,
        'carpetaDrive': _carpetaDrive,
        'listadoimpresiones': _listadoimpresiones,
        'idcarpeta': _idcarpeta,
        'linkcarpeta': _linkcarpeta,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'form1': serializeParam(
          _form1,
          ParamType.bool,
        ),
        'Ampliacion': serializeParam(
          _ampliacion,
          ParamType.bool,
        ),
        'Form3': serializeParam(
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
        'Form7': serializeParam(
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
        'idexpediente': serializeParam(
          _idexpediente,
          ParamType.int,
        ),
        'fechacierre': serializeParam(
          _fechacierre,
          ParamType.String,
        ),
        'Motivocierre': serializeParam(
          _motivocierre,
          ParamType.String,
        ),
        'observacioncierre': serializeParam(
          _observacioncierre,
          ParamType.String,
        ),
        'Estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'emergencia': serializeParam(
          _emergencia,
          ParamType.String,
        ),
        'carpetaDrive': serializeParam(
          _carpetaDrive,
          ParamType.bool,
        ),
        'listadoimpresiones': serializeParam(
          _listadoimpresiones,
          ParamType.bool,
        ),
        'idcarpeta': serializeParam(
          _idcarpeta,
          ParamType.String,
        ),
        'linkcarpeta': serializeParam(
          _linkcarpeta,
          ParamType.String,
        ),
      }.withoutNulls;

  static IngresoInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngresoInfoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        form1: deserializeParam(
          data['form1'],
          ParamType.bool,
          false,
        ),
        ampliacion: deserializeParam(
          data['Ampliacion'],
          ParamType.bool,
          false,
        ),
        form3: deserializeParam(
          data['Form3'],
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
        form7: deserializeParam(
          data['Form7'],
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
        idexpediente: deserializeParam(
          data['idexpediente'],
          ParamType.int,
          false,
        ),
        fechacierre: deserializeParam(
          data['fechacierre'],
          ParamType.String,
          false,
        ),
        motivocierre: deserializeParam(
          data['Motivocierre'],
          ParamType.String,
          false,
        ),
        observacioncierre: deserializeParam(
          data['observacioncierre'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['Estado'],
          ParamType.String,
          false,
        ),
        emergencia: deserializeParam(
          data['emergencia'],
          ParamType.String,
          false,
        ),
        carpetaDrive: deserializeParam(
          data['carpetaDrive'],
          ParamType.bool,
          false,
        ),
        listadoimpresiones: deserializeParam(
          data['listadoimpresiones'],
          ParamType.bool,
          false,
        ),
        idcarpeta: deserializeParam(
          data['idcarpeta'],
          ParamType.String,
          false,
        ),
        linkcarpeta: deserializeParam(
          data['linkcarpeta'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IngresoInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngresoInfoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        form1 == other.form1 &&
        ampliacion == other.ampliacion &&
        form3 == other.form3 &&
        form4 == other.form4 &&
        form5 == other.form5 &&
        form7 == other.form7 &&
        form8 == other.form8 &&
        form9 == other.form9 &&
        idexpediente == other.idexpediente &&
        fechacierre == other.fechacierre &&
        motivocierre == other.motivocierre &&
        observacioncierre == other.observacioncierre &&
        estado == other.estado &&
        emergencia == other.emergencia &&
        carpetaDrive == other.carpetaDrive &&
        listadoimpresiones == other.listadoimpresiones &&
        idcarpeta == other.idcarpeta &&
        linkcarpeta == other.linkcarpeta;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        form1,
        ampliacion,
        form3,
        form4,
        form5,
        form7,
        form8,
        form9,
        idexpediente,
        fechacierre,
        motivocierre,
        observacioncierre,
        estado,
        emergencia,
        carpetaDrive,
        listadoimpresiones,
        idcarpeta,
        linkcarpeta
      ]);
}

IngresoInfoStruct createIngresoInfoStruct({
  int? id,
  String? createdAt,
  bool? form1,
  bool? ampliacion,
  bool? form3,
  bool? form4,
  bool? form5,
  bool? form7,
  bool? form8,
  bool? form9,
  int? idexpediente,
  String? fechacierre,
  String? motivocierre,
  String? observacioncierre,
  String? estado,
  String? emergencia,
  bool? carpetaDrive,
  bool? listadoimpresiones,
  String? idcarpeta,
  String? linkcarpeta,
}) =>
    IngresoInfoStruct(
      id: id,
      createdAt: createdAt,
      form1: form1,
      ampliacion: ampliacion,
      form3: form3,
      form4: form4,
      form5: form5,
      form7: form7,
      form8: form8,
      form9: form9,
      idexpediente: idexpediente,
      fechacierre: fechacierre,
      motivocierre: motivocierre,
      observacioncierre: observacioncierre,
      estado: estado,
      emergencia: emergencia,
      carpetaDrive: carpetaDrive,
      listadoimpresiones: listadoimpresiones,
      idcarpeta: idcarpeta,
      linkcarpeta: linkcarpeta,
    );
