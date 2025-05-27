import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _asesorameinto =
          prefs.getStringList('ff_asesorameinto') ?? _asesorameinto;
    });
    _safeInit(() {
      _autorizacion = prefs.getString('ff_autorizacion') ?? _autorizacion;
    });
    _safeInit(() {
      _content = prefs.getString('ff_content') ?? _content;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DatospersonasStruct> _listaprueba = [
    DatospersonasStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"sdfsdfsdf\",\"apellido\":\"sdfsdfsdf\",\"vinculo\":\"sdfsdf\",\"fecha_nacimiento\":\"Hello World\"}')),
    DatospersonasStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"ertert\",\"apellido\":\"ertertert\",\"vinculo\":\"ertertert\",\"fecha_nacimiento\":\"Hello World\"}')),
    DatospersonasStruct.fromSerializableMap(jsonDecode(
        '{\"nombre\":\"Hello World\",\"apellido\":\"Hello World\",\"vinculo\":\"Hello World\",\"fecha_nacimiento\":\"Hello World\"}'))
  ];
  List<DatospersonasStruct> get listaprueba => _listaprueba;
  set listaprueba(List<DatospersonasStruct> value) {
    _listaprueba = value;
  }

  void addToListaprueba(DatospersonasStruct value) {
    listaprueba.add(value);
  }

  void removeFromListaprueba(DatospersonasStruct value) {
    listaprueba.remove(value);
  }

  void removeAtIndexFromListaprueba(int index) {
    listaprueba.removeAt(index);
  }

  void updateListapruebaAtIndex(
    int index,
    DatospersonasStruct Function(DatospersonasStruct) updateFn,
  ) {
    listaprueba[index] = updateFn(_listaprueba[index]);
  }

  void insertAtIndexInListaprueba(int index, DatospersonasStruct value) {
    listaprueba.insert(index, value);
  }

  List<String> _asesorameinto = ['Asesoramiento', 'Derivacion'];
  List<String> get asesorameinto => _asesorameinto;
  set asesorameinto(List<String> value) {
    _asesorameinto = value;
    prefs.setStringList('ff_asesorameinto', value);
  }

  void addToAsesorameinto(String value) {
    asesorameinto.add(value);
    prefs.setStringList('ff_asesorameinto', _asesorameinto);
  }

  void removeFromAsesorameinto(String value) {
    asesorameinto.remove(value);
    prefs.setStringList('ff_asesorameinto', _asesorameinto);
  }

  void removeAtIndexFromAsesorameinto(int index) {
    asesorameinto.removeAt(index);
    prefs.setStringList('ff_asesorameinto', _asesorameinto);
  }

  void updateAsesorameintoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    asesorameinto[index] = updateFn(_asesorameinto[index]);
    prefs.setStringList('ff_asesorameinto', _asesorameinto);
  }

  void insertAtIndexInAsesorameinto(int index, String value) {
    asesorameinto.insert(index, value);
    prefs.setStringList('ff_asesorameinto', _asesorameinto);
  }

  List<GraficoStruct> _listagrafico = [
    GraficoStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"a\",\"value\":\"1\"}')),
    GraficoStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"b\",\"value\":\"3\"}')),
    GraficoStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"c\",\"value\":\"3\"}')),
    GraficoStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"d\",\"value\":\"5\"}')),
    GraficoStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"e\",\"value\":\"8\"}'))
  ];
  List<GraficoStruct> get listagrafico => _listagrafico;
  set listagrafico(List<GraficoStruct> value) {
    _listagrafico = value;
  }

  void addToListagrafico(GraficoStruct value) {
    listagrafico.add(value);
  }

  void removeFromListagrafico(GraficoStruct value) {
    listagrafico.remove(value);
  }

  void removeAtIndexFromListagrafico(int index) {
    listagrafico.removeAt(index);
  }

  void updateListagraficoAtIndex(
    int index,
    GraficoStruct Function(GraficoStruct) updateFn,
  ) {
    listagrafico[index] = updateFn(_listagrafico[index]);
  }

  void insertAtIndexInListagrafico(int index, GraficoStruct value) {
    listagrafico.insert(index, value);
  }

  String _spd = '';
  String get spd => _spd;
  set spd(String value) {
    _spd = value;
  }

  String _user = '';
  String get user => _user;
  set user(String value) {
    _user = value;
  }

  String _autorizacion = 'Bearer re_dWNcVrxw_HqSnrzCW7FWfZqsPrGKYYzW2';
  String get autorizacion => _autorizacion;
  set autorizacion(String value) {
    _autorizacion = value;
    prefs.setString('ff_autorizacion', value);
  }

  String _content = 'application/json';
  String get content => _content;
  set content(String value) {
    _content = value;
    prefs.setString('ff_content', value);
  }

  List<Apiexpediente6Struct> _listaexpapi = [];
  List<Apiexpediente6Struct> get listaexpapi => _listaexpapi;
  set listaexpapi(List<Apiexpediente6Struct> value) {
    _listaexpapi = value;
  }

  void addToListaexpapi(Apiexpediente6Struct value) {
    listaexpapi.add(value);
  }

  void removeFromListaexpapi(Apiexpediente6Struct value) {
    listaexpapi.remove(value);
  }

  void removeAtIndexFromListaexpapi(int index) {
    listaexpapi.removeAt(index);
  }

  void updateListaexpapiAtIndex(
    int index,
    Apiexpediente6Struct Function(Apiexpediente6Struct) updateFn,
  ) {
    listaexpapi[index] = updateFn(_listaexpapi[index]);
  }

  void insertAtIndexInListaexpapi(int index, Apiexpediente6Struct value) {
    listaexpapi.insert(index, value);
  }

  List<String> _listalinksenaf = [];
  List<String> get listalinksenaf => _listalinksenaf;
  set listalinksenaf(List<String> value) {
    _listalinksenaf = value;
  }

  void addToListalinksenaf(String value) {
    listalinksenaf.add(value);
  }

  void removeFromListalinksenaf(String value) {
    listalinksenaf.remove(value);
  }

  void removeAtIndexFromListalinksenaf(int index) {
    listalinksenaf.removeAt(index);
  }

  void updateListalinksenafAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listalinksenaf[index] = updateFn(_listalinksenaf[index]);
  }

  void insertAtIndexInListalinksenaf(int index, String value) {
    listalinksenaf.insert(index, value);
  }

  List<String> _listaemails = [];
  List<String> get listaemails => _listaemails;
  set listaemails(List<String> value) {
    _listaemails = value;
  }

  void addToListaemails(String value) {
    listaemails.add(value);
  }

  void removeFromListaemails(String value) {
    listaemails.remove(value);
  }

  void removeAtIndexFromListaemails(int index) {
    listaemails.removeAt(index);
  }

  void updateListaemailsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaemails[index] = updateFn(_listaemails[index]);
  }

  void insertAtIndexInListaemails(int index, String value) {
    listaemails.insert(index, value);
  }

  List<GrupoconvivienteStruct> _grupoconvivientelist = [];
  List<GrupoconvivienteStruct> get grupoconvivientelist =>
      _grupoconvivientelist;
  set grupoconvivientelist(List<GrupoconvivienteStruct> value) {
    _grupoconvivientelist = value;
  }

  void addToGrupoconvivientelist(GrupoconvivienteStruct value) {
    grupoconvivientelist.add(value);
  }

  void removeFromGrupoconvivientelist(GrupoconvivienteStruct value) {
    grupoconvivientelist.remove(value);
  }

  void removeAtIndexFromGrupoconvivientelist(int index) {
    grupoconvivientelist.removeAt(index);
  }

  void updateGrupoconvivientelistAtIndex(
    int index,
    GrupoconvivienteStruct Function(GrupoconvivienteStruct) updateFn,
  ) {
    grupoconvivientelist[index] = updateFn(_grupoconvivientelist[index]);
  }

  void insertAtIndexInGrupoconvivientelist(
      int index, GrupoconvivienteStruct value) {
    grupoconvivientelist.insert(index, value);
  }

  int _idrol = 0;
  int get idrol => _idrol;
  set idrol(int value) {
    _idrol = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
