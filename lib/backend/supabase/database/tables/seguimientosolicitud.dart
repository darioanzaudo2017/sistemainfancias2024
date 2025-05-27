import '../database.dart';

class SeguimientosolicitudTable extends SupabaseTable<SeguimientosolicitudRow> {
  @override
  String get tableName => 'seguimientosolicitud';

  @override
  SeguimientosolicitudRow createRow(Map<String, dynamic> data) =>
      SeguimientosolicitudRow(data);
}

class SeguimientosolicitudRow extends SupabaseDataRow {
  SeguimientosolicitudRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeguimientosolicitudTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get estadosolicitud => getField<String>('estadosolicitud');
  set estadosolicitud(String? value) =>
      setField<String>('estadosolicitud', value);

  String? get observacion => getField<String>('Observacion');
  set observacion(String? value) => setField<String>('Observacion', value);

  String? get iduser => getField<String>('iduser');
  set iduser(String? value) => setField<String>('iduser', value);

  int? get idform9 => getField<int>('idform9');
  set idform9(int? value) => setField<int>('idform9', value);

  int? get idingreso => getField<int>('idingreso');
  set idingreso(int? value) => setField<int>('idingreso', value);

  int? get idexpe => getField<int>('idexpe');
  set idexpe(int? value) => setField<int>('idexpe', value);

  DateTime? get updateat => getField<DateTime>('updateat');
  set updateat(DateTime? value) => setField<DateTime>('updateat', value);
}
