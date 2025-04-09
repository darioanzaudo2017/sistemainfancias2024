import '../database.dart';

class AmpliaciondeinformacionTable
    extends SupabaseTable<AmpliaciondeinformacionRow> {
  @override
  String get tableName => 'ampliaciondeinformacion';

  @override
  AmpliaciondeinformacionRow createRow(Map<String, dynamic> data) =>
      AmpliaciondeinformacionRow(data);
}

class AmpliaciondeinformacionRow extends SupabaseDataRow {
  AmpliaciondeinformacionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AmpliaciondeinformacionTable();

  int get idampliacion => getField<int>('idampliacion')!;
  set idampliacion(int value) => setField<int>('idampliacion', value);

  int get idingreso => getField<int>('idingreso')!;
  set idingreso(int value) => setField<int>('idingreso', value);

  int get idexpediente => getField<int>('idexpediente')!;
  set idexpediente(int value) => setField<int>('idexpediente', value);

  String? get profesionales => getField<String>('profesionales');
  set profesionales(String? value) => setField<String>('profesionales', value);

  String? get adultos => getField<String>('adultos');
  set adultos(String? value) => setField<String>('adultos', value);

  String? get antecedentes => getField<String>('antecedentes');
  set antecedentes(String? value) => setField<String>('antecedentes', value);

  String? get redes => getField<String>('redes');
  set redes(String? value) => setField<String>('redes', value);

  String? get otrasact => getField<String>('otrasact');
  set otrasact(String? value) => setField<String>('otrasact', value);

  String? get otrosint => getField<String>('otrosint');
  set otrosint(String? value) => setField<String>('otrosint', value);

  String? get dervul => getField<String>('dervul');
  set dervul(String? value) => setField<String>('dervul', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get observaciones => getField<String>('observaciones');
  set observaciones(String? value) => setField<String>('observaciones', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  List<String> get redesdrop => getListField<String>('redesdrop');
  set redesdrop(List<String>? value) =>
      setListField<String>('redesdrop', value);

  List<String> get actividadesdrop => getListField<String>('actividadesdrop');
  set actividadesdrop(List<String>? value) =>
      setListField<String>('actividadesdrop', value);

  List<String> get interesedrop => getListField<String>('interesedrop');
  set interesedrop(List<String>? value) =>
      setListField<String>('interesedrop', value);

  int? get idconvocatoriaNNyA => getField<int>('IdconvocatoriaNNyA');
  set idconvocatoriaNNyA(int? value) =>
      setField<int>('IdconvocatoriaNNyA', value);

  String? get objetivosdeentrevista =>
      getField<String>('objetivosdeentrevista');
  set objetivosdeentrevista(String? value) =>
      setField<String>('objetivosdeentrevista', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get iduser => getField<int>('iduser');
  set iduser(int? value) => setField<int>('iduser', value);

  int? get idgrupofamiliar => getField<int>('idgrupofamiliar');
  set idgrupofamiliar(int? value) => setField<int>('idgrupofamiliar', value);

  String get formulario => getField<String>('formulario')!;
  set formulario(String value) => setField<String>('formulario', value);

  String? get descripcionsituacion => getField<String>('descripcionsituacion');
  set descripcionsituacion(String? value) =>
      setField<String>('descripcionsituacion', value);

  int? get idconvocatoriaAdulto => getField<int>('idconvocatoriaAdulto');
  set idconvocatoriaAdulto(int? value) =>
      setField<int>('idconvocatoriaAdulto', value);

  String? get objetivoent => getField<String>('objetivoent');
  set objetivoent(String? value) => setField<String>('objetivoent', value);

  String? get noment => getField<String>('noment');
  set noment(String? value) => setField<String>('noment', value);

  String? get apeent => getField<String>('apeent');
  set apeent(String? value) => setField<String>('apeent', value);

  int? get edadent => getField<int>('edadent');
  set edadent(int? value) => setField<int>('edadent', value);

  String? get ocuent => getField<String>('ocuent');
  set ocuent(String? value) => setField<String>('ocuent', value);

  String? get dirent => getField<String>('dirent');
  set dirent(String? value) => setField<String>('dirent', value);

  String? get telent => getField<String>('telent');
  set telent(String? value) => setField<String>('telent', value);

  String? get relacion => getField<String>('relacion');
  set relacion(String? value) => setField<String>('relacion', value);

  String? get registro => getField<String>('registro');
  set registro(String? value) => setField<String>('registro', value);

  String? get valsugerencias => getField<String>('valsugerencias');
  set valsugerencias(String? value) =>
      setField<String>('valsugerencias', value);

  String? get observacion => getField<String>('observacion');
  set observacion(String? value) => setField<String>('observacion', value);

  String? get refent => getField<String>('refent');
  set refent(String? value) => setField<String>('refent', value);

  String? get vinent => getField<String>('vinent');
  set vinent(String? value) => setField<String>('vinent', value);

  String? get datent => getField<String>('datent');
  set datent(String? value) => setField<String>('datent', value);

  String? get estrategias => getField<String>('estrategias');
  set estrategias(String? value) => setField<String>('estrategias', value);

  String? get espacios => getField<String>('espacios');
  set espacios(String? value) => setField<String>('espacios', value);

  String? get personasservicios => getField<String>('personasservicios');
  set personasservicios(String? value) =>
      setField<String>('personasservicios', value);

  String? get otros => getField<String>('otros');
  set otros(String? value) => setField<String>('otros', value);

  String? get primerannya => getField<String>('primerannya');
  set primerannya(String? value) => setField<String>('primerannya', value);

  String? get primerafamilia => getField<String>('primerafamilia');
  set primerafamilia(String? value) =>
      setField<String>('primerafamilia', value);

  String? get estrategiassobrevivencia =>
      getField<String>('estrategiassobrevivencia');
  set estrategiassobrevivencia(String? value) =>
      setField<String>('estrategiassobrevivencia', value);

  DateTime? get fecdenacent => getField<DateTime>('fecdenacent');
  set fecdenacent(DateTime? value) => setField<DateTime>('fecdenacent', value);

  int? get dnient => getField<int>('dnient');
  set dnient(int? value) => setField<int>('dnient', value);

  String? get espacios2 => getField<String>('espacios2');
  set espacios2(String? value) => setField<String>('espacios2', value);

  String? get linkanexob => getField<String>('linkanexob');
  set linkanexob(String? value) => setField<String>('linkanexob', value);

  String? get linkanexoa => getField<String>('linkanexoa');
  set linkanexoa(String? value) => setField<String>('linkanexoa', value);

  int? get idusers => getField<int>('idusers');
  set idusers(int? value) => setField<int>('idusers', value);

  String? get derechosvul => getField<String>('derechosvul');
  set derechosvul(String? value) => setField<String>('derechosvul', value);

  String? get valoracionsugerencias =>
      getField<String>('valoracionsugerencias');
  set valoracionsugerencias(String? value) =>
      setField<String>('valoracionsugerencias', value);

  String? get percepciondelaflia => getField<String>('percepciondelaflia');
  set percepciondelaflia(String? value) =>
      setField<String>('percepciondelaflia', value);

  String? get tipoampliacion => getField<String>('tipoampliacion');
  set tipoampliacion(String? value) =>
      setField<String>('tipoampliacion', value);

  String? get asistioentrevistaAdulto =>
      getField<String>('AsistioentrevistaAdulto');
  set asistioentrevistaAdulto(String? value) =>
      setField<String>('AsistioentrevistaAdulto', value);

  String? get asistioentrevistaNNyA =>
      getField<String>('asistioentrevistaNNyA');
  set asistioentrevistaNNyA(String? value) =>
      setField<String>('asistioentrevistaNNyA', value);

  DateTime? get fechadoc => getField<DateTime>('fechadoc');
  set fechadoc(DateTime? value) => setField<DateTime>('fechadoc', value);

  DateTime? get fechaconcurrencia => getField<DateTime>('fechaconcurrencia');
  set fechaconcurrencia(DateTime? value) =>
      setField<DateTime>('fechaconcurrencia', value);

  String? get linkconcurrenciaadulto =>
      getField<String>('linkconcurrenciaadulto');
  set linkconcurrenciaadulto(String? value) =>
      setField<String>('linkconcurrenciaadulto', value);

  String? get linkconcurrenciaNNyA => getField<String>('linkconcurrenciaNNyA');
  set linkconcurrenciaNNyA(String? value) =>
      setField<String>('linkconcurrenciaNNyA', value);

  String? get linkvisitaadulto => getField<String>('linkvisitaadulto');
  set linkvisitaadulto(String? value) =>
      setField<String>('linkvisitaadulto', value);

  int? get idarchivoadjunto => getField<int>('idarchivoadjunto');
  set idarchivoadjunto(int? value) => setField<int>('idarchivoadjunto', value);

  String? get descripcionderechos => getField<String>('descripcionderechos');
  set descripcionderechos(String? value) =>
      setField<String>('descripcionderechos', value);
}
