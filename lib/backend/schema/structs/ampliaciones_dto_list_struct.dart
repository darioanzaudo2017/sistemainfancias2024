// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AmpliacionesDtoListStruct extends BaseStruct {
  AmpliacionesDtoListStruct({
    int? id,
    String? fecha,
    String? tipoAmpliacion,
    String? nombreEntrevistado,
    String? apellidoEntrevistado,
    String? domicilio,
    String? telefono,
    String? objetivo,
    String? descripcionSituacion,
    String? estrategias,
    String? espacios,
    String? otrasActividades,
    String? observacionesActividades,
    String? observacionesInteres,
    String? linkConcurrenciaNnya,
    String? linkConcurrenciaAdulto,
  })  : _id = id,
        _fecha = fecha,
        _tipoAmpliacion = tipoAmpliacion,
        _nombreEntrevistado = nombreEntrevistado,
        _apellidoEntrevistado = apellidoEntrevistado,
        _domicilio = domicilio,
        _telefono = telefono,
        _objetivo = objetivo,
        _descripcionSituacion = descripcionSituacion,
        _estrategias = estrategias,
        _espacios = espacios,
        _otrasActividades = otrasActividades,
        _observacionesActividades = observacionesActividades,
        _observacionesInteres = observacionesInteres,
        _linkConcurrenciaNnya = linkConcurrenciaNnya,
        _linkConcurrenciaAdulto = linkConcurrenciaAdulto;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "tipo_ampliacion" field.
  String? _tipoAmpliacion;
  String get tipoAmpliacion => _tipoAmpliacion ?? '';
  set tipoAmpliacion(String? val) => _tipoAmpliacion = val;

  bool hasTipoAmpliacion() => _tipoAmpliacion != null;

  // "nombre_entrevistado" field.
  String? _nombreEntrevistado;
  String get nombreEntrevistado => _nombreEntrevistado ?? '';
  set nombreEntrevistado(String? val) => _nombreEntrevistado = val;

  bool hasNombreEntrevistado() => _nombreEntrevistado != null;

  // "apellido_entrevistado" field.
  String? _apellidoEntrevistado;
  String get apellidoEntrevistado => _apellidoEntrevistado ?? '';
  set apellidoEntrevistado(String? val) => _apellidoEntrevistado = val;

  bool hasApellidoEntrevistado() => _apellidoEntrevistado != null;

  // "domicilio" field.
  String? _domicilio;
  String get domicilio => _domicilio ?? '';
  set domicilio(String? val) => _domicilio = val;

  bool hasDomicilio() => _domicilio != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  set telefono(String? val) => _telefono = val;

  bool hasTelefono() => _telefono != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  set objetivo(String? val) => _objetivo = val;

  bool hasObjetivo() => _objetivo != null;

  // "descripcion_situacion" field.
  String? _descripcionSituacion;
  String get descripcionSituacion => _descripcionSituacion ?? '';
  set descripcionSituacion(String? val) => _descripcionSituacion = val;

  bool hasDescripcionSituacion() => _descripcionSituacion != null;

  // "estrategias" field.
  String? _estrategias;
  String get estrategias => _estrategias ?? '';
  set estrategias(String? val) => _estrategias = val;

  bool hasEstrategias() => _estrategias != null;

  // "espacios" field.
  String? _espacios;
  String get espacios => _espacios ?? '';
  set espacios(String? val) => _espacios = val;

  bool hasEspacios() => _espacios != null;

  // "otras_actividades" field.
  String? _otrasActividades;
  String get otrasActividades => _otrasActividades ?? '';
  set otrasActividades(String? val) => _otrasActividades = val;

  bool hasOtrasActividades() => _otrasActividades != null;

  // "observaciones_actividades" field.
  String? _observacionesActividades;
  String get observacionesActividades => _observacionesActividades ?? '';
  set observacionesActividades(String? val) => _observacionesActividades = val;

  bool hasObservacionesActividades() => _observacionesActividades != null;

  // "observaciones_interes" field.
  String? _observacionesInteres;
  String get observacionesInteres => _observacionesInteres ?? '';
  set observacionesInteres(String? val) => _observacionesInteres = val;

  bool hasObservacionesInteres() => _observacionesInteres != null;

  // "link_concurrencia_nnya" field.
  String? _linkConcurrenciaNnya;
  String get linkConcurrenciaNnya => _linkConcurrenciaNnya ?? '';
  set linkConcurrenciaNnya(String? val) => _linkConcurrenciaNnya = val;

  bool hasLinkConcurrenciaNnya() => _linkConcurrenciaNnya != null;

  // "link_concurrencia_adulto" field.
  String? _linkConcurrenciaAdulto;
  String get linkConcurrenciaAdulto => _linkConcurrenciaAdulto ?? '';
  set linkConcurrenciaAdulto(String? val) => _linkConcurrenciaAdulto = val;

  bool hasLinkConcurrenciaAdulto() => _linkConcurrenciaAdulto != null;

  static AmpliacionesDtoListStruct fromMap(Map<String, dynamic> data) =>
      AmpliacionesDtoListStruct(
        id: castToType<int>(data['id']),
        fecha: data['fecha'] as String?,
        tipoAmpliacion: data['tipo_ampliacion'] as String?,
        nombreEntrevistado: data['nombre_entrevistado'] as String?,
        apellidoEntrevistado: data['apellido_entrevistado'] as String?,
        domicilio: data['domicilio'] as String?,
        telefono: data['telefono'] as String?,
        objetivo: data['objetivo'] as String?,
        descripcionSituacion: data['descripcion_situacion'] as String?,
        estrategias: data['estrategias'] as String?,
        espacios: data['espacios'] as String?,
        otrasActividades: data['otras_actividades'] as String?,
        observacionesActividades: data['observaciones_actividades'] as String?,
        observacionesInteres: data['observaciones_interes'] as String?,
        linkConcurrenciaNnya: data['link_concurrencia_nnya'] as String?,
        linkConcurrenciaAdulto: data['link_concurrencia_adulto'] as String?,
      );

  static AmpliacionesDtoListStruct? maybeFromMap(dynamic data) => data is Map
      ? AmpliacionesDtoListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'fecha': _fecha,
        'tipo_ampliacion': _tipoAmpliacion,
        'nombre_entrevistado': _nombreEntrevistado,
        'apellido_entrevistado': _apellidoEntrevistado,
        'domicilio': _domicilio,
        'telefono': _telefono,
        'objetivo': _objetivo,
        'descripcion_situacion': _descripcionSituacion,
        'estrategias': _estrategias,
        'espacios': _espacios,
        'otras_actividades': _otrasActividades,
        'observaciones_actividades': _observacionesActividades,
        'observaciones_interes': _observacionesInteres,
        'link_concurrencia_nnya': _linkConcurrenciaNnya,
        'link_concurrencia_adulto': _linkConcurrenciaAdulto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'tipo_ampliacion': serializeParam(
          _tipoAmpliacion,
          ParamType.String,
        ),
        'nombre_entrevistado': serializeParam(
          _nombreEntrevistado,
          ParamType.String,
        ),
        'apellido_entrevistado': serializeParam(
          _apellidoEntrevistado,
          ParamType.String,
        ),
        'domicilio': serializeParam(
          _domicilio,
          ParamType.String,
        ),
        'telefono': serializeParam(
          _telefono,
          ParamType.String,
        ),
        'objetivo': serializeParam(
          _objetivo,
          ParamType.String,
        ),
        'descripcion_situacion': serializeParam(
          _descripcionSituacion,
          ParamType.String,
        ),
        'estrategias': serializeParam(
          _estrategias,
          ParamType.String,
        ),
        'espacios': serializeParam(
          _espacios,
          ParamType.String,
        ),
        'otras_actividades': serializeParam(
          _otrasActividades,
          ParamType.String,
        ),
        'observaciones_actividades': serializeParam(
          _observacionesActividades,
          ParamType.String,
        ),
        'observaciones_interes': serializeParam(
          _observacionesInteres,
          ParamType.String,
        ),
        'link_concurrencia_nnya': serializeParam(
          _linkConcurrenciaNnya,
          ParamType.String,
        ),
        'link_concurrencia_adulto': serializeParam(
          _linkConcurrenciaAdulto,
          ParamType.String,
        ),
      }.withoutNulls;

  static AmpliacionesDtoListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AmpliacionesDtoListStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        tipoAmpliacion: deserializeParam(
          data['tipo_ampliacion'],
          ParamType.String,
          false,
        ),
        nombreEntrevistado: deserializeParam(
          data['nombre_entrevistado'],
          ParamType.String,
          false,
        ),
        apellidoEntrevistado: deserializeParam(
          data['apellido_entrevistado'],
          ParamType.String,
          false,
        ),
        domicilio: deserializeParam(
          data['domicilio'],
          ParamType.String,
          false,
        ),
        telefono: deserializeParam(
          data['telefono'],
          ParamType.String,
          false,
        ),
        objetivo: deserializeParam(
          data['objetivo'],
          ParamType.String,
          false,
        ),
        descripcionSituacion: deserializeParam(
          data['descripcion_situacion'],
          ParamType.String,
          false,
        ),
        estrategias: deserializeParam(
          data['estrategias'],
          ParamType.String,
          false,
        ),
        espacios: deserializeParam(
          data['espacios'],
          ParamType.String,
          false,
        ),
        otrasActividades: deserializeParam(
          data['otras_actividades'],
          ParamType.String,
          false,
        ),
        observacionesActividades: deserializeParam(
          data['observaciones_actividades'],
          ParamType.String,
          false,
        ),
        observacionesInteres: deserializeParam(
          data['observaciones_interes'],
          ParamType.String,
          false,
        ),
        linkConcurrenciaNnya: deserializeParam(
          data['link_concurrencia_nnya'],
          ParamType.String,
          false,
        ),
        linkConcurrenciaAdulto: deserializeParam(
          data['link_concurrencia_adulto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AmpliacionesDtoListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AmpliacionesDtoListStruct &&
        id == other.id &&
        fecha == other.fecha &&
        tipoAmpliacion == other.tipoAmpliacion &&
        nombreEntrevistado == other.nombreEntrevistado &&
        apellidoEntrevistado == other.apellidoEntrevistado &&
        domicilio == other.domicilio &&
        telefono == other.telefono &&
        objetivo == other.objetivo &&
        descripcionSituacion == other.descripcionSituacion &&
        estrategias == other.estrategias &&
        espacios == other.espacios &&
        otrasActividades == other.otrasActividades &&
        observacionesActividades == other.observacionesActividades &&
        observacionesInteres == other.observacionesInteres &&
        linkConcurrenciaNnya == other.linkConcurrenciaNnya &&
        linkConcurrenciaAdulto == other.linkConcurrenciaAdulto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        fecha,
        tipoAmpliacion,
        nombreEntrevistado,
        apellidoEntrevistado,
        domicilio,
        telefono,
        objetivo,
        descripcionSituacion,
        estrategias,
        espacios,
        otrasActividades,
        observacionesActividades,
        observacionesInteres,
        linkConcurrenciaNnya,
        linkConcurrenciaAdulto
      ]);
}

AmpliacionesDtoListStruct createAmpliacionesDtoListStruct({
  int? id,
  String? fecha,
  String? tipoAmpliacion,
  String? nombreEntrevistado,
  String? apellidoEntrevistado,
  String? domicilio,
  String? telefono,
  String? objetivo,
  String? descripcionSituacion,
  String? estrategias,
  String? espacios,
  String? otrasActividades,
  String? observacionesActividades,
  String? observacionesInteres,
  String? linkConcurrenciaNnya,
  String? linkConcurrenciaAdulto,
}) =>
    AmpliacionesDtoListStruct(
      id: id,
      fecha: fecha,
      tipoAmpliacion: tipoAmpliacion,
      nombreEntrevistado: nombreEntrevistado,
      apellidoEntrevistado: apellidoEntrevistado,
      domicilio: domicilio,
      telefono: telefono,
      objetivo: objetivo,
      descripcionSituacion: descripcionSituacion,
      estrategias: estrategias,
      espacios: espacios,
      otrasActividades: otrasActividades,
      observacionesActividades: observacionesActividades,
      observacionesInteres: observacionesInteres,
      linkConcurrenciaNnya: linkConcurrenciaNnya,
      linkConcurrenciaAdulto: linkConcurrenciaAdulto,
    );
