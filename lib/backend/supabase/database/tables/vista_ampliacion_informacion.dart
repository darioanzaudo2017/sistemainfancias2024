import '../database.dart';

class VistaAmpliacionInformacionTable
    extends SupabaseTable<VistaAmpliacionInformacionRow> {
  @override
  String get tableName => 'vista_ampliacion_informacion';

  @override
  VistaAmpliacionInformacionRow createRow(Map<String, dynamic> data) =>
      VistaAmpliacionInformacionRow(data);
}

class VistaAmpliacionInformacionRow extends SupabaseDataRow {
  VistaAmpliacionInformacionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaAmpliacionInformacionTable();

  int? get historialId => getField<int>('historial_id');
  set historialId(int? value) => setField<int>('historial_id', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  int? get ampliacionId => getField<int>('ampliacion_id');
  set ampliacionId(int? value) => setField<int>('ampliacion_id', value);

  String? get noment => getField<String>('noment');
  set noment(String? value) => setField<String>('noment', value);

  String? get apeent => getField<String>('apeent');
  set apeent(String? value) => setField<String>('apeent', value);

  int? get dnient => getField<int>('dnient');
  set dnient(int? value) => setField<int>('dnient', value);

  String? get linkconcurrenciaadulto =>
      getField<String>('linkconcurrenciaadulto');
  set linkconcurrenciaadulto(String? value) =>
      setField<String>('linkconcurrenciaadulto', value);

  String? get linkvisitaadulto => getField<String>('linkvisitaadulto');
  set linkvisitaadulto(String? value) =>
      setField<String>('linkvisitaadulto', value);

  String? get linkconcurrenciaNNyA => getField<String>('linkconcurrenciaNNyA');
  set linkconcurrenciaNNyA(String? value) =>
      setField<String>('linkconcurrenciaNNyA', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  String? get tipoampliacion => getField<String>('tipoampliacion');
  set tipoampliacion(String? value) =>
      setField<String>('tipoampliacion', value);

  String? get destinatarios => getField<String>('destinatarios');
  set destinatarios(String? value) => setField<String>('destinatarios', value);
}
