import '../database.dart';

class ExpedienteTable extends SupabaseTable<ExpedienteRow> {
  @override
  String get tableName => 'expediente';

  @override
  ExpedienteRow createRow(Map<String, dynamic> data) => ExpedienteRow(data);
}

class ExpedienteRow extends SupabaseDataRow {
  ExpedienteRow(super.data);

  @override
  SupabaseTable get table => ExpedienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get expediente => getField<String>('expediente')!;
  set expediente(String value) => setField<String>('expediente', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  int? get dni => getField<int>('dni');
  set dni(int? value) => setField<int>('dni', value);

  String? get spd => getField<String>('spd');
  set spd(String? value) => setField<String>('spd', value);

  String? get derivacion => getField<String>('derivacion');
  set derivacion(String? value) => setField<String>('derivacion', value);

  String? get canalIngr => getField<String>('canalIngr');
  set canalIngr(String? value) => setField<String>('canalIngr', value);

  String? get epecificar => getField<String>('epecificar');
  set epecificar(String? value) => setField<String>('epecificar', value);

  String? get actuacion => getField<String>('actuacion');
  set actuacion(String? value) => setField<String>('actuacion', value);

  String? get profesional => getField<String>('profesional');
  set profesional(String? value) => setField<String>('profesional', value);

  DateTime? get fechaNac => getField<DateTime>('fechaNac');
  set fechaNac(DateTime? value) => setField<DateTime>('fechaNac', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  bool? get estado => getField<bool>('estado');
  set estado(bool? value) => setField<bool>('estado', value);

  int? get idusuario => getField<int>('idusuario');
  set idusuario(int? value) => setField<int>('idusuario', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
