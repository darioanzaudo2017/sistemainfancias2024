import '../database.dart';

class GrupoConvivienteTable extends SupabaseTable<GrupoConvivienteRow> {
  @override
  String get tableName => 'grupo_conviviente';

  @override
  GrupoConvivienteRow createRow(Map<String, dynamic> data) =>
      GrupoConvivienteRow(data);
}

class GrupoConvivienteRow extends SupabaseDataRow {
  GrupoConvivienteRow(super.data);

  @override
  SupabaseTable get table => GrupoConvivienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get vinculo => getField<String>('vinculo');
  set vinculo(String? value) => setField<String>('vinculo', value);

  int? get dni => getField<int>('dni');
  set dni(int? value) => setField<int>('dni', value);

  DateTime? get fechaNacimiento => getField<DateTime>('fecha_nacimiento');
  set fechaNacimiento(DateTime? value) =>
      setField<DateTime>('fecha_nacimiento', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexpe => getField<int>('idexpe');
  set idexpe(int? value) => setField<int>('idexpe', value);

  String? get conviviente => getField<String>('conviviente');
  set conviviente(String? value) => setField<String>('conviviente', value);

  int? get idnnyaGrupo => getField<int>('idnnyaGrupo');
  set idnnyaGrupo(int? value) => setField<int>('idnnyaGrupo', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  int? get idexppropio => getField<int>('idexppropio');
  set idexppropio(int? value) => setField<int>('idexppropio', value);

  int? get idnnya => getField<int>('idnnya');
  set idnnya(int? value) => setField<int>('idnnya', value);
}
