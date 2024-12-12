import '../database.dart';

class Seccion1Table extends SupabaseTable<Seccion1Row> {
  @override
  String get tableName => 'seccion1';

  @override
  Seccion1Row createRow(Map<String, dynamic> data) => Seccion1Row(data);
}

class Seccion1Row extends SupabaseDataRow {
  Seccion1Row(super.data);

  @override
  SupabaseTable get table => Seccion1Table();

  int get idSec1 => getField<int>('idSec1')!;
  set idSec1(int value) => setField<int>('idSec1', value);

  String? get lugarNac => getField<String>('lugarNac');
  set lugarNac(String? value) => setField<String>('lugarNac', value);

  String? get domicilio => getField<String>('domicilio');
  set domicilio(String? value) => setField<String>('domicilio', value);

  double? get telefono => getField<double>('telefono');
  set telefono(double? value) => setField<double>('telefono', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get adultoRes => getField<String>('adultoRes');
  set adultoRes(String? value) => setField<String>('adultoRes', value);

  String? get rnp => getField<String>('rnp');
  set rnp(String? value) => setField<String>('rnp', value);

  String? get centro => getField<String>('centro');
  set centro(String? value) => setField<String>('centro', value);

  String? get historiaCli => getField<String>('historiaCli');
  set historiaCli(String? value) => setField<String>('historiaCli', value);

  String? get cud => getField<String>('cud');
  set cud(String? value) => setField<String>('cud', value);

  String? get obraSoc => getField<String>('obraSoc');
  set obraSoc(String? value) => setField<String>('obraSoc', value);

  String? get escuela => getField<String>('escuela');
  set escuela(String? value) => setField<String>('escuela', value);

  String? get cursoEsc => getField<String>('cursoEsc');
  set cursoEsc(String? value) => setField<String>('cursoEsc', value);

  String? get domEsc => getField<String>('domEsc');
  set domEsc(String? value) => setField<String>('domEsc', value);

  double? get telEsc => getField<double>('telEsc');
  set telEsc(double? value) => setField<double>('telEsc', value);

  String? get cocurrenciaEsc => getField<String>('cocurrenciaEsc');
  set cocurrenciaEsc(String? value) =>
      setField<String>('cocurrenciaEsc', value);

  String? get nivelAlcanzado => getField<String>('nivelAlcanzado');
  set nivelAlcanzado(String? value) =>
      setField<String>('nivelAlcanzado', value);

  String? get referente => getField<String>('referente');
  set referente(String? value) => setField<String>('referente', value);

  String? get trabaja => getField<String>('trabaja');
  set trabaja(String? value) => setField<String>('trabaja', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  String? get turno => getField<String>('turno');
  set turno(String? value) => setField<String>('turno', value);

  String? get trabajoObs => getField<String>('trabajoObs');
  set trabajoObs(String? value) => setField<String>('trabajoObs', value);

  String? get matriculo => getField<String>('Matriculo');
  set matriculo(String? value) => setField<String>('Matriculo', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  String? get tipoFamilia => getField<String>('TipoFamilia');
  set tipoFamilia(String? value) => setField<String>('TipoFamilia', value);
}
