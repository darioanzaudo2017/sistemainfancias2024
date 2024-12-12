import '../database.dart';

class VistaNnyaexpgruTable extends SupabaseTable<VistaNnyaexpgruRow> {
  @override
  String get tableName => 'vista_nnyaexpgru';

  @override
  VistaNnyaexpgruRow createRow(Map<String, dynamic> data) =>
      VistaNnyaexpgruRow(data);
}

class VistaNnyaexpgruRow extends SupabaseDataRow {
  VistaNnyaexpgruRow(super.data);

  @override
  SupabaseTable get table => VistaNnyaexpgruTable();

  int? get idNNyAExpGru => getField<int>('id_NNyAExpGru');
  set idNNyAExpGru(int? value) => setField<int>('id_NNyAExpGru', value);

  String? get detalleNNyAExpGru => getField<String>('detalle_NNyAExpGru');
  set detalleNNyAExpGru(String? value) =>
      setField<String>('detalle_NNyAExpGru', value);

  int? get idNNyA => getField<int>('id_NNyA');
  set idNNyA(int? value) => setField<int>('id_NNyA', value);

  String? get nombresNNyA => getField<String>('Nombres_NNyA');
  set nombresNNyA(String? value) => setField<String>('Nombres_NNyA', value);

  String? get apellidosNNyA => getField<String>('Apellidos_NNyA');
  set apellidosNNyA(String? value) => setField<String>('Apellidos_NNyA', value);

  int? get dNINNyA => getField<int>('DNI_NNyA');
  set dNINNyA(int? value) => setField<int>('DNI_NNyA', value);

  int? get idExpediente => getField<int>('id_Expediente');
  set idExpediente(int? value) => setField<int>('id_Expediente', value);

  String? get sPDExpediente => getField<String>('SPD_Expediente');
  set sPDExpediente(String? value) => setField<String>('SPD_Expediente', value);

  String? get expedienteExpediente => getField<String>('expediente_Expediente');
  set expedienteExpediente(String? value) =>
      setField<String>('expediente_Expediente', value);
}
