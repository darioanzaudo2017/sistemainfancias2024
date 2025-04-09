import '../database.dart';

class LogExpedienteTable extends SupabaseTable<LogExpedienteRow> {
  @override
  String get tableName => 'log_expediente';

  @override
  LogExpedienteRow createRow(Map<String, dynamic> data) =>
      LogExpedienteRow(data);
}

class LogExpedienteRow extends SupabaseDataRow {
  LogExpedienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogExpedienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get expedienteId => getField<int>('expediente_id');
  set expedienteId(int? value) => setField<int>('expediente_id', value);

  DateTime? get insertedAt => getField<DateTime>('inserted_at');
  set insertedAt(DateTime? value) => setField<DateTime>('inserted_at', value);

  dynamic get newData => getField<dynamic>('new_data');
  set newData(dynamic value) => setField<dynamic>('new_data', value);
}
