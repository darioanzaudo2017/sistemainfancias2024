import '../database.dart';

class TIntitucionesSaludTable extends SupabaseTable<TIntitucionesSaludRow> {
  @override
  String get tableName => 't_intituciones_salud';

  @override
  TIntitucionesSaludRow createRow(Map<String, dynamic> data) =>
      TIntitucionesSaludRow(data);
}

class TIntitucionesSaludRow extends SupabaseDataRow {
  TIntitucionesSaludRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TIntitucionesSaludTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get institucion => getField<String>('Institucion');
  set institucion(String? value) => setField<String>('Institucion', value);

  int? get nunHisClinica => getField<int>('Nun_his_clinica');
  set nunHisClinica(int? value) => setField<int>('Nun_his_clinica', value);

  int? get idSec1 => getField<int>('idSec1');
  set idSec1(int? value) => setField<int>('idSec1', value);

  int? get idIngreso => getField<int>('idIngreso');
  set idIngreso(int? value) => setField<int>('idIngreso', value);

  int? get idexp => getField<int>('Idexp');
  set idexp(int? value) => setField<int>('Idexp', value);
}
