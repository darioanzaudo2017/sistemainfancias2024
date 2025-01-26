import '../database.dart';

class VistaUsuariosRolesTable extends SupabaseTable<VistaUsuariosRolesRow> {
  @override
  String get tableName => 'vista_usuarios_roles';

  @override
  VistaUsuariosRolesRow createRow(Map<String, dynamic> data) =>
      VistaUsuariosRolesRow(data);
}

class VistaUsuariosRolesRow extends SupabaseDataRow {
  VistaUsuariosRolesRow(super.data);

  @override
  SupabaseTable get table => VistaUsuariosRolesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nombreCompleto => getField<String>('nombreCompleto');
  set nombreCompleto(String? value) =>
      setField<String>('nombreCompleto', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  String? get spd => getField<String>('SPD');
  set spd(String? value) => setField<String>('SPD', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  int? get rolId => getField<int>('rol_id');
  set rolId(int? value) => setField<int>('rol_id', value);

  String? get rolNombre => getField<String>('rol_nombre');
  set rolNombre(String? value) => setField<String>('rol_nombre', value);
}
