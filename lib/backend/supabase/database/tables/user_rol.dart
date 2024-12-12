import '../database.dart';

class UserRolTable extends SupabaseTable<UserRolRow> {
  @override
  String get tableName => 'user_rol';

  @override
  UserRolRow createRow(Map<String, dynamic> data) => UserRolRow(data);
}

class UserRolRow extends SupabaseDataRow {
  UserRolRow(super.data);

  @override
  SupabaseTable get table => UserRolTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idrol => getField<int>('idrol');
  set idrol(int? value) => setField<int>('idrol', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
