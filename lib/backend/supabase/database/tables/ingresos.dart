import '../database.dart';

class IngresosTable extends SupabaseTable<IngresosRow> {
  @override
  String get tableName => 'ingresos';

  @override
  IngresosRow createRow(Map<String, dynamic> data) => IngresosRow(data);
}

class IngresosRow extends SupabaseDataRow {
  IngresosRow(super.data);

  @override
  SupabaseTable get table => IngresosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get form1 => getField<bool>('form1');
  set form1(bool? value) => setField<bool>('form1', value);

  bool? get form2 => getField<bool>('Form2');
  set form2(bool? value) => setField<bool>('Form2', value);

  bool? get form3 => getField<bool>('Form3');
  set form3(bool? value) => setField<bool>('Form3', value);

  bool? get form4 => getField<bool>('form4');
  set form4(bool? value) => setField<bool>('form4', value);

  bool? get form5 => getField<bool>('form5');
  set form5(bool? value) => setField<bool>('form5', value);

  bool? get form7 => getField<bool>('Form7');
  set form7(bool? value) => setField<bool>('Form7', value);

  bool? get form8 => getField<bool>('form8');
  set form8(bool? value) => setField<bool>('form8', value);

  bool? get form9 => getField<bool>('form9');
  set form9(bool? value) => setField<bool>('form9', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  DateTime? get fechacierre => getField<DateTime>('fechacierre');
  set fechacierre(DateTime? value) => setField<DateTime>('fechacierre', value);

  String? get motivocierre => getField<String>('Motivocierre');
  set motivocierre(String? value) => setField<String>('Motivocierre', value);

  String? get observacioncierre => getField<String>('observacioncierre');
  set observacioncierre(String? value) =>
      setField<String>('observacioncierre', value);

  String? get estado => getField<String>('Estado');
  set estado(String? value) => setField<String>('Estado', value);

  bool? get form6 => getField<bool>('form6');
  set form6(bool? value) => setField<bool>('form6', value);

  bool? get form1seccion1 => getField<bool>('form1seccion1');
  set form1seccion1(bool? value) => setField<bool>('form1seccion1', value);

  bool? get form1seccion2 => getField<bool>('form1seccion2');
  set form1seccion2(bool? value) => setField<bool>('form1seccion2', value);

  bool? get form1seccion3 => getField<bool>('form1seccion3');
  set form1seccion3(bool? value) => setField<bool>('form1seccion3', value);

  bool? get form1seccion4 => getField<bool>('form1seccion4');
  set form1seccion4(bool? value) => setField<bool>('form1seccion4', value);

  bool? get form1seccion5 => getField<bool>('form1seccion5');
  set form1seccion5(bool? value) => setField<bool>('form1seccion5', value);

  bool? get form1seccion6 => getField<bool>('form1seccion6');
  set form1seccion6(bool? value) => setField<bool>('form1seccion6', value);

  bool? get form1completo => getField<bool>('form1completo');
  set form1completo(bool? value) => setField<bool>('form1completo', value);

  bool? get form2completo => getField<bool>('form2completo');
  set form2completo(bool? value) => setField<bool>('form2completo', value);

  bool? get form3completo => getField<bool>('form3completo');
  set form3completo(bool? value) => setField<bool>('form3completo', value);

  bool? get form4completo => getField<bool>('form4completo');
  set form4completo(bool? value) => setField<bool>('form4completo', value);

  bool? get form5completo => getField<bool>('form5completo');
  set form5completo(bool? value) => setField<bool>('form5completo', value);

  bool? get form6completo => getField<bool>('form6completo');
  set form6completo(bool? value) => setField<bool>('form6completo', value);

  bool? get form7completo => getField<bool>('form7completo');
  set form7completo(bool? value) => setField<bool>('form7completo', value);

  bool? get form8completo => getField<bool>('form8completo');
  set form8completo(bool? value) => setField<bool>('form8completo', value);

  bool? get form9completo => getField<bool>('form9completo');
  set form9completo(bool? value) => setField<bool>('form9completo', value);

  bool? get form1seccion7 => getField<bool>('form1seccion7');
  set form1seccion7(bool? value) => setField<bool>('form1seccion7', value);

  bool? get form1seccion8 => getField<bool>('form1seccion8');
  set form1seccion8(bool? value) => setField<bool>('form1seccion8', value);

  bool? get form1seccion9 => getField<bool>('form1seccion9');
  set form1seccion9(bool? value) => setField<bool>('form1seccion9', value);

  String? get emergencia => getField<String>('emergencia');
  set emergencia(String? value) => setField<String>('emergencia', value);

  int? get idusuario => getField<int>('idusuario');
  set idusuario(int? value) => setField<int>('idusuario', value);

  bool? get carpetaDrive => getField<bool>('carpetaDrive');
  set carpetaDrive(bool? value) => setField<bool>('carpetaDrive', value);

  bool? get listadoimpresiones => getField<bool>('listadoimpresiones');
  set listadoimpresiones(bool? value) =>
      setField<bool>('listadoimpresiones', value);

  String? get idcarpeta => getField<String>('idcarpeta');
  set idcarpeta(String? value) => setField<String>('idcarpeta', value);

  String? get linkcarpeta => getField<String>('linkcarpeta');
  set linkcarpeta(String? value) => setField<String>('linkcarpeta', value);

  DateTime? get updateAt => getField<DateTime>('update_at');
  set updateAt(DateTime? value) => setField<DateTime>('update_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
