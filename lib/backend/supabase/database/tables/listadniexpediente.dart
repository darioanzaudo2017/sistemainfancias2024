import '../database.dart';

class ListadniexpedienteTable extends SupabaseTable<ListadniexpedienteRow> {
  @override
  String get tableName => 'listadniexpediente';

  @override
  ListadniexpedienteRow createRow(Map<String, dynamic> data) =>
      ListadniexpedienteRow(data);
}

class ListadniexpedienteRow extends SupabaseDataRow {
  ListadniexpedienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListadniexpedienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  int? get dni => getField<int>('dni');
  set dni(int? value) => setField<int>('dni', value);

  String? get nombreB => getField<String>('nombre_b');
  set nombreB(String? value) => setField<String>('nombre_b', value);

  String? get apellidoB => getField<String>('apellido_b');
  set apellidoB(String? value) => setField<String>('apellido_b', value);

  String? get expedienteB => getField<String>('expediente_b');
  set expedienteB(String? value) => setField<String>('expediente_b', value);
}
