// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Medidasform6Struct extends BaseStruct {
  Medidasform6Struct({
    IngresoRowStruct? ingresoRow,
    ExpedienteRowStruct? expedienteRow,
    List<DerechosIngresoStruct>? derechosIngreso,
    List<MedidasForm6Struct>? medidasForm6,
  })  : _ingresoRow = ingresoRow,
        _expedienteRow = expedienteRow,
        _derechosIngreso = derechosIngreso,
        _medidasForm6 = medidasForm6;

  // "ingreso_row" field.
  IngresoRowStruct? _ingresoRow;
  IngresoRowStruct get ingresoRow => _ingresoRow ?? IngresoRowStruct();
  set ingresoRow(IngresoRowStruct? val) => _ingresoRow = val;

  void updateIngresoRow(Function(IngresoRowStruct) updateFn) {
    updateFn(_ingresoRow ??= IngresoRowStruct());
  }

  bool hasIngresoRow() => _ingresoRow != null;

  // "expediente_row" field.
  ExpedienteRowStruct? _expedienteRow;
  ExpedienteRowStruct get expedienteRow =>
      _expedienteRow ?? ExpedienteRowStruct();
  set expedienteRow(ExpedienteRowStruct? val) => _expedienteRow = val;

  void updateExpedienteRow(Function(ExpedienteRowStruct) updateFn) {
    updateFn(_expedienteRow ??= ExpedienteRowStruct());
  }

  bool hasExpedienteRow() => _expedienteRow != null;

  // "derechos_ingreso" field.
  List<DerechosIngresoStruct>? _derechosIngreso;
  List<DerechosIngresoStruct> get derechosIngreso =>
      _derechosIngreso ?? const [];
  set derechosIngreso(List<DerechosIngresoStruct>? val) =>
      _derechosIngreso = val;

  void updateDerechosIngreso(Function(List<DerechosIngresoStruct>) updateFn) {
    updateFn(_derechosIngreso ??= []);
  }

  bool hasDerechosIngreso() => _derechosIngreso != null;

  // "medidas_form6" field.
  List<MedidasForm6Struct>? _medidasForm6;
  List<MedidasForm6Struct> get medidasForm6 => _medidasForm6 ?? const [];
  set medidasForm6(List<MedidasForm6Struct>? val) => _medidasForm6 = val;

  void updateMedidasForm6(Function(List<MedidasForm6Struct>) updateFn) {
    updateFn(_medidasForm6 ??= []);
  }

  bool hasMedidasForm6() => _medidasForm6 != null;

  static Medidasform6Struct fromMap(Map<String, dynamic> data) =>
      Medidasform6Struct(
        ingresoRow: data['ingreso_row'] is IngresoRowStruct
            ? data['ingreso_row']
            : IngresoRowStruct.maybeFromMap(data['ingreso_row']),
        expedienteRow: data['expediente_row'] is ExpedienteRowStruct
            ? data['expediente_row']
            : ExpedienteRowStruct.maybeFromMap(data['expediente_row']),
        derechosIngreso: getStructList(
          data['derechos_ingreso'],
          DerechosIngresoStruct.fromMap,
        ),
        medidasForm6: getStructList(
          data['medidas_form6'],
          MedidasForm6Struct.fromMap,
        ),
      );

  static Medidasform6Struct? maybeFromMap(dynamic data) => data is Map
      ? Medidasform6Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ingreso_row': _ingresoRow?.toMap(),
        'expediente_row': _expedienteRow?.toMap(),
        'derechos_ingreso': _derechosIngreso?.map((e) => e.toMap()).toList(),
        'medidas_form6': _medidasForm6?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ingreso_row': serializeParam(
          _ingresoRow,
          ParamType.DataStruct,
        ),
        'expediente_row': serializeParam(
          _expedienteRow,
          ParamType.DataStruct,
        ),
        'derechos_ingreso': serializeParam(
          _derechosIngreso,
          ParamType.DataStruct,
          isList: true,
        ),
        'medidas_form6': serializeParam(
          _medidasForm6,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static Medidasform6Struct fromSerializableMap(Map<String, dynamic> data) =>
      Medidasform6Struct(
        ingresoRow: deserializeStructParam(
          data['ingreso_row'],
          ParamType.DataStruct,
          false,
          structBuilder: IngresoRowStruct.fromSerializableMap,
        ),
        expedienteRow: deserializeStructParam(
          data['expediente_row'],
          ParamType.DataStruct,
          false,
          structBuilder: ExpedienteRowStruct.fromSerializableMap,
        ),
        derechosIngreso: deserializeStructParam<DerechosIngresoStruct>(
          data['derechos_ingreso'],
          ParamType.DataStruct,
          true,
          structBuilder: DerechosIngresoStruct.fromSerializableMap,
        ),
        medidasForm6: deserializeStructParam<MedidasForm6Struct>(
          data['medidas_form6'],
          ParamType.DataStruct,
          true,
          structBuilder: MedidasForm6Struct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'Medidasform6Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is Medidasform6Struct &&
        ingresoRow == other.ingresoRow &&
        expedienteRow == other.expedienteRow &&
        listEquality.equals(derechosIngreso, other.derechosIngreso) &&
        listEquality.equals(medidasForm6, other.medidasForm6);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([ingresoRow, expedienteRow, derechosIngreso, medidasForm6]);
}

Medidasform6Struct createMedidasform6Struct({
  IngresoRowStruct? ingresoRow,
  ExpedienteRowStruct? expedienteRow,
}) =>
    Medidasform6Struct(
      ingresoRow: ingresoRow ?? IngresoRowStruct(),
      expedienteRow: expedienteRow ?? ExpedienteRowStruct(),
    );
