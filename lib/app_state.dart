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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ApiexpedienteStruct> _listaexpediente = [];
  List<ApiexpedienteStruct> get listaexpediente => _listaexpediente;
  set listaexpediente(List<ApiexpedienteStruct> value) {
    _listaexpediente = value;
  }

  void addToListaexpediente(ApiexpedienteStruct value) {
    listaexpediente.add(value);
  }

  void removeFromListaexpediente(ApiexpedienteStruct value) {
    listaexpediente.remove(value);
  }

  void removeAtIndexFromListaexpediente(int index) {
    listaexpediente.removeAt(index);
  }

  void updateListaexpedienteAtIndex(
    int index,
    ApiexpedienteStruct Function(ApiexpedienteStruct) updateFn,
  ) {
    listaexpediente[index] = updateFn(_listaexpediente[index]);
  }

  void insertAtIndexInListaexpediente(int index, ApiexpedienteStruct value) {
    listaexpediente.insert(index, value);
  }

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
