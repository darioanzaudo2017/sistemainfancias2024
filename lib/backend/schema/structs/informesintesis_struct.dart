// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InformesintesisStruct extends BaseStruct {
  InformesintesisStruct({
    ExpedienteDataStruct? expedienteData,
    IngresoDataStruct? ingresoData,
    String? form5Data,
    List<DerechosListStruct>? derechosList,
    List<AmpliacionesListStruct>? ampliacionesList,
    GrupoFamiliarDataStruct? grupoFamiliarData,
    List<String>? articulacionComunitariaList,
  })  : _expedienteData = expedienteData,
        _ingresoData = ingresoData,
        _form5Data = form5Data,
        _derechosList = derechosList,
        _ampliacionesList = ampliacionesList,
        _grupoFamiliarData = grupoFamiliarData,
        _articulacionComunitariaList = articulacionComunitariaList;

  // "expediente_data" field.
  ExpedienteDataStruct? _expedienteData;
  ExpedienteDataStruct get expedienteData =>
      _expedienteData ?? ExpedienteDataStruct();
  set expedienteData(ExpedienteDataStruct? val) => _expedienteData = val;

  void updateExpedienteData(Function(ExpedienteDataStruct) updateFn) {
    updateFn(_expedienteData ??= ExpedienteDataStruct());
  }

  bool hasExpedienteData() => _expedienteData != null;

  // "ingreso_data" field.
  IngresoDataStruct? _ingresoData;
  IngresoDataStruct get ingresoData => _ingresoData ?? IngresoDataStruct();
  set ingresoData(IngresoDataStruct? val) => _ingresoData = val;

  void updateIngresoData(Function(IngresoDataStruct) updateFn) {
    updateFn(_ingresoData ??= IngresoDataStruct());
  }

  bool hasIngresoData() => _ingresoData != null;

  // "form5_data" field.
  String? _form5Data;
  String get form5Data => _form5Data ?? '';
  set form5Data(String? val) => _form5Data = val;

  bool hasForm5Data() => _form5Data != null;

  // "derechos_list" field.
  List<DerechosListStruct>? _derechosList;
  List<DerechosListStruct> get derechosList => _derechosList ?? const [];
  set derechosList(List<DerechosListStruct>? val) => _derechosList = val;

  void updateDerechosList(Function(List<DerechosListStruct>) updateFn) {
    updateFn(_derechosList ??= []);
  }

  bool hasDerechosList() => _derechosList != null;

  // "ampliaciones_list" field.
  List<AmpliacionesListStruct>? _ampliacionesList;
  List<AmpliacionesListStruct> get ampliacionesList =>
      _ampliacionesList ?? const [];
  set ampliacionesList(List<AmpliacionesListStruct>? val) =>
      _ampliacionesList = val;

  void updateAmpliacionesList(Function(List<AmpliacionesListStruct>) updateFn) {
    updateFn(_ampliacionesList ??= []);
  }

  bool hasAmpliacionesList() => _ampliacionesList != null;

  // "grupo_familiar_data" field.
  GrupoFamiliarDataStruct? _grupoFamiliarData;
  GrupoFamiliarDataStruct get grupoFamiliarData =>
      _grupoFamiliarData ?? GrupoFamiliarDataStruct();
  set grupoFamiliarData(GrupoFamiliarDataStruct? val) =>
      _grupoFamiliarData = val;

  void updateGrupoFamiliarData(Function(GrupoFamiliarDataStruct) updateFn) {
    updateFn(_grupoFamiliarData ??= GrupoFamiliarDataStruct());
  }

  bool hasGrupoFamiliarData() => _grupoFamiliarData != null;

  // "articulacion_comunitaria_list" field.
  List<String>? _articulacionComunitariaList;
  List<String> get articulacionComunitariaList =>
      _articulacionComunitariaList ?? const [];
  set articulacionComunitariaList(List<String>? val) =>
      _articulacionComunitariaList = val;

  void updateArticulacionComunitariaList(Function(List<String>) updateFn) {
    updateFn(_articulacionComunitariaList ??= []);
  }

  bool hasArticulacionComunitariaList() => _articulacionComunitariaList != null;

  static InformesintesisStruct fromMap(Map<String, dynamic> data) =>
      InformesintesisStruct(
        expedienteData: data['expediente_data'] is ExpedienteDataStruct
            ? data['expediente_data']
            : ExpedienteDataStruct.maybeFromMap(data['expediente_data']),
        ingresoData: data['ingreso_data'] is IngresoDataStruct
            ? data['ingreso_data']
            : IngresoDataStruct.maybeFromMap(data['ingreso_data']),
        form5Data: data['form5_data'] as String?,
        derechosList: getStructList(
          data['derechos_list'],
          DerechosListStruct.fromMap,
        ),
        ampliacionesList: getStructList(
          data['ampliaciones_list'],
          AmpliacionesListStruct.fromMap,
        ),
        grupoFamiliarData: data['grupo_familiar_data']
                is GrupoFamiliarDataStruct
            ? data['grupo_familiar_data']
            : GrupoFamiliarDataStruct.maybeFromMap(data['grupo_familiar_data']),
        articulacionComunitariaList:
            getDataList(data['articulacion_comunitaria_list']),
      );

  static InformesintesisStruct? maybeFromMap(dynamic data) => data is Map
      ? InformesintesisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'expediente_data': _expedienteData?.toMap(),
        'ingreso_data': _ingresoData?.toMap(),
        'form5_data': _form5Data,
        'derechos_list': _derechosList?.map((e) => e.toMap()).toList(),
        'ampliaciones_list': _ampliacionesList?.map((e) => e.toMap()).toList(),
        'grupo_familiar_data': _grupoFamiliarData?.toMap(),
        'articulacion_comunitaria_list': _articulacionComunitariaList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expediente_data': serializeParam(
          _expedienteData,
          ParamType.DataStruct,
        ),
        'ingreso_data': serializeParam(
          _ingresoData,
          ParamType.DataStruct,
        ),
        'form5_data': serializeParam(
          _form5Data,
          ParamType.String,
        ),
        'derechos_list': serializeParam(
          _derechosList,
          ParamType.DataStruct,
          isList: true,
        ),
        'ampliaciones_list': serializeParam(
          _ampliacionesList,
          ParamType.DataStruct,
          isList: true,
        ),
        'grupo_familiar_data': serializeParam(
          _grupoFamiliarData,
          ParamType.DataStruct,
        ),
        'articulacion_comunitaria_list': serializeParam(
          _articulacionComunitariaList,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static InformesintesisStruct fromSerializableMap(Map<String, dynamic> data) =>
      InformesintesisStruct(
        expedienteData: deserializeStructParam(
          data['expediente_data'],
          ParamType.DataStruct,
          false,
          structBuilder: ExpedienteDataStruct.fromSerializableMap,
        ),
        ingresoData: deserializeStructParam(
          data['ingreso_data'],
          ParamType.DataStruct,
          false,
          structBuilder: IngresoDataStruct.fromSerializableMap,
        ),
        form5Data: deserializeParam(
          data['form5_data'],
          ParamType.String,
          false,
        ),
        derechosList: deserializeStructParam<DerechosListStruct>(
          data['derechos_list'],
          ParamType.DataStruct,
          true,
          structBuilder: DerechosListStruct.fromSerializableMap,
        ),
        ampliacionesList: deserializeStructParam<AmpliacionesListStruct>(
          data['ampliaciones_list'],
          ParamType.DataStruct,
          true,
          structBuilder: AmpliacionesListStruct.fromSerializableMap,
        ),
        grupoFamiliarData: deserializeStructParam(
          data['grupo_familiar_data'],
          ParamType.DataStruct,
          false,
          structBuilder: GrupoFamiliarDataStruct.fromSerializableMap,
        ),
        articulacionComunitariaList: deserializeParam<String>(
          data['articulacion_comunitaria_list'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'InformesintesisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InformesintesisStruct &&
        expedienteData == other.expedienteData &&
        ingresoData == other.ingresoData &&
        form5Data == other.form5Data &&
        listEquality.equals(derechosList, other.derechosList) &&
        listEquality.equals(ampliacionesList, other.ampliacionesList) &&
        grupoFamiliarData == other.grupoFamiliarData &&
        listEquality.equals(
            articulacionComunitariaList, other.articulacionComunitariaList);
  }

  @override
  int get hashCode => const ListEquality().hash([
        expedienteData,
        ingresoData,
        form5Data,
        derechosList,
        ampliacionesList,
        grupoFamiliarData,
        articulacionComunitariaList
      ]);
}

InformesintesisStruct createInformesintesisStruct({
  ExpedienteDataStruct? expedienteData,
  IngresoDataStruct? ingresoData,
  String? form5Data,
  GrupoFamiliarDataStruct? grupoFamiliarData,
}) =>
    InformesintesisStruct(
      expedienteData: expedienteData ?? ExpedienteDataStruct(),
      ingresoData: ingresoData ?? IngresoDataStruct(),
      form5Data: form5Data,
      grupoFamiliarData: grupoFamiliarData ?? GrupoFamiliarDataStruct(),
    );
