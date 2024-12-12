import '../database.dart';

class GrupofamiliarexpedientesTable
    extends SupabaseTable<GrupofamiliarexpedientesRow> {
  @override
  String get tableName => 'grupofamiliarexpedientes';

  @override
  GrupofamiliarexpedientesRow createRow(Map<String, dynamic> data) =>
      GrupofamiliarexpedientesRow(data);
}

class GrupofamiliarexpedientesRow extends SupabaseDataRow {
  GrupofamiliarexpedientesRow(super.data);

  @override
  SupabaseTable get table => GrupofamiliarexpedientesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idgrupofamliar => getField<int>('idgrupofamliar');
  set idgrupofamliar(int? value) => setField<int>('idgrupofamliar', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  int? get expedienteprincipal => getField<int>('expedienteprincipal');
  set expedienteprincipal(int? value) =>
      setField<int>('expedienteprincipal', value);
}
