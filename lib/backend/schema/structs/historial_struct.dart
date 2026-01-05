// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialStruct extends BaseStruct {
  HistorialStruct({
    List<String>? historial,
    MetadataStruct? metadata,
    IngresoInfoStruct? ingresoInfo,
  })  : _historial = historial,
        _metadata = metadata,
        _ingresoInfo = ingresoInfo;

  // "historial" field.
  List<String>? _historial;
  List<String> get historial => _historial ?? const [];
  set historial(List<String>? val) => _historial = val;

  void updateHistorial(Function(List<String>) updateFn) {
    updateFn(_historial ??= []);
  }

  bool hasHistorial() => _historial != null;

  // "metadata" field.
  MetadataStruct? _metadata;
  MetadataStruct get metadata => _metadata ?? MetadataStruct();
  set metadata(MetadataStruct? val) => _metadata = val;

  void updateMetadata(Function(MetadataStruct) updateFn) {
    updateFn(_metadata ??= MetadataStruct());
  }

  bool hasMetadata() => _metadata != null;

  // "ingreso_info" field.
  IngresoInfoStruct? _ingresoInfo;
  IngresoInfoStruct get ingresoInfo => _ingresoInfo ?? IngresoInfoStruct();
  set ingresoInfo(IngresoInfoStruct? val) => _ingresoInfo = val;

  void updateIngresoInfo(Function(IngresoInfoStruct) updateFn) {
    updateFn(_ingresoInfo ??= IngresoInfoStruct());
  }

  bool hasIngresoInfo() => _ingresoInfo != null;

  static HistorialStruct fromMap(Map<String, dynamic> data) => HistorialStruct(
        historial: getDataList(data['historial']),
        metadata: data['metadata'] is MetadataStruct
            ? data['metadata']
            : MetadataStruct.maybeFromMap(data['metadata']),
        ingresoInfo: data['ingreso_info'] is IngresoInfoStruct
            ? data['ingreso_info']
            : IngresoInfoStruct.maybeFromMap(data['ingreso_info']),
      );

  static HistorialStruct? maybeFromMap(dynamic data) => data is Map
      ? HistorialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'historial': _historial,
        'metadata': _metadata?.toMap(),
        'ingreso_info': _ingresoInfo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'historial': serializeParam(
          _historial,
          ParamType.String,
          isList: true,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
        ),
        'ingreso_info': serializeParam(
          _ingresoInfo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static HistorialStruct fromSerializableMap(Map<String, dynamic> data) =>
      HistorialStruct(
        historial: deserializeParam<String>(
          data['historial'],
          ParamType.String,
          true,
        ),
        metadata: deserializeStructParam(
          data['metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: MetadataStruct.fromSerializableMap,
        ),
        ingresoInfo: deserializeStructParam(
          data['ingreso_info'],
          ParamType.DataStruct,
          false,
          structBuilder: IngresoInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HistorialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HistorialStruct &&
        listEquality.equals(historial, other.historial) &&
        metadata == other.metadata &&
        ingresoInfo == other.ingresoInfo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([historial, metadata, ingresoInfo]);
}

HistorialStruct createHistorialStruct({
  MetadataStruct? metadata,
  IngresoInfoStruct? ingresoInfo,
}) =>
    HistorialStruct(
      metadata: metadata ?? MetadataStruct(),
      ingresoInfo: ingresoInfo ?? IngresoInfoStruct(),
    );
