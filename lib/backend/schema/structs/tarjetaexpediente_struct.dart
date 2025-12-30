// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarjetaexpedienteStruct extends BaseStruct {
  TarjetaexpedienteStruct({
    NnyaStruct? nnya,
    ExpedienteStruct? expediente,
  })  : _nnya = nnya,
        _expediente = expediente;

  // "nnya" field.
  NnyaStruct? _nnya;
  NnyaStruct get nnya => _nnya ?? NnyaStruct();
  set nnya(NnyaStruct? val) => _nnya = val;

  void updateNnya(Function(NnyaStruct) updateFn) {
    updateFn(_nnya ??= NnyaStruct());
  }

  bool hasNnya() => _nnya != null;

  // "expediente" field.
  ExpedienteStruct? _expediente;
  ExpedienteStruct get expediente => _expediente ?? ExpedienteStruct();
  set expediente(ExpedienteStruct? val) => _expediente = val;

  void updateExpediente(Function(ExpedienteStruct) updateFn) {
    updateFn(_expediente ??= ExpedienteStruct());
  }

  bool hasExpediente() => _expediente != null;

  static TarjetaexpedienteStruct fromMap(Map<String, dynamic> data) =>
      TarjetaexpedienteStruct(
        nnya: data['nnya'] is NnyaStruct
            ? data['nnya']
            : NnyaStruct.maybeFromMap(data['nnya']),
        expediente: data['expediente'] is ExpedienteStruct
            ? data['expediente']
            : ExpedienteStruct.maybeFromMap(data['expediente']),
      );

  static TarjetaexpedienteStruct? maybeFromMap(dynamic data) => data is Map
      ? TarjetaexpedienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nnya': _nnya?.toMap(),
        'expediente': _expediente?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nnya': serializeParam(
          _nnya,
          ParamType.DataStruct,
        ),
        'expediente': serializeParam(
          _expediente,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TarjetaexpedienteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TarjetaexpedienteStruct(
        nnya: deserializeStructParam(
          data['nnya'],
          ParamType.DataStruct,
          false,
          structBuilder: NnyaStruct.fromSerializableMap,
        ),
        expediente: deserializeStructParam(
          data['expediente'],
          ParamType.DataStruct,
          false,
          structBuilder: ExpedienteStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TarjetaexpedienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TarjetaexpedienteStruct &&
        nnya == other.nnya &&
        expediente == other.expediente;
  }

  @override
  int get hashCode => const ListEquality().hash([nnya, expediente]);
}

TarjetaexpedienteStruct createTarjetaexpedienteStruct({
  NnyaStruct? nnya,
  ExpedienteStruct? expediente,
}) =>
    TarjetaexpedienteStruct(
      nnya: nnya ?? NnyaStruct(),
      expediente: expediente ?? ExpedienteStruct(),
    );
