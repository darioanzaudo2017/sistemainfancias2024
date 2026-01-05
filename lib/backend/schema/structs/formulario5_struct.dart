// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Formulario5Struct extends BaseStruct {
  Formulario5Struct({
    ExpedienteDtoStruct? expedienteDto,
    IngresoDtoStruct? ingresoDto,
    Formulario5DtoStruct? formulario5Dto,
    List<DerechosDtoListStruct>? derechosDtoList,
    List<AmpliacionesDtoListStruct>? ampliacionesDtoList,
    GrupoFamiliarDtoStruct? grupoFamiliarDto,
  })  : _expedienteDto = expedienteDto,
        _ingresoDto = ingresoDto,
        _formulario5Dto = formulario5Dto,
        _derechosDtoList = derechosDtoList,
        _ampliacionesDtoList = ampliacionesDtoList,
        _grupoFamiliarDto = grupoFamiliarDto;

  // "expediente_dto" field.
  ExpedienteDtoStruct? _expedienteDto;
  ExpedienteDtoStruct get expedienteDto =>
      _expedienteDto ?? ExpedienteDtoStruct();
  set expedienteDto(ExpedienteDtoStruct? val) => _expedienteDto = val;

  void updateExpedienteDto(Function(ExpedienteDtoStruct) updateFn) {
    updateFn(_expedienteDto ??= ExpedienteDtoStruct());
  }

  bool hasExpedienteDto() => _expedienteDto != null;

  // "ingreso_dto" field.
  IngresoDtoStruct? _ingresoDto;
  IngresoDtoStruct get ingresoDto => _ingresoDto ?? IngresoDtoStruct();
  set ingresoDto(IngresoDtoStruct? val) => _ingresoDto = val;

  void updateIngresoDto(Function(IngresoDtoStruct) updateFn) {
    updateFn(_ingresoDto ??= IngresoDtoStruct());
  }

  bool hasIngresoDto() => _ingresoDto != null;

  // "formulario5_dto" field.
  Formulario5DtoStruct? _formulario5Dto;
  Formulario5DtoStruct get formulario5Dto =>
      _formulario5Dto ?? Formulario5DtoStruct();
  set formulario5Dto(Formulario5DtoStruct? val) => _formulario5Dto = val;

  void updateFormulario5Dto(Function(Formulario5DtoStruct) updateFn) {
    updateFn(_formulario5Dto ??= Formulario5DtoStruct());
  }

  bool hasFormulario5Dto() => _formulario5Dto != null;

  // "derechos_dto_list" field.
  List<DerechosDtoListStruct>? _derechosDtoList;
  List<DerechosDtoListStruct> get derechosDtoList =>
      _derechosDtoList ?? const [];
  set derechosDtoList(List<DerechosDtoListStruct>? val) =>
      _derechosDtoList = val;

  void updateDerechosDtoList(Function(List<DerechosDtoListStruct>) updateFn) {
    updateFn(_derechosDtoList ??= []);
  }

  bool hasDerechosDtoList() => _derechosDtoList != null;

  // "ampliaciones_dto_list" field.
  List<AmpliacionesDtoListStruct>? _ampliacionesDtoList;
  List<AmpliacionesDtoListStruct> get ampliacionesDtoList =>
      _ampliacionesDtoList ?? const [];
  set ampliacionesDtoList(List<AmpliacionesDtoListStruct>? val) =>
      _ampliacionesDtoList = val;

  void updateAmpliacionesDtoList(
      Function(List<AmpliacionesDtoListStruct>) updateFn) {
    updateFn(_ampliacionesDtoList ??= []);
  }

  bool hasAmpliacionesDtoList() => _ampliacionesDtoList != null;

  // "grupo_familiar_dto" field.
  GrupoFamiliarDtoStruct? _grupoFamiliarDto;
  GrupoFamiliarDtoStruct get grupoFamiliarDto =>
      _grupoFamiliarDto ?? GrupoFamiliarDtoStruct();
  set grupoFamiliarDto(GrupoFamiliarDtoStruct? val) => _grupoFamiliarDto = val;

  void updateGrupoFamiliarDto(Function(GrupoFamiliarDtoStruct) updateFn) {
    updateFn(_grupoFamiliarDto ??= GrupoFamiliarDtoStruct());
  }

  bool hasGrupoFamiliarDto() => _grupoFamiliarDto != null;

  static Formulario5Struct fromMap(Map<String, dynamic> data) =>
      Formulario5Struct(
        expedienteDto: data['expediente_dto'] is ExpedienteDtoStruct
            ? data['expediente_dto']
            : ExpedienteDtoStruct.maybeFromMap(data['expediente_dto']),
        ingresoDto: data['ingreso_dto'] is IngresoDtoStruct
            ? data['ingreso_dto']
            : IngresoDtoStruct.maybeFromMap(data['ingreso_dto']),
        formulario5Dto: data['formulario5_dto'] is Formulario5DtoStruct
            ? data['formulario5_dto']
            : Formulario5DtoStruct.maybeFromMap(data['formulario5_dto']),
        derechosDtoList: getStructList(
          data['derechos_dto_list'],
          DerechosDtoListStruct.fromMap,
        ),
        ampliacionesDtoList: getStructList(
          data['ampliaciones_dto_list'],
          AmpliacionesDtoListStruct.fromMap,
        ),
        grupoFamiliarDto: data['grupo_familiar_dto'] is GrupoFamiliarDtoStruct
            ? data['grupo_familiar_dto']
            : GrupoFamiliarDtoStruct.maybeFromMap(data['grupo_familiar_dto']),
      );

  static Formulario5Struct? maybeFromMap(dynamic data) => data is Map
      ? Formulario5Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'expediente_dto': _expedienteDto?.toMap(),
        'ingreso_dto': _ingresoDto?.toMap(),
        'formulario5_dto': _formulario5Dto?.toMap(),
        'derechos_dto_list': _derechosDtoList?.map((e) => e.toMap()).toList(),
        'ampliaciones_dto_list':
            _ampliacionesDtoList?.map((e) => e.toMap()).toList(),
        'grupo_familiar_dto': _grupoFamiliarDto?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expediente_dto': serializeParam(
          _expedienteDto,
          ParamType.DataStruct,
        ),
        'ingreso_dto': serializeParam(
          _ingresoDto,
          ParamType.DataStruct,
        ),
        'formulario5_dto': serializeParam(
          _formulario5Dto,
          ParamType.DataStruct,
        ),
        'derechos_dto_list': serializeParam(
          _derechosDtoList,
          ParamType.DataStruct,
          isList: true,
        ),
        'ampliaciones_dto_list': serializeParam(
          _ampliacionesDtoList,
          ParamType.DataStruct,
          isList: true,
        ),
        'grupo_familiar_dto': serializeParam(
          _grupoFamiliarDto,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static Formulario5Struct fromSerializableMap(Map<String, dynamic> data) =>
      Formulario5Struct(
        expedienteDto: deserializeStructParam(
          data['expediente_dto'],
          ParamType.DataStruct,
          false,
          structBuilder: ExpedienteDtoStruct.fromSerializableMap,
        ),
        ingresoDto: deserializeStructParam(
          data['ingreso_dto'],
          ParamType.DataStruct,
          false,
          structBuilder: IngresoDtoStruct.fromSerializableMap,
        ),
        formulario5Dto: deserializeStructParam(
          data['formulario5_dto'],
          ParamType.DataStruct,
          false,
          structBuilder: Formulario5DtoStruct.fromSerializableMap,
        ),
        derechosDtoList: deserializeStructParam<DerechosDtoListStruct>(
          data['derechos_dto_list'],
          ParamType.DataStruct,
          true,
          structBuilder: DerechosDtoListStruct.fromSerializableMap,
        ),
        ampliacionesDtoList: deserializeStructParam<AmpliacionesDtoListStruct>(
          data['ampliaciones_dto_list'],
          ParamType.DataStruct,
          true,
          structBuilder: AmpliacionesDtoListStruct.fromSerializableMap,
        ),
        grupoFamiliarDto: deserializeStructParam(
          data['grupo_familiar_dto'],
          ParamType.DataStruct,
          false,
          structBuilder: GrupoFamiliarDtoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'Formulario5Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is Formulario5Struct &&
        expedienteDto == other.expedienteDto &&
        ingresoDto == other.ingresoDto &&
        formulario5Dto == other.formulario5Dto &&
        listEquality.equals(derechosDtoList, other.derechosDtoList) &&
        listEquality.equals(ampliacionesDtoList, other.ampliacionesDtoList) &&
        grupoFamiliarDto == other.grupoFamiliarDto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        expedienteDto,
        ingresoDto,
        formulario5Dto,
        derechosDtoList,
        ampliacionesDtoList,
        grupoFamiliarDto
      ]);
}

Formulario5Struct createFormulario5Struct({
  ExpedienteDtoStruct? expedienteDto,
  IngresoDtoStruct? ingresoDto,
  Formulario5DtoStruct? formulario5Dto,
  GrupoFamiliarDtoStruct? grupoFamiliarDto,
}) =>
    Formulario5Struct(
      expedienteDto: expedienteDto ?? ExpedienteDtoStruct(),
      ingresoDto: ingresoDto ?? IngresoDtoStruct(),
      formulario5Dto: formulario5Dto ?? Formulario5DtoStruct(),
      grupoFamiliarDto: grupoFamiliarDto ?? GrupoFamiliarDtoStruct(),
    );
