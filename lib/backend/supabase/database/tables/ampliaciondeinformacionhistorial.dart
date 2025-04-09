import '../database.dart';

class AmpliaciondeinformacionhistorialTable
    extends SupabaseTable<AmpliaciondeinformacionhistorialRow> {
  @override
  String get tableName => 'ampliaciondeinformacionhistorial';

  @override
  AmpliaciondeinformacionhistorialRow createRow(Map<String, dynamic> data) =>
      AmpliaciondeinformacionhistorialRow(data);
}

class AmpliaciondeinformacionhistorialRow extends SupabaseDataRow {
  AmpliaciondeinformacionhistorialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AmpliaciondeinformacionhistorialTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get modalidaddeampliacion =>
      getField<String>('modalidaddeampliacion');
  set modalidaddeampliacion(String? value) =>
      setField<String>('modalidaddeampliacion', value);

  String? get destinatarios => getField<String>('destinatarios');
  set destinatarios(String? value) => setField<String>('destinatarios', value);

  String? get asistio => getField<String>('asistio');
  set asistio(String? value) => setField<String>('asistio', value);

  int? get idampliacion => getField<int>('idampliacion');
  set idampliacion(int? value) => setField<int>('idampliacion', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexpe => getField<int>('idexpe');
  set idexpe(int? value) => setField<int>('idexpe', value);
}
