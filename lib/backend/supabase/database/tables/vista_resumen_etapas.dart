import '../database.dart';

class VistaResumenEtapasTable extends SupabaseTable<VistaResumenEtapasRow> {
  @override
  String get tableName => 'vista_resumen_etapas';

  @override
  VistaResumenEtapasRow createRow(Map<String, dynamic> data) =>
      VistaResumenEtapasRow(data);
}

class VistaResumenEtapasRow extends SupabaseDataRow {
  VistaResumenEtapasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaResumenEtapasTable();

  String? get etapa => getField<String>('etapa');
  set etapa(String? value) => setField<String>('etapa', value);

  int? get conteo => getField<int>('conteo');
  set conteo(int? value) => setField<int>('conteo', value);
}
