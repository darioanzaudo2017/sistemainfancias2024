// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngresosPerfilStruct extends BaseStruct {
  IngresosPerfilStruct({
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
    bool? form6,
    bool? form1seccion1,
    bool? form1seccion2,
    bool? form1seccion3,
    bool? form1seccion4,
    bool? form1seccion5,
    bool? form1seccion6,
    bool? form1completo,
    bool? ampliacioncompleto,
    bool? form3completo,
    bool? form4completo,
    bool? form5completo,
    bool? form6completo,
    bool? form7completo,
    bool? form8completo,
    bool? form9completo,
    bool? form1seccion7,
    bool? form1seccion8,
    bool? form1seccion9,
    String? emergencia,
    String? idusuario,
    bool? carpetaDrive,
    bool? listadoimpresiones,
    String? idcarpeta,
    String? linkcarpeta,
    String? updateAt,
    String? updatedAt,
    String? idusers,
    String? iduser,
    String? idgrupofamiliar,
    List<String>? anexoAForm1,
    Seccion9Struct? seccion9,
    List<GrupoConvivienteStruct>? grupoConviviente,
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
        _form6 = form6,
        _form1seccion1 = form1seccion1,
        _form1seccion2 = form1seccion2,
        _form1seccion3 = form1seccion3,
        _form1seccion4 = form1seccion4,
        _form1seccion5 = form1seccion5,
        _form1seccion6 = form1seccion6,
        _form1completo = form1completo,
        _ampliacioncompleto = ampliacioncompleto,
        _form3completo = form3completo,
        _form4completo = form4completo,
        _form5completo = form5completo,
        _form6completo = form6completo,
        _form7completo = form7completo,
        _form8completo = form8completo,
        _form9completo = form9completo,
        _form1seccion7 = form1seccion7,
        _form1seccion8 = form1seccion8,
        _form1seccion9 = form1seccion9,
        _emergencia = emergencia,
        _idusuario = idusuario,
        _carpetaDrive = carpetaDrive,
        _listadoimpresiones = listadoimpresiones,
        _idcarpeta = idcarpeta,
        _linkcarpeta = linkcarpeta,
        _updateAt = updateAt,
        _updatedAt = updatedAt,
        _idusers = idusers,
        _iduser = iduser,
        _idgrupofamiliar = idgrupofamiliar,
        _anexoAForm1 = anexoAForm1,
        _seccion9 = seccion9,
        _grupoConviviente = grupoConviviente;

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

  // "form6" field.
  bool? _form6;
  bool get form6 => _form6 ?? false;
  set form6(bool? val) => _form6 = val;

  bool hasForm6() => _form6 != null;

  // "form1seccion1" field.
  bool? _form1seccion1;
  bool get form1seccion1 => _form1seccion1 ?? false;
  set form1seccion1(bool? val) => _form1seccion1 = val;

  bool hasForm1seccion1() => _form1seccion1 != null;

  // "form1seccion2" field.
  bool? _form1seccion2;
  bool get form1seccion2 => _form1seccion2 ?? false;
  set form1seccion2(bool? val) => _form1seccion2 = val;

  bool hasForm1seccion2() => _form1seccion2 != null;

  // "form1seccion3" field.
  bool? _form1seccion3;
  bool get form1seccion3 => _form1seccion3 ?? false;
  set form1seccion3(bool? val) => _form1seccion3 = val;

  bool hasForm1seccion3() => _form1seccion3 != null;

  // "form1seccion4" field.
  bool? _form1seccion4;
  bool get form1seccion4 => _form1seccion4 ?? false;
  set form1seccion4(bool? val) => _form1seccion4 = val;

  bool hasForm1seccion4() => _form1seccion4 != null;

  // "form1seccion5" field.
  bool? _form1seccion5;
  bool get form1seccion5 => _form1seccion5 ?? false;
  set form1seccion5(bool? val) => _form1seccion5 = val;

  bool hasForm1seccion5() => _form1seccion5 != null;

  // "form1seccion6" field.
  bool? _form1seccion6;
  bool get form1seccion6 => _form1seccion6 ?? false;
  set form1seccion6(bool? val) => _form1seccion6 = val;

  bool hasForm1seccion6() => _form1seccion6 != null;

  // "form1completo" field.
  bool? _form1completo;
  bool get form1completo => _form1completo ?? false;
  set form1completo(bool? val) => _form1completo = val;

  bool hasForm1completo() => _form1completo != null;

  // "Ampliacioncompleto" field.
  bool? _ampliacioncompleto;
  bool get ampliacioncompleto => _ampliacioncompleto ?? false;
  set ampliacioncompleto(bool? val) => _ampliacioncompleto = val;

  bool hasAmpliacioncompleto() => _ampliacioncompleto != null;

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

  // "form1seccion7" field.
  bool? _form1seccion7;
  bool get form1seccion7 => _form1seccion7 ?? false;
  set form1seccion7(bool? val) => _form1seccion7 = val;

  bool hasForm1seccion7() => _form1seccion7 != null;

  // "form1seccion8" field.
  bool? _form1seccion8;
  bool get form1seccion8 => _form1seccion8 ?? false;
  set form1seccion8(bool? val) => _form1seccion8 = val;

  bool hasForm1seccion8() => _form1seccion8 != null;

  // "form1seccion9" field.
  bool? _form1seccion9;
  bool get form1seccion9 => _form1seccion9 ?? false;
  set form1seccion9(bool? val) => _form1seccion9 = val;

  bool hasForm1seccion9() => _form1seccion9 != null;

  // "emergencia" field.
  String? _emergencia;
  String get emergencia => _emergencia ?? '';
  set emergencia(String? val) => _emergencia = val;

  bool hasEmergencia() => _emergencia != null;

  // "idusuario" field.
  String? _idusuario;
  String get idusuario => _idusuario ?? '';
  set idusuario(String? val) => _idusuario = val;

  bool hasIdusuario() => _idusuario != null;

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

  // "update_at" field.
  String? _updateAt;
  String get updateAt => _updateAt ?? '';
  set updateAt(String? val) => _updateAt = val;

  bool hasUpdateAt() => _updateAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  set idusers(String? val) => _idusers = val;

  bool hasIdusers() => _idusers != null;

  // "iduser" field.
  String? _iduser;
  String get iduser => _iduser ?? '';
  set iduser(String? val) => _iduser = val;

  bool hasIduser() => _iduser != null;

  // "idgrupofamiliar" field.
  String? _idgrupofamiliar;
  String get idgrupofamiliar => _idgrupofamiliar ?? '';
  set idgrupofamiliar(String? val) => _idgrupofamiliar = val;

  bool hasIdgrupofamiliar() => _idgrupofamiliar != null;

  // "AnexoAForm1" field.
  List<String>? _anexoAForm1;
  List<String> get anexoAForm1 => _anexoAForm1 ?? const [];
  set anexoAForm1(List<String>? val) => _anexoAForm1 = val;

  void updateAnexoAForm1(Function(List<String>) updateFn) {
    updateFn(_anexoAForm1 ??= []);
  }

  bool hasAnexoAForm1() => _anexoAForm1 != null;

  // "seccion9" field.
  Seccion9Struct? _seccion9;
  Seccion9Struct get seccion9 => _seccion9 ?? Seccion9Struct();
  set seccion9(Seccion9Struct? val) => _seccion9 = val;

  void updateSeccion9(Function(Seccion9Struct) updateFn) {
    updateFn(_seccion9 ??= Seccion9Struct());
  }

  bool hasSeccion9() => _seccion9 != null;

  // "grupo_conviviente" field.
  List<GrupoConvivienteStruct>? _grupoConviviente;
  List<GrupoConvivienteStruct> get grupoConviviente =>
      _grupoConviviente ?? const [];
  set grupoConviviente(List<GrupoConvivienteStruct>? val) =>
      _grupoConviviente = val;

  void updateGrupoConviviente(Function(List<GrupoConvivienteStruct>) updateFn) {
    updateFn(_grupoConviviente ??= []);
  }

  bool hasGrupoConviviente() => _grupoConviviente != null;

  static IngresosPerfilStruct fromMap(Map<String, dynamic> data) =>
      IngresosPerfilStruct(
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
        form6: data['form6'] as bool?,
        form1seccion1: data['form1seccion1'] as bool?,
        form1seccion2: data['form1seccion2'] as bool?,
        form1seccion3: data['form1seccion3'] as bool?,
        form1seccion4: data['form1seccion4'] as bool?,
        form1seccion5: data['form1seccion5'] as bool?,
        form1seccion6: data['form1seccion6'] as bool?,
        form1completo: data['form1completo'] as bool?,
        ampliacioncompleto: data['Ampliacioncompleto'] as bool?,
        form3completo: data['form3completo'] as bool?,
        form4completo: data['form4completo'] as bool?,
        form5completo: data['form5completo'] as bool?,
        form6completo: data['form6completo'] as bool?,
        form7completo: data['form7completo'] as bool?,
        form8completo: data['form8completo'] as bool?,
        form9completo: data['form9completo'] as bool?,
        form1seccion7: data['form1seccion7'] as bool?,
        form1seccion8: data['form1seccion8'] as bool?,
        form1seccion9: data['form1seccion9'] as bool?,
        emergencia: data['emergencia'] as String?,
        idusuario: data['idusuario'] as String?,
        carpetaDrive: data['carpetaDrive'] as bool?,
        listadoimpresiones: data['listadoimpresiones'] as bool?,
        idcarpeta: data['idcarpeta'] as String?,
        linkcarpeta: data['linkcarpeta'] as String?,
        updateAt: data['update_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        idusers: data['idusers'] as String?,
        iduser: data['iduser'] as String?,
        idgrupofamiliar: data['idgrupofamiliar'] as String?,
        anexoAForm1: getDataList(data['AnexoAForm1']),
        seccion9: data['seccion9'] is Seccion9Struct
            ? data['seccion9']
            : Seccion9Struct.maybeFromMap(data['seccion9']),
        grupoConviviente: getStructList(
          data['grupo_conviviente'],
          GrupoConvivienteStruct.fromMap,
        ),
      );

  static IngresosPerfilStruct? maybeFromMap(dynamic data) => data is Map
      ? IngresosPerfilStruct.fromMap(data.cast<String, dynamic>())
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
        'form6': _form6,
        'form1seccion1': _form1seccion1,
        'form1seccion2': _form1seccion2,
        'form1seccion3': _form1seccion3,
        'form1seccion4': _form1seccion4,
        'form1seccion5': _form1seccion5,
        'form1seccion6': _form1seccion6,
        'form1completo': _form1completo,
        'Ampliacioncompleto': _ampliacioncompleto,
        'form3completo': _form3completo,
        'form4completo': _form4completo,
        'form5completo': _form5completo,
        'form6completo': _form6completo,
        'form7completo': _form7completo,
        'form8completo': _form8completo,
        'form9completo': _form9completo,
        'form1seccion7': _form1seccion7,
        'form1seccion8': _form1seccion8,
        'form1seccion9': _form1seccion9,
        'emergencia': _emergencia,
        'idusuario': _idusuario,
        'carpetaDrive': _carpetaDrive,
        'listadoimpresiones': _listadoimpresiones,
        'idcarpeta': _idcarpeta,
        'linkcarpeta': _linkcarpeta,
        'update_at': _updateAt,
        'updated_at': _updatedAt,
        'idusers': _idusers,
        'iduser': _iduser,
        'idgrupofamiliar': _idgrupofamiliar,
        'AnexoAForm1': _anexoAForm1,
        'seccion9': _seccion9?.toMap(),
        'grupo_conviviente': _grupoConviviente?.map((e) => e.toMap()).toList(),
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
        'form6': serializeParam(
          _form6,
          ParamType.bool,
        ),
        'form1seccion1': serializeParam(
          _form1seccion1,
          ParamType.bool,
        ),
        'form1seccion2': serializeParam(
          _form1seccion2,
          ParamType.bool,
        ),
        'form1seccion3': serializeParam(
          _form1seccion3,
          ParamType.bool,
        ),
        'form1seccion4': serializeParam(
          _form1seccion4,
          ParamType.bool,
        ),
        'form1seccion5': serializeParam(
          _form1seccion5,
          ParamType.bool,
        ),
        'form1seccion6': serializeParam(
          _form1seccion6,
          ParamType.bool,
        ),
        'form1completo': serializeParam(
          _form1completo,
          ParamType.bool,
        ),
        'Ampliacioncompleto': serializeParam(
          _ampliacioncompleto,
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
        'form1seccion7': serializeParam(
          _form1seccion7,
          ParamType.bool,
        ),
        'form1seccion8': serializeParam(
          _form1seccion8,
          ParamType.bool,
        ),
        'form1seccion9': serializeParam(
          _form1seccion9,
          ParamType.bool,
        ),
        'emergencia': serializeParam(
          _emergencia,
          ParamType.String,
        ),
        'idusuario': serializeParam(
          _idusuario,
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
        'update_at': serializeParam(
          _updateAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'idusers': serializeParam(
          _idusers,
          ParamType.String,
        ),
        'iduser': serializeParam(
          _iduser,
          ParamType.String,
        ),
        'idgrupofamiliar': serializeParam(
          _idgrupofamiliar,
          ParamType.String,
        ),
        'AnexoAForm1': serializeParam(
          _anexoAForm1,
          ParamType.String,
          isList: true,
        ),
        'seccion9': serializeParam(
          _seccion9,
          ParamType.DataStruct,
        ),
        'grupo_conviviente': serializeParam(
          _grupoConviviente,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static IngresosPerfilStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngresosPerfilStruct(
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
        form6: deserializeParam(
          data['form6'],
          ParamType.bool,
          false,
        ),
        form1seccion1: deserializeParam(
          data['form1seccion1'],
          ParamType.bool,
          false,
        ),
        form1seccion2: deserializeParam(
          data['form1seccion2'],
          ParamType.bool,
          false,
        ),
        form1seccion3: deserializeParam(
          data['form1seccion3'],
          ParamType.bool,
          false,
        ),
        form1seccion4: deserializeParam(
          data['form1seccion4'],
          ParamType.bool,
          false,
        ),
        form1seccion5: deserializeParam(
          data['form1seccion5'],
          ParamType.bool,
          false,
        ),
        form1seccion6: deserializeParam(
          data['form1seccion6'],
          ParamType.bool,
          false,
        ),
        form1completo: deserializeParam(
          data['form1completo'],
          ParamType.bool,
          false,
        ),
        ampliacioncompleto: deserializeParam(
          data['Ampliacioncompleto'],
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
        form1seccion7: deserializeParam(
          data['form1seccion7'],
          ParamType.bool,
          false,
        ),
        form1seccion8: deserializeParam(
          data['form1seccion8'],
          ParamType.bool,
          false,
        ),
        form1seccion9: deserializeParam(
          data['form1seccion9'],
          ParamType.bool,
          false,
        ),
        emergencia: deserializeParam(
          data['emergencia'],
          ParamType.String,
          false,
        ),
        idusuario: deserializeParam(
          data['idusuario'],
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
        updateAt: deserializeParam(
          data['update_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        idusers: deserializeParam(
          data['idusers'],
          ParamType.String,
          false,
        ),
        iduser: deserializeParam(
          data['iduser'],
          ParamType.String,
          false,
        ),
        idgrupofamiliar: deserializeParam(
          data['idgrupofamiliar'],
          ParamType.String,
          false,
        ),
        anexoAForm1: deserializeParam<String>(
          data['AnexoAForm1'],
          ParamType.String,
          true,
        ),
        seccion9: deserializeStructParam(
          data['seccion9'],
          ParamType.DataStruct,
          false,
          structBuilder: Seccion9Struct.fromSerializableMap,
        ),
        grupoConviviente: deserializeStructParam<GrupoConvivienteStruct>(
          data['grupo_conviviente'],
          ParamType.DataStruct,
          true,
          structBuilder: GrupoConvivienteStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'IngresosPerfilStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is IngresosPerfilStruct &&
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
        form6 == other.form6 &&
        form1seccion1 == other.form1seccion1 &&
        form1seccion2 == other.form1seccion2 &&
        form1seccion3 == other.form1seccion3 &&
        form1seccion4 == other.form1seccion4 &&
        form1seccion5 == other.form1seccion5 &&
        form1seccion6 == other.form1seccion6 &&
        form1completo == other.form1completo &&
        ampliacioncompleto == other.ampliacioncompleto &&
        form3completo == other.form3completo &&
        form4completo == other.form4completo &&
        form5completo == other.form5completo &&
        form6completo == other.form6completo &&
        form7completo == other.form7completo &&
        form8completo == other.form8completo &&
        form9completo == other.form9completo &&
        form1seccion7 == other.form1seccion7 &&
        form1seccion8 == other.form1seccion8 &&
        form1seccion9 == other.form1seccion9 &&
        emergencia == other.emergencia &&
        idusuario == other.idusuario &&
        carpetaDrive == other.carpetaDrive &&
        listadoimpresiones == other.listadoimpresiones &&
        idcarpeta == other.idcarpeta &&
        linkcarpeta == other.linkcarpeta &&
        updateAt == other.updateAt &&
        updatedAt == other.updatedAt &&
        idusers == other.idusers &&
        iduser == other.iduser &&
        idgrupofamiliar == other.idgrupofamiliar &&
        listEquality.equals(anexoAForm1, other.anexoAForm1) &&
        seccion9 == other.seccion9 &&
        listEquality.equals(grupoConviviente, other.grupoConviviente);
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
        form6,
        form1seccion1,
        form1seccion2,
        form1seccion3,
        form1seccion4,
        form1seccion5,
        form1seccion6,
        form1completo,
        ampliacioncompleto,
        form3completo,
        form4completo,
        form5completo,
        form6completo,
        form7completo,
        form8completo,
        form9completo,
        form1seccion7,
        form1seccion8,
        form1seccion9,
        emergencia,
        idusuario,
        carpetaDrive,
        listadoimpresiones,
        idcarpeta,
        linkcarpeta,
        updateAt,
        updatedAt,
        idusers,
        iduser,
        idgrupofamiliar,
        anexoAForm1,
        seccion9,
        grupoConviviente
      ]);
}

IngresosPerfilStruct createIngresosPerfilStruct({
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
  bool? form6,
  bool? form1seccion1,
  bool? form1seccion2,
  bool? form1seccion3,
  bool? form1seccion4,
  bool? form1seccion5,
  bool? form1seccion6,
  bool? form1completo,
  bool? ampliacioncompleto,
  bool? form3completo,
  bool? form4completo,
  bool? form5completo,
  bool? form6completo,
  bool? form7completo,
  bool? form8completo,
  bool? form9completo,
  bool? form1seccion7,
  bool? form1seccion8,
  bool? form1seccion9,
  String? emergencia,
  String? idusuario,
  bool? carpetaDrive,
  bool? listadoimpresiones,
  String? idcarpeta,
  String? linkcarpeta,
  String? updateAt,
  String? updatedAt,
  String? idusers,
  String? iduser,
  String? idgrupofamiliar,
  Seccion9Struct? seccion9,
}) =>
    IngresosPerfilStruct(
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
      form6: form6,
      form1seccion1: form1seccion1,
      form1seccion2: form1seccion2,
      form1seccion3: form1seccion3,
      form1seccion4: form1seccion4,
      form1seccion5: form1seccion5,
      form1seccion6: form1seccion6,
      form1completo: form1completo,
      ampliacioncompleto: ampliacioncompleto,
      form3completo: form3completo,
      form4completo: form4completo,
      form5completo: form5completo,
      form6completo: form6completo,
      form7completo: form7completo,
      form8completo: form8completo,
      form9completo: form9completo,
      form1seccion7: form1seccion7,
      form1seccion8: form1seccion8,
      form1seccion9: form1seccion9,
      emergencia: emergencia,
      idusuario: idusuario,
      carpetaDrive: carpetaDrive,
      listadoimpresiones: listadoimpresiones,
      idcarpeta: idcarpeta,
      linkcarpeta: linkcarpeta,
      updateAt: updateAt,
      updatedAt: updatedAt,
      idusers: idusers,
      iduser: iduser,
      idgrupofamiliar: idgrupofamiliar,
      seccion9: seccion9 ?? Seccion9Struct(),
    );
