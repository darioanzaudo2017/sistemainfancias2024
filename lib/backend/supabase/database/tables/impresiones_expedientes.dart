import '../database.dart';

class ImpresionesExpedientesTable
    extends SupabaseTable<ImpresionesExpedientesRow> {
  @override
  String get tableName => 'impresionesExpedientes';

  @override
  ImpresionesExpedientesRow createRow(Map<String, dynamic> data) =>
      ImpresionesExpedientesRow(data);
}

class ImpresionesExpedientesRow extends SupabaseDataRow {
  ImpresionesExpedientesRow(super.data);

  @override
  SupabaseTable get table => ImpresionesExpedientesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idexpediente => getField<int>('idexpediente');
  set idexpediente(int? value) => setField<int>('idexpediente', value);

  String? get linkcarpeta => getField<String>('linkcarpeta');
  set linkcarpeta(String? value) => setField<String>('linkcarpeta', value);

  String? get idcarpeta => getField<String>('idcarpeta');
  set idcarpeta(String? value) => setField<String>('idcarpeta', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);
}
