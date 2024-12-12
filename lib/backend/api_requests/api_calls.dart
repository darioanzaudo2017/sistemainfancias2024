import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscarPersonaCall {
  static Future<ApiCallResponse> call({
    String? buscar = 'dario',
  }) async {
    final ffApiRequestBody = '''
{
  "search_query": "$buscar"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar persona',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/search_expedientes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? expediente(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].expediente''',
      ));
  static String? fecha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fecha''',
      ));
  static String? nombres(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nombres''',
      ));
  static String? apellidos(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].apellidos''',
      ));
  static int? dni(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].dni''',
      ));
}

class BusquedaExpedienteCall {
  static Future<ApiCallResponse> call({
    String? busquedaExp = 'dario',
    String? iduser = '8be0e54f-b5c1-4d62-ac7f-a5ee6228affc',
  }) async {
    final ffApiRequestBody = '''
{
  "search_query": "$busquedaExp",
  "user_id": "$iduser"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'busqueda expediente',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/search_expedientes2',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombres(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombres''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? apellidos(dynamic response) => (getJsonField(
        response,
        r'''$[:].apellidos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? expediente(dynamic response) => (getJsonField(
        response,
        r'''$[:].expediente''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? dni(dynamic response) => (getJsonField(
        response,
        r'''$[:].dni''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BusquedaExpedienteCopyCall {
  static Future<ApiCallResponse> call({
    String? busquedaExp = 'dar',
    String? iduser = '8be0e54f-b5c1-4d62-ac7f-a5ee6228affc',
  }) async {
    final ffApiRequestBody = '''
{
  "search_query": "$busquedaExp",
  "user_id": "$iduser"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'busqueda expediente Copy',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/search_expedientes3',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nombres(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombres''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? apellidos(dynamic response) => (getJsonField(
        response,
        r'''$[:].apellidos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? expediente(dynamic response) => (getJsonField(
        response,
        r'''$[:].expediente''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? dni(dynamic response) => (getJsonField(
        response,
        r'''$[:].dni''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GrupoconvivienteCall {
  static Future<ApiCallResponse> call({
    int? idingresovar = 54,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'grupoconviviente',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/grupo_conviviente?idingreso=eq.$idingresovar&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? apellido(dynamic response) => (getJsonField(
        response,
        r'''$[:].apellido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? vinculo(dynamic response) => (getJsonField(
        response,
        r'''$[:].vinculo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class WebhoohkCall {
  static Future<ApiCallResponse> call({
    String? expediente = '1',
    String? nombre = '2',
    String? tipo = '1',
    String? variable = 'sd',
    List<String>? listaList,
  }) async {
    final lista = _serializeList(listaList);

    final ffApiRequestBody = '''
{
  "expediente": "$expediente",
  "nombre": "$nombre",
  "tipo": "$tipo",
  "variable": "$variable",
  "lista": [
    $lista
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'webhoohk',
      apiUrl: 'https://hook.us1.make.com/zrdyitk1iri3lsvr2df6b24pb4qvl3co',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearCarpetaIngresoCall {
  static Future<ApiCallResponse> call({
    String? expediente = 'sdfsdf',
    int? idingreso = 1,
    String? fecha = '12/12/12',
    String? carpeta = 'carpeta',
  }) async {
    final ffApiRequestBody = '''
{
  "expediente": "$expediente",
  "idingreso": $idingreso,
  "fecha": "$fecha",
  "carpeta": "$carpeta"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crear carpeta ingreso',
      apiUrl: 'https://hook.us1.make.com/tqv0iogogqxyksrxnbkyd81veyn8t8zm',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearCaratulaCall {
  static Future<ApiCallResponse> call({
    int? idexp = 76,
    String? tipo = 'caratula',
    int? editar = 1,
    int? idigreso = 12,
    String? carpeta = 'sdf',
    String? iddocumentoadjunto = 'sdf',
    String? idDocedit = 'sdf',
  }) async {
    final ffApiRequestBody = '''
{
  "idexpediente": $idexp,
  "tipo": "$tipo",
  "edit": $editar,
  "idingreso": $idigreso,
  "carpeta": "$carpeta",
  "iddocumentoimprimir": "$iddocumentoadjunto",
  "iddocdrive": "$idDocedit"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Crear Caratula',
      apiUrl: 'https://hook.us1.make.com/8b7vlavsuzp5o3a8snh7ietfdr15fn59',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearlistadocumentosadjuntosCall {
  static Future<ApiCallResponse> call({
    int? idexpe = 5,
    int? idingreso = 12,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idexpediente": $idexpe,
  "p_idingreso": $idingreso
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crearlistadocumentosadjuntos',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/insertar_documentosadjuntos',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CarpetaDelExpedienteCall {
  static Future<ApiCallResponse> call({
    String? expediente = 'sdf',
    int? id = 2,
    String? fecha = 'asd',
    String? nombresDNI = 'asdasd',
  }) async {
    final ffApiRequestBody = '''
{
  "expediente": "$expediente",
  "fecha": "$fecha",
  "id": $id,
  "nombres": "$nombresDNI"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'carpeta del expediente',
      apiUrl: 'https://hook.us1.make.com/a9t4rea8ov2re9yc2hebuvp7rmfohqdw',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ActaCall {
  static Future<ApiCallResponse> call({
    int? idingreso = 88,
    int? edit = 0,
    String? carpeta = 'a',
  }) async {
    final ffApiRequestBody = '''
{
  "idingreso": $idingreso,
  "edit": $edit,
  "carpeta": "$carpeta"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'acta',
      apiUrl: 'https://hook.us1.make.com/dxq1j9ua28dykbn8j4qmcxcxtg4udy2e',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AvisoVisitaNNyACall {
  static Future<ApiCallResponse> call({
    String? fechadoc = 'sdf',
    String? nombre = 'sdf',
    String? apellido = 'sdf',
    String? domicilio = 'sdf',
    String? fecha = 'sfdf',
    String? cpc = 'sdf',
    String? hora = 'sdf',
    int? idingreso = 5,
    String? iddoc = 'sdf',
    String? carpeta = 'ertertert',
  }) async {
    final ffApiRequestBody = '''
{
  "fechadocumento": "${escapeStringForJson(fechadoc)}",
  "domicilio": "${escapeStringForJson(domicilio)}",
  "nombre": "${escapeStringForJson(nombre)}",
  "apellido": "${escapeStringForJson(apellido)}",
  "fecha": "${escapeStringForJson(fecha)}",
  "hora": "${escapeStringForJson(hora)}",
  "CPC": "${escapeStringForJson(cpc)}",
  "idingreso": $idingreso,
  "carpeta": "${escapeStringForJson(carpeta)}",
  "iddoc": "${escapeStringForJson(iddoc)}",
"asd":"asdasdasdasd"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Aviso visita NNyA',
      apiUrl: 'https://hook.us1.make.com/r32uarzunx9ijz2ca97xaziloy701stc',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConcurrenciaVisitaAdultoCall {
  static Future<ApiCallResponse> call({
    String? fechadoc = 'sdf',
    String? nombre = 'sdf',
    String? apellido = 'sdf',
    String? domicilio = 'sdf',
    String? fecha = 'sfdf',
    String? cpc = 'sdf',
    String? hora = 'sdf',
    int? idingreso = 5,
    String? iddoc = 'sdf',
    String? carpeta = 'ertertert',
    String? telefono = 'sd',
  }) async {
    final ffApiRequestBody = '''
{
  "fechadocumento": "${escapeStringForJson(fechadoc)}",
  "domicilio": "${escapeStringForJson(domicilio)}",
  "nombre": "${escapeStringForJson(nombre)}",
  "apellido": "${escapeStringForJson(apellido)}",
  "fecha": "${escapeStringForJson(fecha)}",
  "hora": "${escapeStringForJson(hora)}",
  "CPC": "${escapeStringForJson(cpc)}",
  "idingreso": $idingreso,
  "carpeta": "${escapeStringForJson(carpeta)}",
  "telefono": "${escapeStringForJson(telefono)}",
  "iddoc": "${escapeStringForJson(iddoc)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Concurrencia visita adulto',
      apiUrl: 'https://hook.us1.make.com/tm3gn8olq2ybmg28tx64ha26dhg2w9h1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AvisoVisitaAdultoCall {
  static Future<ApiCallResponse> call({
    String? fechadoc = 'sdf',
    String? nombre = 'sdf',
    String? apellido = 'sdf',
    String? domicilio = 'sdf',
    String? fecha = 'sfdf',
    String? cpc = 'sdf',
    String? hora = 'sdf',
    int? idingreso = 5,
    String? iddoc = 'sdf',
    String? carpeta = 'ertertert',
    String? telefono = 'sdf',
    String? expediente = 'sdf',
    int? dni = 345,
  }) async {
    final ffApiRequestBody = '''
{
  "fechadocumento": "${escapeStringForJson(fechadoc)}",
  "nombre": "${escapeStringForJson(nombre)}",
  "apellido": "${escapeStringForJson(apellido)}",
"dni":$dni,
  "fecha": "${escapeStringForJson(fecha)}",
  "CPC": "${escapeStringForJson(cpc)}",
  "telefono": "${escapeStringForJson(telefono)}",
  "idingreso": $idingreso,
  "carpeta": "${escapeStringForJson(carpeta)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "iddoc": "${escapeStringForJson(iddoc)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Aviso visita adulto',
      apiUrl: 'https://hook.us1.make.com/f9p2vlx4hk986xggga69wm5po5gwhfov',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SolicitudSenafCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'solicitud senaf',
      apiUrl: 'https://hook.us1.make.com/spch9ocrw9hll5fg8y8a1zmemk5d9ssm',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AnexoformasesoramientoCall {
  static Future<ApiCallResponse> call({
    int? idingreso = 12,
    String? expediente = 'wer',
    String? profesional = 'wer',
    String? insremitente = 'wer',
    String? nombres = 'wer',
    String? apellidos = 'wer',
    String? dni = 'wer',
    String? spd = 'wer',
    String? domicilio = 'wer',
    String? tipoatencion = 'wer',
    String? carpeta = 'asd',
  }) async {
    final ffApiRequestBody = '''
{
  "idingreso": $idingreso,
  "expediente": "${escapeStringForJson(expediente)}",
  "spd": "${escapeStringForJson(spd)}",
  "profesional": "${escapeStringForJson(profesional)}",
  "insremitente": "${escapeStringForJson(insremitente)}",
  "domicilio": "${escapeStringForJson(domicilio)}",
  "tipoatencion": "${escapeStringForJson(tipoatencion)}",
  "nombre": "${escapeStringForJson(nombres)}",
  "apellidos": "${escapeStringForJson(apellidos)}",
  "dni": "${escapeStringForJson(dni)}",
  "carpeta": "${escapeStringForJson(carpeta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'anexoformasesoramiento',
      apiUrl: 'https://hook.us1.make.com/ri4jj0fr27fufs5cqi4qehwda2eabhrb',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AnexoformderivacionCall {
  static Future<ApiCallResponse> call({
    int? idingreso = 12,
    String? expediente = 'wer',
    String? profesional = 'wer',
    String? insremitente = 'wer',
    String? nombres = 'wer',
    String? apellidos = 'wer',
    String? dni = 'wer',
    String? spd = 'wer',
    String? domicilio = 'wer',
    String? tipoatencion = 'wer',
    String? carpeta = 'asd',
    String? fecha = 'asd',
    String? fechareiteracion = 'asd',
    String? institucionderiva = 'asd',
  }) async {
    final ffApiRequestBody = '''
{
  "idingreso": $idingreso,
  "expediente": "${escapeStringForJson(expediente)}",
  "spd": "${escapeStringForJson(spd)}",
  "profesionalrem": "${escapeStringForJson(profesional)}",
"fecha":"${escapeStringForJson(fecha)}",
"institucionderiva":"${escapeStringForJson(institucionderiva)}",
  "orgremitente": "${escapeStringForJson(insremitente)}",
  "domicilio": "${escapeStringForJson(domicilio)}",
  "tipodeintervencion": "${escapeStringForJson(tipoatencion)}",
  "nombre": "${escapeStringForJson(nombres)}",
  "apellidos": "${escapeStringForJson(apellidos)}",
  "dni": "${escapeStringForJson(dni)}",
  "carpeta": "${escapeStringForJson(carpeta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'anexoformderivacion',
      apiUrl: 'https://hook.us1.make.com/xxobn1eyrao5q3csdupjofgibuo9f68i',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AnexoformreiteracionderivacionCall {
  static Future<ApiCallResponse> call({
    int? idingreso = 12,
    String? expediente = 'wer',
    String? profesional = 'wer',
    String? insremitente = 'wer',
    String? nombres = 'wer',
    String? apellidos = 'wer',
    String? dni = 'wer',
    String? spd = 'wer',
    String? domicilio = 'wer',
    String? tipoatencion = 'wer',
    String? carpeta = 'asd',
    String? fecha = 'asd',
    String? fechareiteracion = 'asd',
    String? institucionderiva = 'asd',
  }) async {
    final ffApiRequestBody = '''
{
  "idingreso": $idingreso,
  "expediente": "${escapeStringForJson(expediente)}",
  "spd": "${escapeStringForJson(spd)}",
  "profesionalrem": "${escapeStringForJson(profesional)}",
"fecha":"${escapeStringForJson(fecha)}",
"institucionderiva":"${escapeStringForJson(institucionderiva)}",
  "orgremitente": "${escapeStringForJson(insremitente)}",
  "domicilio": "${escapeStringForJson(domicilio)}",
  "tipodeintervencion": "${escapeStringForJson(tipoatencion)}",
  "nombre": "${escapeStringForJson(nombres)}",
  "apellidos": "${escapeStringForJson(apellidos)}",
  "dni": "${escapeStringForJson(dni)}",
"fechareiteracion":"${escapeStringForJson(fechareiteracion)}",
  "carpeta": "${escapeStringForJson(carpeta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'anexoformreiteracionderivacion',
      apiUrl: 'https://hook.us1.make.com/eiqash7mr1qcucc2c9xkxpbgvh0lxxds',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AnexoSolicitudSaludCall {
  static Future<ApiCallResponse> call({
    String? fecha = 'asd',
    String? nombreyapellido = 'asd',
    int? dni = 234,
    String? barrio = 'asd',
    String? domicilio = 'asd',
    String? historiaclinica = 'asd',
    String? mes = 'asd',
    String? ano = 'asd',
    String? expediente = 'sad',
    int? idingreso = 3,
    String? carpeta = 'dfg',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": $dni,
  "domicilio": "${escapeStringForJson(domicilio)}",
  "barrio": "${escapeStringForJson(barrio)}",
  "historiaclinica": "${escapeStringForJson(historiaclinica)}",
  "mes": "${escapeStringForJson(mes)}",
  "año": "${escapeStringForJson(ano)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idingreso": $idingreso,
  "carpeta": "${escapeStringForJson(carpeta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'anexo solicitud salud',
      apiUrl: 'https://hook.us1.make.com/s93t2q6zex1wstcsa5l3p4w5zkaxw4u1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AnexoReuninInterinstitucionalCall {
  static Future<ApiCallResponse> call({
    String? fecha = 'asd',
    String? nombreyapellido = 'asd',
    int? dni = 234,
    String? institucion = 'asd',
    String? objetivos = 'asd',
    String? reunion = 'asd',
    String? puntosacuerdos = 'asd',
    String? expediente = 'sad',
    int? idingreso = 3,
    String? carpeta = 'dfg',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": $dni,
  "institucion": "${escapeStringForJson(institucion)}",
  "objetivos": "${escapeStringForJson(objetivos)}",
  "reunion": "${escapeStringForJson(reunion)}",
  "puntosacuerdos": "${escapeStringForJson(puntosacuerdos)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idingreso": $idingreso,
  "carpeta": "${escapeStringForJson(carpeta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ANEXO  REUNIN INTERINSTITUCIONAL',
      apiUrl: 'https://hook.us1.make.com/thnevduiosmi5l5isnrneyq5ivifq831',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AnexoSolicitaInformacinAInstitucinEducativaCall {
  static Future<ApiCallResponse> call({
    String? fecha = 'asd',
    String? nombreyapellido = 'asd',
    int? dni = 234,
    String? numestablecimiento = 'asd',
    String? domicilio = 'asd',
    String? historiaclinica = 'asd',
    String? mes = 'asd',
    String? ano = 'asd',
    String? expediente = 'sad',
    int? idingreso = 3,
    String? carpeta = 'dfg',
    String? spd = 'sdf',
    String? fechadecomienzo = 'dfgdfg',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": $dni,
  "domicilio": "${escapeStringForJson(domicilio)}",
  "numestablecimiento": "${escapeStringForJson(numestablecimiento)}",
  "historiaclinica": "${escapeStringForJson(historiaclinica)}",
  "mes": "${escapeStringForJson(mes)}",
  "año": "${escapeStringForJson(ano)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idingreso": $idingreso,
  "carpeta": "${escapeStringForJson(carpeta)}",
  "spd": "${escapeStringForJson(spd)}",
  "fechacomienzo": "${escapeStringForJson(fechadecomienzo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ANEXO  SOLICITA INFORMACIN A INSTITUCIN EDUCATIVA',
      apiUrl: 'https://hook.us1.make.com/dj8w9321xpoiabl3cqyxrgvr50ft9xuo',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ANEXOREQUERIMIENTODEEJECUCIoNDEACCIONESCall {
  static Future<ApiCallResponse> call({
    String? fecha = 'asd',
    String? nombreyapellido = 'asd',
    int? dni = 234,
    String? barrio = 'asd',
    String? lugar = 'asd',
    String? mes = 'asd',
    String? ano = 'asd',
    String? expediente = 'sad',
    int? idingreso = 3,
    String? carpeta = 'dfg',
    String? institucionderiva = 'sdfgsdf',
    String? acciones = 'sdfgsdfg',
    String? spd = 'sdfgsd',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": $dni,
  "lugar": "<domicilio>",
  "barrio": "${escapeStringForJson(barrio)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idingreso": $idingreso,
  "acciones": "${escapeStringForJson(acciones)}",
  "institucionderiva": "${escapeStringForJson(institucionderiva)}",
  "spd": "${escapeStringForJson(spd)}",
  "carpeta": "${escapeStringForJson(carpeta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ANEXO  REQUERIMIENTO DE EJECUCIoN DE ACCIONES',
      apiUrl: 'https://hook.us1.make.com/s8oa1g59ypuvrex3i7e5aqg4j36t4fh2',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmailResendCall {
  static Future<ApiCallResponse> call({
    String? mail = 'anzaudo@gmail.com',
    String? titulo = 'titulo prueba',
    String? mensaje = 'hola que tal',
    String? nOmbreyapellido = 'dario anzaudo',
    String? dni = '31450209',
    String? spd = 'villa el libertador',
    String? motivo = 'Motivo de la medida',
    String? link = 'Link',
  }) async {
    final ffApiRequestBody = '''
{
  "from": "Subsecretaria de infancias <onboarding@resend.dev>",
  "to": [
    "${escapeStringForJson(mail)}"
  ],
  "subject": "${escapeStringForJson(titulo)}",
  "html": "<p>Mensaje: ${escapeStringForJson(mensaje)}</p><p>Spd: ${escapeStringForJson(spd)}</p><p>Motivo: ${escapeStringForJson(motivo)}</p><p>Nombre: ${escapeStringForJson(nOmbreyapellido)}</p><p>DNI: ${escapeStringForJson(dni)}</p><p>Link: ${escapeStringForJson(link)}</p>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'email resend',
      apiUrl: 'https://api.resend.com/emails',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer re_dWNcVrxw_HqSnrzCW7FWfZqsPrGKYYzW2',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
