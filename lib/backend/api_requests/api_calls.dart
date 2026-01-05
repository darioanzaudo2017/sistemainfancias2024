import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BusquedaExpedienteLISTACall {
  static Future<ApiCallResponse> call({
    String? busquedaExp = 'cielo',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY1ODEzNTk4LCJpYXQiOjE3NjU4MDk5OTgsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODAzNDU4fV0sInNlc3Npb25faWQiOiJmMmI3MDVlYi02MDNlLTQyOTQtODIxZi1iMDk3Y2Q4ODhjNmIiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.knJLP_q-cOENa3wl7P2tRDwHc9o9W6ehZzE0sudtHH0',
  }) async {
    final ffApiRequestBody = '''
{
  "search_query": "${busquedaExp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'busqueda expediente LISTA',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/search_expedientes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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
  static int? idexpediente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idexpediente''',
      ));
  static String? ultimoestado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].ultimo_estado''',
      ));
}

class BusquedaExpedienteLISTAcompletaCall {
  static Future<ApiCallResponse> call({
    String? busquedaExp = 'rrr',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiI5ODcxNjEyOS01ZDZhLTRkNmItYTJkNi1mNGMyZTZhZjdhMTAiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUwMjU0MjUwLCJpYXQiOjE3NTAyNTA2NTAsImVtYWlsIjoiZGFyaW9hbnphdWRvQGdtYWlsLmNvbSIsInBob25lIjoiIiwiYXBwX21ldGFkYXRhIjp7InByb3ZpZGVyIjoiZW1haWwiLCJwcm92aWRlcnMiOlsiZW1haWwiXX0sInVzZXJfbWV0YWRhdGEiOnsiZW1haWwiOiJkYXJpb2FuemF1ZG9AZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInBob25lX3ZlcmlmaWVkIjpmYWxzZSwic3ViIjoiOTg3MTYxMjktNWQ2YS00ZDZiLWEyZDYtZjRjMmU2YWY3YTEwIn0sInJvbGUiOiJhdXRoZW50aWNhdGVkIiwiYWFsIjoiYWFsMSIsImFtciI6W3sibWV0aG9kIjoicGFzc3dvcmQiLCJ0aW1lc3RhbXAiOjE3NTAyNTA2NTB9XSwic2Vzc2lvbl9pZCI6ImY0MjU0NDdlLTM2YjMtNGM2NC05NjVhLWFhYTE4MmFmNWI5OSIsImlzX2Fub255bW91cyI6ZmFsc2V9.B63x923nK-2e4-jUKEcGt_7FDVdCjO5dHiSMFa1jPdI',
  }) async {
    final ffApiRequestBody = '''
{
  "p_busqueda": "${busquedaExp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'busqueda expediente LISTAcompleta',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/buscar_expedientes_ultimo_estado',
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
  static int? idexpediente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idexpediente''',
      ));
  static String? ultimoestado(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].ultimo_estado''',
      ));
}

class GrupoconvivienteCall {
  static Future<ApiCallResponse> call({
    int? idingresovar = 218,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'grupoconviviente',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/grupo_conviviente?idingreso=eq.${idingresovar}&select=*',
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
  "expediente": "${expediente}",
  "nombre": "${nombre}",
  "tipo": "${tipo}",
  "variable": "${variable}",
  "lista": [
    ${lista}
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
    String? token = 'sdfsdf',
  }) async {
    final ffApiRequestBody = '''
{
  "expediente": "${expediente}",
  "idingreso": ${idingreso},
  "fecha": "${fecha}",
  "carpeta": "${carpeta}",
  "token": "${token}"
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
    String? firma =
        'https://liavirbwftopvrcjyprr.supabase.co/storage/v1/object/public/firma/firma/VisualStudioSetup.exe',
    String? token = 'sdfsdf',
  }) async {
    final ffApiRequestBody = '''
{
  "idexpediente": ${idexp},
  "tipo": "${tipo}",
  "edit": ${editar},
  "idingreso": ${idigreso},
  "carpeta": "${carpeta}",
  "iddocumentoimprimir": "${iddocumentoadjunto}",
  "iddocdrive": "${idDocedit}",
  "firma": "${firma}",
  "token": "${token}"
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
  "p_idexpediente": ${idexpe},
  "p_idingreso": ${idingreso}
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
    String? idcarpetaspd = 'sdfsdfsdf',
    String? token = 'sdfdsf',
  }) async {
    final ffApiRequestBody = '''
{
  "expediente": "${expediente}",
  "fecha": "${fecha}",
  "id": ${id},
  "idcarpetaspd": "${idcarpetaspd}",
  "nombres": "${nombresDNI}",
  "token": "${token}"
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
    int? idingreso = 341,
    int? idform7 = 96,
  }) async {
    final ffApiRequestBody = '''
{
  "idFormulario7": ${idform7},
  "idIngreso": ${idingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'acta',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/clever-function',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class AvisoConvocatoriaAlNNyACall {
  static Future<ApiCallResponse> call({
    String? fechadoc = 'sdf',
    String? nombre = 'sdf',
    String? apellido = 'sdf',
    String? domicilio = 'sdf',
    String? fecha = 'sfdf',
    String? cpc = 'sdf',
    String? hora = 'sdf',
    int? idingreso = 5,
    String? idampliacion = 'sdf',
    String? direccionCPC = 'ertertert',
    String? telefonoCPC = 'er',
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
  "direccionCPC": "${escapeStringForJson(direccionCPC)}",
  "telefonoCPC": "${escapeStringForJson(telefonoCPC)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Aviso convocatoria al  NNyA',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/bright-function',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class ConvocatoriaVisitaAdultoCall {
  static Future<ApiCallResponse> call({
    String? fechadoc = 'sdf',
    String? nombre = 'sdf',
    String? apellido = 'sdf',
    String? domicilio = 'sdf',
    String? fecha = 'sfdf',
    String? cpc = 'sdf',
    String? hora = 'sdf',
    String? telefono = 'sd',
    int? dni = 5454545,
    String? domiciliospd = 'sdf',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha":"${escapeStringForJson(fechadoc)}" ,
  "domicilio":"${escapeStringForJson(domicilio)}" ,
  "nombre":"${escapeStringForJson(nombre)}" ,
  "apellido":"${escapeStringForJson(apellido)}" ,
  "dni": ${dni},
  "fechaconcurrencia": "${escapeStringForJson(fecha)}",
  "hora": "${escapeStringForJson(hora)}",
  "spd": "${escapeStringForJson(cpc)}",
  "domiciliospd":"${escapeStringForJson(domiciliospd)}" ,
  "telefono":"${escapeStringForJson(telefono)}" 
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Convocatoria visita adulto',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/smooth-task',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class AvisoVisitaAdultoCall {
  static Future<ApiCallResponse> call({
    String? fechadoc = 'sdf',
    String? nombre = 'sdf',
    String? apellido = 'sdf',
    String? domicilio = 'sdf',
    String? fecha = 'sfdf',
    String? cpc = 'sdf',
    String? telefono = 'sdf',
    String? expediente = 'sdf',
    int? dni = 345,
  }) async {
    final ffApiRequestBody = '''
{
  "exp": "${escapeStringForJson(expediente)}",
  "nombre": "${escapeStringForJson(nombre)}",
  "apellido": "${escapeStringForJson(apellido)}",
  "dni": ${dni},
  "fecha": "${escapeStringForJson(fecha)}",
  "spd": "${escapeStringForJson(cpc)}",
  "direccionspd": "${escapeStringForJson(domicilio)}",
  "telefono": "${escapeStringForJson(telefono)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Aviso visita adulto',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/smart-action',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
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
  "expediente": "${escapeStringForJson(expediente)}",
  "spd": "${escapeStringForJson(spd)}",
  "profesional": "${escapeStringForJson(profesional)}",
  "insremitente": "${escapeStringForJson(insremitente)}",
  "domicilio": "${escapeStringForJson(domicilio)}",
  "tipoatencion": "${escapeStringForJson(tipoatencion)}",
  "nombre": "${escapeStringForJson(nombres)}",
  "apellidos": "${escapeStringForJson(apellidos)}",
  "dni": "${escapeStringForJson(dni)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'anexoformasesoramiento',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/quick-processor',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
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
  "idingreso": ${idingreso},
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
  "idingreso": ${idingreso},
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
    int? idsolicitudsalud = 3,
    String? carpeta = 'dfg',
    String? spd = 'villa el libertador',
    String? institucion = 'asd',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "numeronombre": "${escapeStringForJson(institucion)}",
  "spd": "${escapeStringForJson(spd)}",
  "nombreyapellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": ${dni},
  "domicilio": "${escapeStringForJson(domicilio)}",
  "barrio": "${escapeStringForJson(barrio)}",
  "historiaclinica": "${escapeStringForJson(historiaclinica)}",
  "mes": "${escapeStringForJson(mes)}",
  "año": "${escapeStringForJson(ano)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'anexo solicitud salud',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/clever-task',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
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
    String? profesionales = 'dario',
    int? idreunion = 5,
    String? url = 'sdfsfd',
  }) async {
    final ffApiRequestBody = '''
{
  "expediente": "${escapeStringForJson(expediente)}",
  "fecha": "${escapeStringForJson(fecha)}",
  "institucion": "${escapeStringForJson(institucion)}",
  "objetivos": "${escapeStringForJson(objetivos)}",
  "profesionales": "${escapeStringForJson(profesionales)}",
  "reunion": "${escapeStringForJson(reunion)}",
  "puntosacuerdos": "${escapeStringForJson(puntosacuerdos)}",
  "documento_adjunto": "${escapeStringForJson(url)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ANEXO  REUNIN INTERINSTITUCIONAL',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/bright-worker',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class AnexoSolicitaInformacinAInstitucinEducativaCall {
  static Future<ApiCallResponse> call({
    String? fecha = 'asd',
    String? nombreyapellido = 'asd',
    int? dni = 234,
    String? numestablecimiento = 'asd',
    String? domicilio = 'asd',
    String? spd = 'sdf',
    String? fechadecomienzo = 'dfgdfg',
    String? cpc = 'cpc',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "numestablecimiento": "${escapeStringForJson(numestablecimiento)}",
  "spd": "${escapeStringForJson(spd)}",
  "cpc": "${escapeStringForJson(cpc)}",
  "nombreyapellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": ${dni},
  "fecha_comienzo": "${escapeStringForJson(fechadecomienzo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ANEXO  SOLICITA INFORMACIN A INSTITUCIN EDUCATIVA',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/swift-responder',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
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
    int? idmedida = 54,
    int? idreqacciones = 34,
    String? datosspd = 'ffff',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": ${dni},
  "lugar": "<domicilio>",
  "barrio": "${escapeStringForJson(barrio)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idingreso": ${idingreso},
  "acciones": "${escapeStringForJson(acciones)}",
  "institucionderiva": "${escapeStringForJson(institucionderiva)}",
  "spd": "${escapeStringForJson(spd)}",
  "carpeta": "${escapeStringForJson(carpeta)}",
  "idmedida": ${idmedida},
  "idreqacciones": ${idreqacciones},
  "datosspd": "${escapeStringForJson(datosspd)}"
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
    List<String>? mailList,
    String? titulo = 'titulo prueba',
    String? mensaje = 'hola que tal',
    String? nOmbreyapellido = 'dario anzaudo',
    String? dni = '31450209',
    String? spd = 'villa el libertador',
    String? motivo = 'Motivo de la medida',
    String? link = 'Link',
    String? header,
    String? header2,
  }) async {
    header ??= FFAppConstants.header1resend;
    header2 ??= FFAppConstants.header2resend;

    final mail = _serializeList(mailList);

    final ffApiRequestBody = '''
{
  "from": "Subsecretaria de infancias <direcciongeneral@sistemasdeinfancias.com.ar>",
  "to": [
    "${mail}"
  ],
  "subject": "${escapeStringForJson(titulo)}",
  "html": "<p>Mensaje: ${escapeStringForJson(mensaje)}</p><p>Spd: ${escapeStringForJson(spd)}</p><p>Motivo: ${escapeStringForJson(motivo)}</p><p>Nombre: ${escapeStringForJson(nOmbreyapellido)}</p><p>DNI: ${escapeStringForJson(dni)}</p><p>Link: ${escapeStringForJson(link)}</p>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'email resend',
      apiUrl: 'https://hook.us1.make.com/j69a1p2pzptdq3kimt7yg6o7slq1411n',
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

class ExisteDNInnyaCall {
  static Future<ApiCallResponse> call({
    String? dni = '31450209',
  }) async {
    final ffApiRequestBody = '''
{
  "dni_param": "${escapeStringForJson(dni)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ExisteDNInnya',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/dni_existe_nnya',
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

  static bool? check(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class ExisteDNIexpedienteCall {
  static Future<ApiCallResponse> call({
    String? dni = '31450209',
  }) async {
    final ffApiRequestBody = '''
{
  "dni_param": "${escapeStringForJson(dni)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ExisteDNIexpediente',
      apiUrl: 'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/dni_existe',
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

  static bool? check(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class MailresendwebhookCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'mailresendwebhook',
      apiUrl: 'https://hook.us1.make.com/j69a1p2pzptdq3kimt7yg6o7slq1411n',
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

class CheckExpedienteCall {
  static Future<ApiCallResponse> call({
    int? dni = 31450209,
  }) async {
    final ffApiRequestBody = '''
{
  "dni_param": ${dni}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'check expediente ',
      apiUrl: 'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/dni_existe',
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

class InformeSenafVersionesCall {
  static Future<ApiCallResponse> call({
    String? fecha = '12/12/2025',
    String? linkinforme = 'sdfsdf',
    int? idexpediente = 2,
    int? idingreso = 4,
    int? idform9 = 6,
    String? idDrive = 'wer',
    String? estado = '1',
    String? idcarpeta = 'ert',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "Linkinforme": "${escapeStringForJson(linkinforme)}",
  "idexpediente": ${idexpediente},
  "idingreso": ${idingreso},
  "idform9": ${idform9},
  "iddrive": "${escapeStringForJson(idDrive)}",
  "estado": "${escapeStringForJson(estado)}",
"idcarpeta":"${escapeStringForJson(idcarpeta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'informe senaf versiones',
      apiUrl: 'https://hook.us1.make.com/s757b4cp0vchwqx4x91zacrtg8o14k9f',
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

class ResendSupabaseCall {
  static Future<ApiCallResponse> call({
    String? mail = 'darioanzaudo@gmail.com',
    String? links = 'asd',
    String? mensaje = 'asdasd',
    String? asunto = 'sdfsdf',
  }) async {
    final ffApiRequestBody = '''
{
  "from": "Subsecretaría <onboarding@sistemasdeinfancias.com.ar>",
  "to": [
    "${escapeStringForJson(mail)}"
  ],
  "subject": "${escapeStringForJson(asunto)}",
  "html": "<p>${escapeStringForJson(mensaje)}. documentos:${escapeStringForJson(links)} </p>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resend supabase',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/hyper-service',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
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

class CopiarampliaciohistorialCall {
  static Future<ApiCallResponse> call({
    int? idingresoOriginal = 216,
    int? nuevoIdexpe,
    int? nuevoIdingreso,
  }) async {
    final ffApiRequestBody = '''
{
  "idingreso_original": ${idingresoOriginal},
  "nuevo_idexpe": ${nuevoIdexpe},
  "nuevo_idingreso": ${nuevoIdingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'copiarampliaciohistorial',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/duplicar_ampliaciones',
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

class CrearwordsolicitudCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiI5ODcxNjEyOS01ZDZhLTRkNmItYTJkNi1mNGMyZTZhZjdhMTAiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUxOTA2NTgyLCJpYXQiOjE3NTE5MDI5ODIsImVtYWlsIjoiZGFyaW9hbnphdWRvQGdtYWlsLmNvbSIsInBob25lIjoiIiwiYXBwX21ldGFkYXRhIjp7InByb3ZpZGVyIjoiZW1haWwiLCJwcm92aWRlcnMiOlsiZW1haWwiXX0sInVzZXJfbWV0YWRhdGEiOnsiZW1haWwiOiJkYXJpb2FuemF1ZG9AZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInBob25lX3ZlcmlmaWVkIjpmYWxzZSwic3ViIjoiOTg3MTYxMjktNWQ2YS00ZDZiLWEyZDYtZjRjMmU2YWY3YTEwIn0sInJvbGUiOiJhdXRoZW50aWNhdGVkIiwiYWFsIjoiYWFsMSIsImFtciI6W3sibWV0aG9kIjoicGFzc3dvcmQiLCJ0aW1lc3RhbXAiOjE3NTE1NDU4OTl9XSwic2Vzc2lvbl9pZCI6IjlhOGU5ZDJlLTdiMGYtNGYzNy04YmJkLWNkZDk3ODBhYWZiMSIsImlzX2Fub255bW91cyI6ZmFsc2V9.Ey8lYM-J2lhIuqzbkL3HXNDv0BCm42sFeS_FqDuSHKY',
    int? idingreso = 249,
  }) async {
    final ffApiRequestBody = '''
{
  "idIngreso": ${idingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crearwordsolicitud',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/smooth-function',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class CambiospdCall {
  static Future<ApiCallResponse> call({
    int? idexp = 523,
    String? spd = 'SPD Villa El Libertador',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJjNmYxYjc1NS1hZDAzLTQ1MzAtYjA3Ni0xN2JmMDkxNzU5NDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzYyMDM0MTQ1LCJpYXQiOjE3NjIwMzA1NDUsImVtYWlsIjoiZGFyaW9jb2xvbkBnbWFpbC5jb20iLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7ImVtYWlsIjoiZGFyaW9jb2xvbkBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwicGhvbmVfdmVyaWZpZWQiOmZhbHNlLCJzdWIiOiJjNmYxYjc1NS1hZDAzLTQ1MzAtYjA3Ni0xN2JmMDkxNzU5NDgifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc2MjAzMDU0NX1dLCJzZXNzaW9uX2lkIjoiN2FlMGFhMmYtN2RjNy00NGJmLTg5NjktNTUwNjMzMDQ2N2ZkIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.flM57eab7ng7n6ddWL5TkQ_QjJ1k0U1fdSm6Lbt9m-w',
  }) async {
    final ffApiRequestBody = '''
{
  "p_id": ${idexp},
  "p_spd": "${escapeStringForJson(spd)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cambiospd',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/update_expediente_spd',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class IngresosperfilCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY1ODk4NzM5LCJpYXQiOjE3NjU4OTUxMzksImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODk1MTM5fV0sInNlc3Npb25faWQiOiJjZGIyZmJmZS1kOTMxLTQ5YzYtYWM0YS1lNDA3YTdkMzVmOGEiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.BitU8hpnL32JLH9g8IW3ZhOs5ggV-FUz7xBYWpJfzpg',
    int? id = 393,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ingresosperfil',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/ingresos?select=*,expediente(*,NNyA(*)),AnexoAForm1(*),seccion9(*),grupo_conviviente(*)&id=eq.393',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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
}

class ExpedientennyaspdCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY1ODkxOTkwLCJpYXQiOjE3NjU4ODgzOTAsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODg4MzkwfV0sInNlc3Npb25faWQiOiIwN2MxOTRhOC0wODYzLTQwYWQtOGE4NS1mN2VjNzhjMDBkODQiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.sPq-Jj35AAzTSADD_AlLT0dl5cXcGGOGmxHX3MhHE6Q',
    int? id = 585,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'expedientennyaspd',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/expediente?select=*,NNyA(*)&id=eq.${id}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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
}

class SeccionygrupoconvivienteCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY0NTY1NzY1LCJpYXQiOjE3NjQ1NjIxNjUsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY0NTYyMTY1fV0sInNlc3Npb25faWQiOiI3MTc3NjNkYy1lOGYxLTRmZjYtYmQ5ZC0wODU2MWNhYmFkZTkiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.hJ60wYHZoB8liV_Bejf4iH5UvV9V1yj1S6kZ7ybBjPs',
    int? id = 359,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'seccionygrupoconviviente',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/seccion8?select=*,grupo_conviviente(*)&idIngreso=eq.${id}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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
}

class CrearyverificarexpedienteCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY1ODk1NTY0LCJpYXQiOjE3NjU4OTE5NjQsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODg4MzkwfV0sInNlc3Npb25faWQiOiIwN2MxOTRhOC0wODYzLTQwYWQtOGE4NS1mN2VjNzhjMDBkODQiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.Ac_cdpH1gJp5EKChiVvth0CKFsHBwEa_y874U2P2dgs',
    String? pNombres = 'gonzalo',
    String? pApellidos = 'perez',
    int? pDni = 31450111,
    int? pEdad = 12,
    String? pFechaNac = '12/12/2021',
    String? pSpd = 'SPD Colón',
    String? pFechaIngreso = '04/12/2025',
    int? pZona = 4,
    String? pIduser = 'f9b8a1ab-90cb-4c0c-a634-5673c474e808',
  }) async {
    final ffApiRequestBody = '''
{
  "p_nombres": "${escapeStringForJson(pNombres)}",
  "p_apellidos": "${escapeStringForJson(pApellidos)}",
  "p_dni": ${pDni},
  "p_edad": ${pEdad},
  "p_fecha_nac": "${escapeStringForJson(pFechaNac)}",
  "p_spd": "${escapeStringForJson(pSpd)}",
  "p_fecha_ingreso": "${escapeStringForJson(pFechaIngreso)}",
  "p_zona": ${pZona},
  "p_iduser": "${escapeStringForJson(pIduser)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crearyverificarexpediente',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/crear_expediente_nnya',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class AgregarGrupoConvivienteCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY0OTU0NTIwLCJpYXQiOjE3NjQ5NTA5MjAsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY0MjcwNDk1fV0sInNlc3Npb25faWQiOiJiMDdmY2E1OS1lODE5LTQzZDItYTRlYS0zMTM5NGI4MTE5ZDIiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.0qHZSAxPpp3J1W97xuPuT4ptPULGYyCRNba6ZoOfySk',
    int? pIdexpediente = 581,
    int? pIdingreso = 397,
    int? pDni = 65897451,
    String? pNombre = 'carlos',
    String? pApellido = 'perez',
    int? pEdad = 12,
    String? pFechaNac = '2021-12-25',
    String? pVinculo = 'MADRE',
    String? pVinculoObs = 'ert',
    String? pTelefono = '5345345354',
    String? pDireccion = 'San martin',
    String? pObservaciones = 'sdf',
    String? pConviviente = 'Si',
    bool? pUsarDireccionExpediente,
    String? pIduser = 'f9b8a1ab-90cb-4c0c-a634-5673c474e808',
  }) async {
    final ffApiRequestBody = '''
{
  "p_apellido": "${escapeStringForJson(pApellido)}",
  "p_conviviente": "${escapeStringForJson(pConviviente)}",
  "p_direccion": "${escapeStringForJson(pDireccion)}",
  "p_dni": ${pDni},
  "p_edad": ${pEdad},
  "p_fecha_nac": "${escapeStringForJson(pFechaNac)}",
  "p_idexpediente": ${pIdexpediente},
  "p_idingreso": ${pIdingreso},
  "p_iduser": "${escapeStringForJson(pIduser)}",
  "p_nombre": "${escapeStringForJson(pNombre)}",
  "p_observaciones": "${escapeStringForJson(pObservaciones)}",
  "p_telefono": ${escapeStringForJson(pTelefono)},
  "p_usar_direccion_expediente": ${pUsarDireccionExpediente},
  "p_vinculo": "${escapeStringForJson(pVinculo)}",
  "p_vinculo_obs": "${escapeStringForJson(pVinculoObs)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Agregar grupo conviviente',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/agregar_conviviente_expediente',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class ActualizarGrupoConvivienteCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY0OTU4MDk2LCJpYXQiOjE3NjQ5NTQ0OTYsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY0MjcwNDk1fV0sInNlc3Npb25faWQiOiJiMDdmY2E1OS1lODE5LTQzZDItYTRlYS0zMTM5NGI4MTE5ZDIiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.42I508WxhRrNrWbpXztxMbIKppLL5hvtx4ZP0PMX-y4',
    int? pIdexpediente = 581,
    int? pIdingreso = 397,
    int? pDni = 65897451,
    String? pNombre = 'carlos',
    String? pApellido = 'perez actualizado',
    int? pEdad = 12,
    String? pFechaNac = '2021-12-25',
    String? pVinculo = 'MADRE',
    String? pVinculoObs = 'ert',
    String? pTelefono = '5345345354',
    String? pDireccion = 'San martin',
    String? pObservaciones = 'sdf',
    String? pConviviente = 'Si',
    bool? pUsarDireccionExpediente,
    String? pIduser = 'f9b8a1ab-90cb-4c0c-a634-5673c474e808',
    int? pIdGrupoconviviente = 611,
  }) async {
    final ffApiRequestBody = '''
{
  "p_apellido": "${escapeStringForJson(pApellido)}",
  "p_conviviente": "${escapeStringForJson(pConviviente)}",
  "p_direccion": "${escapeStringForJson(pDireccion)}",
  "p_dni": ${pDni},
  "p_edad": ${pEdad},
  "p_fecha_nac": "${escapeStringForJson(pFechaNac)}",
  "p_id_grupoconviviente": ${pIdGrupoconviviente},
  "p_idexpediente": ${pIdexpediente},
  "p_idingreso": ${pIdingreso},
  "p_iduser": "${escapeStringForJson(pIduser)}",
  "p_nombre": "${escapeStringForJson(pNombre)}",
  "p_observaciones": "${escapeStringForJson(pObservaciones)}",
  "p_telefono": "${escapeStringForJson(pTelefono)}",
  "p_usar_direccion_expediente": ${pUsarDireccionExpediente},
  "p_vinculo": "${escapeStringForJson(pVinculo)}",
  "p_vinculo_obs": "${escapeStringForJson(pVinculoObs)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Actualizar grupo conviviente ',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/actualizar_conviviente_expediente',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class InfoDeContextoCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3MDIzMDYyLCJpYXQiOjE3NjcwMTk0NjIsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY2ODYxMzU0fV0sInNlc3Npb25faWQiOiJiNDdlZTk0YS1mNmQ4LTRmNmMtYmExNS1jNzU5MWNmYmEwMDkiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.8yhqVF2LwKR6khLplbAhoFA3OeIs7SbNunUfrSbpgKM',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'info de contexto',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/get_home_contexto',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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
}

class SearchExpedientesPageCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3MDQ3NjAwLCJpYXQiOjE3NjcwNDQwMDAsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3MDQ0MDAwfV0sInNlc3Npb25faWQiOiI5MzI1NjQwMi03YTA3LTRiM2QtYmViZC01OTg1Y2EzODVlNTciLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.renKownqi5A2sLvlSGlGREkgORSLV1le8L_TN36kecU',
    int? pLimit = 20,
    int? pOffset = 0,
    String? pQ = 'dario',
  }) async {
    final ffApiRequestBody = '''
{
  "p_limit": ${pLimit},
  "p_offset": ${pOffset},
  "p_q": "${escapeStringForJson(pQ)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'search expedientes page',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/search_expedientes_paged',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class TarjetaexpedienteCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? idexpediente = 584,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idexpediente": ${idexpediente}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tarjetaexpediente',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_expediente_header',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class ListaingresosCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY1ODkxOTkwLCJpYXQiOjE3NjU4ODgzOTAsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODg4MzkwfV0sInNlc3Npb25faWQiOiIwN2MxOTRhOC0wODYzLTQwYWQtOGE4NS1mN2VjNzhjMDBkODQiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.sPq-Jj35AAzTSADD_AlLT0dl5cXcGGOGmxHX3MhHE6Q',
    int? idexpediente = 584,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idexpediente": ${idexpediente}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'listaingresos',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_ingresos_por_expediente',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class PerfilCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY1ODk5MTY0LCJpYXQiOjE3NjU4OTU1NjQsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODg4MzkwfV0sInNlc3Npb25faWQiOiIwN2MxOTRhOC0wODYzLTQwYWQtOGE4NS1mN2VjNzhjMDBkODQiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.s--9lLaVvOMW7mrT_GeMwWY1_H3d4pK9GarO9F8xGas',
    int? idingreso = 401,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idingreso": ${idingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Perfil',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_ingreso_perfil_data',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class CrearAmpliacionConHistorialCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY2NTE0OTU1LCJpYXQiOjE3NjY1MTEzNTUsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODAzNDU4fV0sInNlc3Npb25faWQiOiJmMmI3MDVlYi02MDNlLTQyOTQtODIxZi1iMDk3Y2Q4ODhjNmIiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.E_lTfj9nB8S1JscpCACZThr_lA8CYYdBWf-_SAJnSS8',
    String? pFecha = '12/12/1212',
    int? pIdexpediente = 585,
    int? pIdingreso = 401,
    String? pObservaciones = 'sdf',
    String? pTipoampliacion = 'Entrevista al NNyA',
  }) async {
    final ffApiRequestBody = '''
{
  "p_fecha": "${escapeStringForJson(pFecha)}",
  "p_idexpediente": ${pIdexpediente},
  "p_idingreso": ${pIdingreso},
  "p_observaciones": "${escapeStringForJson(pObservaciones)}",
  "p_tipoampliacion": "${escapeStringForJson(pTipoampliacion)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Crear ampliacion con historial',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/crear_ampliacion_con_historial',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class PerfilCompletoPaginaCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY2Nzg2MTEwLCJpYXQiOjE3NjY3ODI1MTAsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY2NzgyNTEwfV0sInNlc3Npb25faWQiOiIyZGIyMjFjNy1kYTBjLTRlMGItODJjNC04ZWRhODRiZjlmNzAiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.Tt6Cx_Sv7fQna0xXiF0tarYWLuVAWNHJZoq9m9H0fp8',
    int? pIdingreso = 401,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idingreso": ${pIdingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Perfil completo pagina',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/perfil_completo',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class InformeSintesisPaginaCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY2NzcwNzQyLCJpYXQiOjE3NjY3NjcxNDIsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY1ODg4MzkwfV0sInNlc3Npb25faWQiOiIwN2MxOTRhOC0wODYzLTQwYWQtOGE4NS1mN2VjNzhjMDBkODQiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.gF9WrtWLEnAWRNkxF_cN30CAXyWcHnmFKSkkVWR1pQ4',
    int? pIdingreso = 401,
    int? pIdexpediente = 585,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idexpediente": ${pIdexpediente},
  "p_idingreso": ${pIdingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'informe sintesis pagina',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/cargar_formulario5_pagina',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class AperturaDemandaCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY2ODY0OTU0LCJpYXQiOjE3NjY4NjEzNTQsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY2ODYxMzU0fV0sInNlc3Npb25faWQiOiJiNDdlZTk0YS1mNmQ4LTRmNmMtYmExNS1jNzU5MWNmYmEwMDkiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.mFx3-hW_jaUDl5V0HLDB7HpYQ9BbfqrJiyNpzAa00rE',
    int? pIdingreso = 401,
    int? pIdexpediente = 585,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idexpediente": ${pIdexpediente},
  "p_idingreso": ${pIdingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Apertura demanda',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_apertura_expediente',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class AsesoramientoDemandaCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY2ODY0OTU0LCJpYXQiOjE3NjY4NjEzNTQsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY2ODYxMzU0fV0sInNlc3Npb25faWQiOiJiNDdlZTk0YS1mNmQ4LTRmNmMtYmExNS1jNzU5MWNmYmEwMDkiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.mFx3-hW_jaUDl5V0HLDB7HpYQ9BbfqrJiyNpzAa00rE',
    int? pIdingreso = 401,
    int? pIdexpediente = 585,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idexpediente": ${pIdexpediente},
  "p_idingreso": ${pIdingreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Asesoramiento demanda ',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_asesoramiento_expediente',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class CrearingresoconexpedientesinoexisteCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3MDE5NDk5LCJpYXQiOjE3NjcwMTU4OTksImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY2ODYxMzU0fV0sInNlc3Npb25faWQiOiJiNDdlZTk0YS1mNmQ4LTRmNmMtYmExNS1jNzU5MWNmYmEwMDkiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.LkXFRpeoGkETZ78q8sZPRjdNco7rq_pGTZYK8IW8Ikc',
    int? pIdingreso = 401,
    int? pIdNnya = 915,
  }) async {
    final ffApiRequestBody = '''
{
  "p_id_ingreso_origen": ${pIdingreso},
  "p_id_nnya": ${pIdNnya}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crearingresoconexpedientesinoexiste',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_crear_ingreso_con_expediente_si_no_existe',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

  static int? idexpediente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_expediente''',
      ));
  static int? idingresonuevo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_ingreso_nuevo''',
      ));
  static bool? ok(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.ok''',
      ));
}

class CopiaringresocompletoCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3MDE5NDk5LCJpYXQiOjE3NjcwMTU4OTksImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY2ODYxMzU0fV0sInNlc3Npb25faWQiOiJiNDdlZTk0YS1mNmQ4LTRmNmMtYmExNS1jNzU5MWNmYmEwMDkiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.LkXFRpeoGkETZ78q8sZPRjdNco7rq_pGTZYK8IW8Ikc',
    int? pIdIngresoDestino = 406,
    int? pIdIngresoOrigen = 401,
  }) async {
    final ffApiRequestBody = '''
{
  "p_id_ingreso_destino": ${pIdIngresoDestino},
  "p_id_ingreso_origen": ${pIdIngresoOrigen}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'copiaringresocompleto',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_copiar_ingreso_completo',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class FormularioCincoPaginaCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3MTA5Mzk4LCJpYXQiOjE3NjcxMDU3OTgsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3MDQ1NzI1fV0sInNlc3Npb25faWQiOiI2Y2E4YzViYy0zNWVhLTRjOTgtYjIyYy0yMzcyODQxNjQ2ZTkiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.cWK5_c-RBmFMhNIWvjPSMh0xpFOoKy9pOUg9t7dkFBY',
    int? pIdIngreso = 401,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idingreso": ${pIdIngreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Formulario cinco  pagina',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_formulario5_pagina',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class FormularioSiesMedidasCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3Mzg4MzE4LCJpYXQiOjE3NjczODQ3MTgsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3Mzg0NzE4fV0sInNlc3Npb25faWQiOiJlMzc2ZDhiYy00MGEwLTQ4ZWQtYmJkNS02NzA3MzAyMjI1YjciLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.aqmciDqlFMpbh7w4HuEJ4z3_70KtpxE5zT1nEjyo8Mc',
    int? pIdIngreso = 401,
  }) async {
    final ffApiRequestBody = '''
{
  "p_id_ingreso": ${pIdIngreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Formulario sies medidas',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_get_definicion_medidas',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class RcpCeseCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3NjI4MjE0LCJpYXQiOjE3Njc2MjQ2MTQsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3MzYwOTQ0fV0sInNlc3Npb25faWQiOiIxMmNlOTEzOS0zMTEyLTQ4YTMtODUwNi1mZjYzOTg5NzA5YWIiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.6ypUeziv1tcVmzm8OECV6gzFAvQQ4oAMy3Z6YCJdkZc',
    int? pIdIngreso = 401,
  }) async {
    final ffApiRequestBody = '''
{
  "p_id_ingreso": ${pIdIngreso}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'rcp cese',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_get_cese_header_bundle',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class GuardarCeseCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3MzkxODgyLCJpYXQiOjE3NjczODgyODIsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3Mzg0NzE4fV0sInNlc3Npb25faWQiOiJlMzc2ZDhiYy00MGEwLTQ4ZWQtYmJkNS02NzA3MzAyMjI1YjciLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.R1WdZ__P24-o_rHbMd_nzEilUJK1Cq0xTZ5KuT-358M',
    int? pIdIngreso = 0,
    int? pIdExpediente = 0,
    dynamic payloadJson,
  }) async {
    final payload = _serializeJson(payloadJson);
    final ffApiRequestBody = '''
{
  "p_id_ingreso": ${pIdIngreso},
  "p_id_expediente": ${pIdExpediente},
  "p_payload": ${payload}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'guardar cese',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/rpc_save_cese_ingreso',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class GetHistorialCall {
  static Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3NjI2NTUxLCJpYXQiOjE3Njc2MjI5NTEsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3NjIyOTUxfV0sInNlc3Npb25faWQiOiI2YTM0MjVhMy00ZTJhLTRhZmUtYWNjNC0yNjE0NzI1ZDYxOTIiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.F4Z8vsbsdct-ZX6rImMbLh102X91r-Er8_yF4__di_U',
    int? pIdIngreso = 401,
    int? pLimit = 20,
    int? pOffset = 0,
  }) async {
    final ffApiRequestBody = '''
{
  "p_idingreso": ${pIdIngreso},
  "p_limit": ${pLimit},
  "p_offset": ${pOffset}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get historial',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/rest/v1/rpc/get_historial_completo',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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

class CrearusuarioCall {
  static Future<ApiCallResponse> call({
    String? mail = 'b@b.com',
    String? nombre = 'dario 5555',
    String? spd = 'SPD Jardín',
    int? zona = 3,
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJmOWI4YTFhYi05MGNiLTRjMGMtYTYzNC01NjczYzQ3NGU4MDgiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3NjQzNzAyLCJpYXQiOjE3Njc2NDAxMDIsImVtYWlsIjoiZGFyaW9AZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6ImRhcmlvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6ImY5YjhhMWFiLTkwY2ItNGMwYy1hNjM0LTU2NzNjNDc0ZTgwOCJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3MzYwOTQ0fV0sInNlc3Npb25faWQiOiIxMmNlOTEzOS0zMTEyLTQ4YTMtODUwNi1mZjYzOTg5NzA5YWIiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.kIARg2J2EFshVpF6ufiUUC3BqtZCjQSZ2KWsDy8KMh8',
    String? pass = '123456',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(mail)}",
  "password": "${escapeStringForJson(pass)}",
  "nombre_completo": "${escapeStringForJson(nombre)}",
  "spd_seleccionado": "${escapeStringForJson(spd)}",
  "zona_manual": ${zona}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crearusuario',
      apiUrl:
          'https://liavirbwftopvrcjyprr.supabase.co/functions/v1/bright-task',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpYXZpcmJ3ZnRvcHZyY2p5cHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA3MDEzNTYsImV4cCI6MjAzNjI3NzM1Nn0.FrE2DI_V7eJWhilA-GP_e7s2LAubOHlgnVnya-uWGi8',
        'Authorization': 'Bearer ${token}',
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
