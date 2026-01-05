// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CeseStruct extends BaseStruct {
  CeseStruct({
    IngresoCeseRowStruct? ingresoCeseRow,
    ExpedienteCeseRowStruct? expedienteCeseRow,
    Form5CeseRowStruct? form5CeseRow,
    Form9CeseRowStruct? form9CeseRow,
    List<GrupoConvivienteCeseListStruct>? grupoConvivienteCeseList,
  })  : _ingresoCeseRow = ingresoCeseRow,
        _expedienteCeseRow = expedienteCeseRow,
        _form5CeseRow = form5CeseRow,
        _form9CeseRow = form9CeseRow,
        _grupoConvivienteCeseList = grupoConvivienteCeseList;

  // "ingreso_cese_row" field.
  IngresoCeseRowStruct? _ingresoCeseRow;
  IngresoCeseRowStruct get ingresoCeseRow =>
      _ingresoCeseRow ?? IngresoCeseRowStruct();
  set ingresoCeseRow(IngresoCeseRowStruct? val) => _ingresoCeseRow = val;

  void updateIngresoCeseRow(Function(IngresoCeseRowStruct) updateFn) {
    updateFn(_ingresoCeseRow ??= IngresoCeseRowStruct());
  }

  bool hasIngresoCeseRow() => _ingresoCeseRow != null;

  // "expediente_cese_row" field.
  ExpedienteCeseRowStruct? _expedienteCeseRow;
  ExpedienteCeseRowStruct get expedienteCeseRow =>
      _expedienteCeseRow ?? ExpedienteCeseRowStruct();
  set expedienteCeseRow(ExpedienteCeseRowStruct? val) =>
      _expedienteCeseRow = val;

  void updateExpedienteCeseRow(Function(ExpedienteCeseRowStruct) updateFn) {
    updateFn(_expedienteCeseRow ??= ExpedienteCeseRowStruct());
  }

  bool hasExpedienteCeseRow() => _expedienteCeseRow != null;

  // "form5_cese_row" field.
  Form5CeseRowStruct? _form5CeseRow;
  Form5CeseRowStruct get form5CeseRow => _form5CeseRow ?? Form5CeseRowStruct();
  set form5CeseRow(Form5CeseRowStruct? val) => _form5CeseRow = val;

  void updateForm5CeseRow(Function(Form5CeseRowStruct) updateFn) {
    updateFn(_form5CeseRow ??= Form5CeseRowStruct());
  }

  bool hasForm5CeseRow() => _form5CeseRow != null;

  // "form9_cese_row" field.
  Form9CeseRowStruct? _form9CeseRow;
  Form9CeseRowStruct get form9CeseRow => _form9CeseRow ?? Form9CeseRowStruct();
  set form9CeseRow(Form9CeseRowStruct? val) => _form9CeseRow = val;

  void updateForm9CeseRow(Function(Form9CeseRowStruct) updateFn) {
    updateFn(_form9CeseRow ??= Form9CeseRowStruct());
  }

  bool hasForm9CeseRow() => _form9CeseRow != null;

  // "grupo_conviviente_cese_list" field.
  List<GrupoConvivienteCeseListStruct>? _grupoConvivienteCeseList;
  List<GrupoConvivienteCeseListStruct> get grupoConvivienteCeseList =>
      _grupoConvivienteCeseList ?? const [];
  set grupoConvivienteCeseList(List<GrupoConvivienteCeseListStruct>? val) =>
      _grupoConvivienteCeseList = val;

  void updateGrupoConvivienteCeseList(
      Function(List<GrupoConvivienteCeseListStruct>) updateFn) {
    updateFn(_grupoConvivienteCeseList ??= []);
  }

  bool hasGrupoConvivienteCeseList() => _grupoConvivienteCeseList != null;

  static CeseStruct fromMap(Map<String, dynamic> data) => CeseStruct(
        ingresoCeseRow: data['ingreso_cese_row'] is IngresoCeseRowStruct
            ? data['ingreso_cese_row']
            : IngresoCeseRowStruct.maybeFromMap(data['ingreso_cese_row']),
        expedienteCeseRow: data['expediente_cese_row']
                is ExpedienteCeseRowStruct
            ? data['expediente_cese_row']
            : ExpedienteCeseRowStruct.maybeFromMap(data['expediente_cese_row']),
        form5CeseRow: data['form5_cese_row'] is Form5CeseRowStruct
            ? data['form5_cese_row']
            : Form5CeseRowStruct.maybeFromMap(data['form5_cese_row']),
        form9CeseRow: data['form9_cese_row'] is Form9CeseRowStruct
            ? data['form9_cese_row']
            : Form9CeseRowStruct.maybeFromMap(data['form9_cese_row']),
        grupoConvivienteCeseList: getStructList(
          data['grupo_conviviente_cese_list'],
          GrupoConvivienteCeseListStruct.fromMap,
        ),
      );

  static CeseStruct? maybeFromMap(dynamic data) =>
      data is Map ? CeseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ingreso_cese_row': _ingresoCeseRow?.toMap(),
        'expediente_cese_row': _expedienteCeseRow?.toMap(),
        'form5_cese_row': _form5CeseRow?.toMap(),
        'form9_cese_row': _form9CeseRow?.toMap(),
        'grupo_conviviente_cese_list':
            _grupoConvivienteCeseList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ingreso_cese_row': serializeParam(
          _ingresoCeseRow,
          ParamType.DataStruct,
        ),
        'expediente_cese_row': serializeParam(
          _expedienteCeseRow,
          ParamType.DataStruct,
        ),
        'form5_cese_row': serializeParam(
          _form5CeseRow,
          ParamType.DataStruct,
        ),
        'form9_cese_row': serializeParam(
          _form9CeseRow,
          ParamType.DataStruct,
        ),
        'grupo_conviviente_cese_list': serializeParam(
          _grupoConvivienteCeseList,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CeseStruct fromSerializableMap(Map<String, dynamic> data) =>
      CeseStruct(
        ingresoCeseRow: deserializeStructParam(
          data['ingreso_cese_row'],
          ParamType.DataStruct,
          false,
          structBuilder: IngresoCeseRowStruct.fromSerializableMap,
        ),
        expedienteCeseRow: deserializeStructParam(
          data['expediente_cese_row'],
          ParamType.DataStruct,
          false,
          structBuilder: ExpedienteCeseRowStruct.fromSerializableMap,
        ),
        form5CeseRow: deserializeStructParam(
          data['form5_cese_row'],
          ParamType.DataStruct,
          false,
          structBuilder: Form5CeseRowStruct.fromSerializableMap,
        ),
        form9CeseRow: deserializeStructParam(
          data['form9_cese_row'],
          ParamType.DataStruct,
          false,
          structBuilder: Form9CeseRowStruct.fromSerializableMap,
        ),
        grupoConvivienteCeseList:
            deserializeStructParam<GrupoConvivienteCeseListStruct>(
          data['grupo_conviviente_cese_list'],
          ParamType.DataStruct,
          true,
          structBuilder: GrupoConvivienteCeseListStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CeseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CeseStruct &&
        ingresoCeseRow == other.ingresoCeseRow &&
        expedienteCeseRow == other.expedienteCeseRow &&
        form5CeseRow == other.form5CeseRow &&
        form9CeseRow == other.form9CeseRow &&
        listEquality.equals(
            grupoConvivienteCeseList, other.grupoConvivienteCeseList);
  }

  @override
  int get hashCode => const ListEquality().hash([
        ingresoCeseRow,
        expedienteCeseRow,
        form5CeseRow,
        form9CeseRow,
        grupoConvivienteCeseList
      ]);
}

CeseStruct createCeseStruct({
  IngresoCeseRowStruct? ingresoCeseRow,
  ExpedienteCeseRowStruct? expedienteCeseRow,
  Form5CeseRowStruct? form5CeseRow,
  Form9CeseRowStruct? form9CeseRow,
}) =>
    CeseStruct(
      ingresoCeseRow: ingresoCeseRow ?? IngresoCeseRowStruct(),
      expedienteCeseRow: expedienteCeseRow ?? ExpedienteCeseRowStruct(),
      form5CeseRow: form5CeseRow ?? Form5CeseRowStruct(),
      form9CeseRow: form9CeseRow ?? Form9CeseRowStruct(),
    );
