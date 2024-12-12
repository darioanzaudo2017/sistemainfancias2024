import '../database.dart';

class ResuestasForm6Table extends SupabaseTable<ResuestasForm6Row> {
  @override
  String get tableName => 'resuestasForm6';

  @override
  ResuestasForm6Row createRow(Map<String, dynamic> data) =>
      ResuestasForm6Row(data);
}

class ResuestasForm6Row extends SupabaseDataRow {
  ResuestasForm6Row(super.data);

  @override
  SupabaseTable get table => ResuestasForm6Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get fecharespuesta => getField<DateTime>('fecharespuesta');
  set fecharespuesta(DateTime? value) =>
      setField<DateTime>('fecharespuesta', value);

  String? get respuesta1 => getField<String>('respuesta1');
  set respuesta1(String? value) => setField<String>('respuesta1', value);

  String? get espeficarotrorec => getField<String>('Espeficarotrorec');
  set espeficarotrorec(String? value) =>
      setField<String>('Espeficarotrorec', value);

  DateTime? get fechareiteracion => getField<DateTime>('fechareiteracion');
  set fechareiteracion(DateTime? value) =>
      setField<DateTime>('fechareiteracion', value);

  String? get respuesta2 => getField<String>('respuesta2');
  set respuesta2(String? value) => setField<String>('respuesta2', value);

  String? get especificarreiteracion2 =>
      getField<String>('especificarreiteracion2');
  set especificarreiteracion2(String? value) =>
      setField<String>('especificarreiteracion2', value);

  String? get plazo => getField<String>('plazo');
  set plazo(String? value) => setField<String>('plazo', value);

  DateTime? get fechaelevacion => getField<DateTime>('fechaelevacion');
  set fechaelevacion(DateTime? value) =>
      setField<DateTime>('fechaelevacion', value);

  String? get accionreq => getField<String>('accionreq');
  set accionreq(String? value) => setField<String>('accionreq', value);

  DateTime? get fechaaccionreq => getField<DateTime>('fechaaccionreq');
  set fechaaccionreq(DateTime? value) =>
      setField<DateTime>('fechaaccionreq', value);

  String? get intervencionelev => getField<String>('intervencionelev');
  set intervencionelev(String? value) =>
      setField<String>('intervencionelev', value);

  DateTime? get fechaintervencion => getField<DateTime>('fechaintervencion');
  set fechaintervencion(DateTime? value) =>
      setField<DateTime>('fechaintervencion', value);

  String? get resultadointerv => getField<String>('resultadointerv');
  set resultadointerv(String? value) =>
      setField<String>('resultadointerv', value);

  int? get inform6 => getField<int>('inform6');
  set inform6(int? value) => setField<int>('inform6', value);

  bool? get respuesta => getField<bool>('respuesta');
  set respuesta(bool? value) => setField<bool>('respuesta', value);

  bool? get reiteracion => getField<bool>('reiteracion');
  set reiteracion(bool? value) => setField<bool>('reiteracion', value);

  bool? get elevacion => getField<bool>('elevacion');
  set elevacion(bool? value) => setField<bool>('elevacion', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  DateTime? get fechaplazoreiteracion =>
      getField<DateTime>('fechaplazoreiteracion');
  set fechaplazoreiteracion(DateTime? value) =>
      setField<DateTime>('fechaplazoreiteracion', value);
}
