import '../database.dart';

class ListaDerechosVulneradosexpedienteTable
    extends SupabaseTable<ListaDerechosVulneradosexpedienteRow> {
  @override
  String get tableName => 'ListaDerechosVulneradosexpediente';

  @override
  ListaDerechosVulneradosexpedienteRow createRow(Map<String, dynamic> data) =>
      ListaDerechosVulneradosexpedienteRow(data);
}

class ListaDerechosVulneradosexpedienteRow extends SupabaseDataRow {
  ListaDerechosVulneradosexpedienteRow(super.data);

  @override
  SupabaseTable get table => ListaDerechosVulneradosexpedienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get derecho => getField<String>('Derecho');
  set derecho(String? value) => setField<String>('Derecho', value);

  String? get subcategoria => getField<String>('Subcategoria');
  set subcategoria(String? value) => setField<String>('Subcategoria', value);

  DateTime? get fecha => getField<DateTime>('Fecha');
  set fecha(DateTime? value) => setField<DateTime>('Fecha', value);

  String? get principal => getField<String>('principal');
  set principal(String? value) => setField<String>('principal', value);

  int? get idexp => getField<int>('idexp');
  set idexp(int? value) => setField<int>('idexp', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  String? get formulario => getField<String>('formulario');
  set formulario(String? value) => setField<String>('formulario', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
