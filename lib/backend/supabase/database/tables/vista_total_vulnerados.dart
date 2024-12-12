import '../database.dart';

class VistaTotalVulneradosTable extends SupabaseTable<VistaTotalVulneradosRow> {
  @override
  String get tableName => 'vista_total_vulnerados';

  @override
  VistaTotalVulneradosRow createRow(Map<String, dynamic> data) =>
      VistaTotalVulneradosRow(data);
}

class VistaTotalVulneradosRow extends SupabaseDataRow {
  VistaTotalVulneradosRow(super.data);

  @override
  SupabaseTable get table => VistaTotalVulneradosTable();

  String? get derecho => getField<String>('Derecho');
  set derecho(String? value) => setField<String>('Derecho', value);

  String? get subcategoria => getField<String>('Subcategoria');
  set subcategoria(String? value) => setField<String>('Subcategoria', value);

  String? get formulario => getField<String>('formulario');
  set formulario(String? value) => setField<String>('formulario', value);

  int? get totalVulnerados => getField<int>('total_vulnerados');
  set totalVulnerados(int? value) => setField<int>('total_vulnerados', value);
}
