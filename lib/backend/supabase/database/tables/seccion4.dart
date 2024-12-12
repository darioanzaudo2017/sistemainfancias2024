import '../database.dart';

class Seccion4Table extends SupabaseTable<Seccion4Row> {
  @override
  String get tableName => 'seccion4';

  @override
  Seccion4Row createRow(Map<String, dynamic> data) => Seccion4Row(data);
}

class Seccion4Row extends SupabaseDataRow {
  Seccion4Row(super.data);

  @override
  SupabaseTable get table => Seccion4Table();

  int get idSec4 => getField<int>('idSec4')!;
  set idSec4(int value) => setField<int>('idSec4', value);

  String? get auh => getField<String>('auh');
  set auh(String? value) => setField<String>('auh', value);

  String? get paicor => getField<String>('paicor');
  set paicor(String? value) => setField<String>('paicor', value);

  String? get tarjeta => getField<String>('tarjeta');
  set tarjeta(String? value) => setField<String>('tarjeta', value);

  String? get pension => getField<String>('pension');
  set pension(String? value) => setField<String>('pension', value);

  String? get cualPen => getField<String>('cualPen');
  set cualPen(String? value) => setField<String>('cualPen', value);

  String? get otros => getField<String>('otros');
  set otros(String? value) => setField<String>('otros', value);

  String? get actividad => getField<String>('actividad');
  set actividad(String? value) => setField<String>('actividad', value);

  bool? get agua => getField<bool>('agua');
  set agua(bool? value) => setField<bool>('agua', value);

  String? get aguaObs => getField<String>('aguaObs');
  set aguaObs(String? value) => setField<String>('aguaObs', value);

  bool? get cloacas => getField<bool>('cloacas');
  set cloacas(bool? value) => setField<bool>('cloacas', value);

  String? get cloacasObs => getField<String>('cloacasObs');
  set cloacasObs(String? value) => setField<String>('cloacasObs', value);

  bool? get gas => getField<bool>('gas');
  set gas(bool? value) => setField<bool>('gas', value);

  String? get gasObs => getField<String>('gasObs');
  set gasObs(String? value) => setField<String>('gasObs', value);

  bool? get electricidad => getField<bool>('electricidad');
  set electricidad(bool? value) => setField<bool>('electricidad', value);

  String? get electricidadObs => getField<String>('electricidadObs');
  set electricidadObs(String? value) =>
      setField<String>('electricidadObs', value);

  bool? get internet => getField<bool>('internet');
  set internet(bool? value) => setField<bool>('internet', value);

  String? get internetObs => getField<String>('internetObs');
  set internetObs(String? value) => setField<String>('internetObs', value);

  bool? get paa => getField<bool>('paa');
  set paa(bool? value) => setField<bool>('paa', value);

  String? get paaObs => getField<String>('paaObs');
  set paaObs(String? value) => setField<String>('paaObs', value);

  bool? get pmv => getField<bool>('pmv');
  set pmv(bool? value) => setField<bool>('pmv', value);

  String? get pmvObs => getField<String>('pmvObs');
  set pmvObs(String? value) => setField<String>('pmvObs', value);

  bool? get ssp => getField<bool>('ssp');
  set ssp(bool? value) => setField<bool>('ssp', value);

  String? get sspObs => getField<String>('sspObs');
  set sspObs(String? value) => setField<String>('sspObs', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idExpediente => getField<int>('idExpediente');
  set idExpediente(int? value) => setField<int>('idExpediente', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
