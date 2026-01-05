// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedidasForm6Struct extends BaseStruct {
  MedidasForm6Struct({
    Form6RowStruct? form6Row,
    List<RespuestasForm6Struct>? respuestasForm6,
    List<ActasIngresoStruct>? actasIngreso,
  })  : _form6Row = form6Row,
        _respuestasForm6 = respuestasForm6,
        _actasIngreso = actasIngreso;

  // "form6_row" field.
  Form6RowStruct? _form6Row;
  Form6RowStruct get form6Row => _form6Row ?? Form6RowStruct();
  set form6Row(Form6RowStruct? val) => _form6Row = val;

  void updateForm6Row(Function(Form6RowStruct) updateFn) {
    updateFn(_form6Row ??= Form6RowStruct());
  }

  bool hasForm6Row() => _form6Row != null;

  // "respuestas_form6" field.
  List<RespuestasForm6Struct>? _respuestasForm6;
  List<RespuestasForm6Struct> get respuestasForm6 =>
      _respuestasForm6 ?? const [];
  set respuestasForm6(List<RespuestasForm6Struct>? val) =>
      _respuestasForm6 = val;

  void updateRespuestasForm6(Function(List<RespuestasForm6Struct>) updateFn) {
    updateFn(_respuestasForm6 ??= []);
  }

  bool hasRespuestasForm6() => _respuestasForm6 != null;

  // "actas_ingreso" field.
  List<ActasIngresoStruct>? _actasIngreso;
  List<ActasIngresoStruct> get actasIngreso => _actasIngreso ?? const [];
  set actasIngreso(List<ActasIngresoStruct>? val) => _actasIngreso = val;

  void updateActasIngreso(Function(List<ActasIngresoStruct>) updateFn) {
    updateFn(_actasIngreso ??= []);
  }

  bool hasActasIngreso() => _actasIngreso != null;

  static MedidasForm6Struct fromMap(Map<String, dynamic> data) =>
      MedidasForm6Struct(
        form6Row: data['form6_row'] is Form6RowStruct
            ? data['form6_row']
            : Form6RowStruct.maybeFromMap(data['form6_row']),
        respuestasForm6: getStructList(
          data['respuestas_form6'],
          RespuestasForm6Struct.fromMap,
        ),
        actasIngreso: getStructList(
          data['actas_ingreso'],
          ActasIngresoStruct.fromMap,
        ),
      );

  static MedidasForm6Struct? maybeFromMap(dynamic data) => data is Map
      ? MedidasForm6Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'form6_row': _form6Row?.toMap(),
        'respuestas_form6': _respuestasForm6?.map((e) => e.toMap()).toList(),
        'actas_ingreso': _actasIngreso?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'form6_row': serializeParam(
          _form6Row,
          ParamType.DataStruct,
        ),
        'respuestas_form6': serializeParam(
          _respuestasForm6,
          ParamType.DataStruct,
          isList: true,
        ),
        'actas_ingreso': serializeParam(
          _actasIngreso,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MedidasForm6Struct fromSerializableMap(Map<String, dynamic> data) =>
      MedidasForm6Struct(
        form6Row: deserializeStructParam(
          data['form6_row'],
          ParamType.DataStruct,
          false,
          structBuilder: Form6RowStruct.fromSerializableMap,
        ),
        respuestasForm6: deserializeStructParam<RespuestasForm6Struct>(
          data['respuestas_form6'],
          ParamType.DataStruct,
          true,
          structBuilder: RespuestasForm6Struct.fromSerializableMap,
        ),
        actasIngreso: deserializeStructParam<ActasIngresoStruct>(
          data['actas_ingreso'],
          ParamType.DataStruct,
          true,
          structBuilder: ActasIngresoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MedidasForm6Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MedidasForm6Struct &&
        form6Row == other.form6Row &&
        listEquality.equals(respuestasForm6, other.respuestasForm6) &&
        listEquality.equals(actasIngreso, other.actasIngreso);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([form6Row, respuestasForm6, actasIngreso]);
}

MedidasForm6Struct createMedidasForm6Struct({
  Form6RowStruct? form6Row,
}) =>
    MedidasForm6Struct(
      form6Row: form6Row ?? Form6RowStruct(),
    );
