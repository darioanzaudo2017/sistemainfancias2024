import '../database.dart';

class NNyATable extends SupabaseTable<NNyARow> {
  @override
  String get tableName => 'NNyA';

  @override
  NNyARow createRow(Map<String, dynamic> data) => NNyARow(data);
}

class NNyARow extends SupabaseDataRow {
  NNyARow(super.data);

  @override
  SupabaseTable get table => NNyATable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombre => getField<String>('Nombre');
  set nombre(String? value) => setField<String>('Nombre', value);

  String? get apellido => getField<String>('Apellido');
  set apellido(String? value) => setField<String>('Apellido', value);

  int? get dni => getField<int>('DNI');
  set dni(int? value) => setField<int>('DNI', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  int? get idexppropio => getField<int>('idexppropio');
  set idexppropio(int? value) => setField<int>('idexppropio', value);
}
