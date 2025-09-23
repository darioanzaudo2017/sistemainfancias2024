import '../database.dart';

class ListaPersonasActaTable extends SupabaseTable<ListaPersonasActaRow> {
  @override
  String get tableName => 'lista_personas_acta';

  @override
  ListaPersonasActaRow createRow(Map<String, dynamic> data) =>
      ListaPersonasActaRow(data);
}

class ListaPersonasActaRow extends SupabaseDataRow {
  ListaPersonasActaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListaPersonasActaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nombres => getField<String>('Nombres');
  set nombres(String? value) => setField<String>('Nombres', value);

  String? get apellidos => getField<String>('Apellidos');
  set apellidos(String? value) => setField<String>('Apellidos', value);

  double? get dni => getField<double>('Dni');
  set dni(double? value) => setField<double>('Dni', value);

  int? get idform7 => getField<int>('idform7');
  set idform7(int? value) => setField<int>('idform7', value);
}
