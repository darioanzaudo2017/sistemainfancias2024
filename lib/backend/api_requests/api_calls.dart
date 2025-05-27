import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BusquedaExpedienteLISTACall {
  static Future<ApiCallResponse> call({
    String? busquedaExp = 'vico',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6Ik1jUzFaOUhyblIvelF4SmkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2xpYXZpcmJ3ZnRvcHZyY2p5cHJyLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiI4YmUwZTU0Zi1iNWMxLTRkNjItYWM3Zi1hNWVlNjIyOGFmZmMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzQ3MDc0NDQ3LCJpYXQiOjE3NDcwNzA4NDcsImVtYWlsIjoiZGFyaW9hbnphdWRvQGdtYWlsLmNvbSIsInBob25lIjoiIiwiYXBwX21ldGFkYXRhIjp7InByb3ZpZGVyIjoiZW1haWwiLCJwcm92aWRlcnMiOlsiZW1haWwiXX0sInVzZXJfbWV0YWRhdGEiOnsiZW1haWwiOiJkYXJpb2FuemF1ZG9AZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjhiZTBlNTRmLWI1YzEtNGQ2Mi1hYzdmLWE1ZWU2MjI4YWZmYyJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzQ3MDcwODQ3fV0sInNlc3Npb25faWQiOiI2MjU1MzNiZi1jYjJmLTQxZjgtYTU5OS0zMTQwZWFkYWFiY2EiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.88zr4vr664bwi41dyxkhfkG7tiSGjmFYv0ZddBHOuNo',
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
    int? idingreso = 88,
    int? edit = 0,
    String? carpeta = 'a',
  }) async {
    final ffApiRequestBody = '''
{
  "idingreso": ${idingreso},
  "edit": ${edit},
  "carpeta": "${carpeta}"
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
    String? idampliacion = 'sdf',
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
  "idingreso": ${idingreso},
  "carpeta": "${escapeStringForJson(carpeta)}",
  "idampliacion": "${escapeStringForJson(idampliacion)}",
  "asd": "asdasdasdasd"
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
    int? dni = 5454545,
    String? expediente = 'sdfsdf',
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
  "idingreso": ${idingreso},
  "carpeta": "${escapeStringForJson(carpeta)}",
  "telefono": "${escapeStringForJson(telefono)}",
  "iddoc": "${escapeStringForJson(iddoc)}",
  "dni": ${dni},
  "expediente": "${escapeStringForJson(expediente)}"
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
"dni":${dni},
  "fecha": "${escapeStringForJson(fecha)}",
  "CPC": "${escapeStringForJson(cpc)}",
  "telefono": "${escapeStringForJson(telefono)}",
  "idingreso": ${idingreso},
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
  "idingreso": ${idingreso},
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
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": ${dni},
  "domicilio": "${escapeStringForJson(domicilio)}",
  "barrio": "${escapeStringForJson(barrio)}",
  "historiaclinica": "${escapeStringForJson(historiaclinica)}",
  "mes": "${escapeStringForJson(mes)}",
  "año": "${escapeStringForJson(ano)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idsolicitud": ${idsolicitudsalud},
  "carpeta": "${escapeStringForJson(carpeta)}",
  "SPD": "${escapeStringForJson(spd)}",
  "institucion": "${escapeStringForJson(institucion)}"
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
    String? profesionales = 'dario',
    int? idreunion = 5,
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": ${dni},
  "institucion": "${escapeStringForJson(institucion)}",
  "objetivos": "${escapeStringForJson(objetivos)}",
  "reunion": "${escapeStringForJson(reunion)}",
  "puntosacuerdos": "${escapeStringForJson(puntosacuerdos)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idingreso": ${idingreso},
  "profesionales": "${escapeStringForJson(profesionales)}",
  "carpeta": "${escapeStringForJson(carpeta)}",
  "idreunion": ${idreunion}
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
    int? idsolicitud = 3,
    String? carpeta = 'dfg',
    String? spd = 'sdf',
    String? fechadecomienzo = 'dfgdfg',
  }) async {
    final ffApiRequestBody = '''
{
  "fecha": "${escapeStringForJson(fecha)}",
  "nombre y apellido": "${escapeStringForJson(nombreyapellido)}",
  "dni": ${dni},
  "domicilio": "${escapeStringForJson(domicilio)}",
  "numestablecimiento": "${escapeStringForJson(numestablecimiento)}",
  "historiaclinica": "${escapeStringForJson(historiaclinica)}",
  "mes": "${escapeStringForJson(mes)}",
  "año": "${escapeStringForJson(ano)}",
  "expediente": "${escapeStringForJson(expediente)}",
  "idsolicitud": ${idsolicitud},
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
  }) async {
    final ffApiRequestBody = '''
{
  "from": "Subsecretaría <onboarding@sistemasdeinfancias.com.ar>",
  "to": [
    "${escapeStringForJson(mail)}"
  ],
  "subject": "Nueva solicitud 2",
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
    String? spd = 'sdf',
    String? telefonospd = 'sdf',
    String? mail = 'sdf',
    String? nNaAprincipal = 'sdf',
    List<String>? nNyAList,
    String? rnp = 'sdf',
    String? dni = 'sdf',
    String? historiaclinica = 'sdf',
    String? cud = 'sdf',
    String? obrasocial = 'sdf',
    String? escuela = 'sdf',
    String? grado = 'sdf',
    String? turno = 'sdf',
    String? domescuela = 'sdf',
    String? telescuela = 'sdf',
    String? concurrencia = 'sdf',
    String? nivelalcanzado = 'sdf',
    String? referenteesc = 'sdf',
    String? trabaja = 'sdf',
    String? tipotrabajo = 'sdf',
    String? grupoconviviente = 'sdf',
    String? tipofamilia = 'sdf',
    String? resenasituacion = 'sdf',
    List<String>? derechosList,
    List<String>? medidasform6List,
    String? fundamentacion = 'sdf',
    List<String>? indicadoresriesgoList,
    String? agotado = 'sdf',
    String? riesgofam = 'sdf',
    String? firmas = 'sdf',
    String? token = 'sdfsdf',
  }) async {
    final nNyA = _serializeList(nNyAList);
    final derechos = _serializeList(derechosList);
    final medidasform6 = _serializeList(medidasform6List);
    final indicadoresriesgo = _serializeList(indicadoresriesgoList);

    final ffApiRequestBody = '''
{
  "spd": "${escapeStringForJson(spd)}",
  "telefonospd": "${escapeStringForJson(telefonospd)}",
  "mail": "${escapeStringForJson(mail)}",
  "NNaAprincipal": "${escapeStringForJson(nNaAprincipal)}",
  "NNyA": [
    ${nNyA}
  ],
  "rnp": "${escapeStringForJson(rnp)}",
  "dni": "${escapeStringForJson(dni)}",
  "historiaclinica": "${escapeStringForJson(historiaclinica)}",
  "cud": "${escapeStringForJson(cud)}",
  "obrasocial": "${escapeStringForJson(obrasocial)}",
  "escuela": "${escapeStringForJson(escuela)}",
  "grado": "${escapeStringForJson(grado)}",
  "turno": "${escapeStringForJson(turno)}",
  "domescuela": "${escapeStringForJson(domescuela)}",
  "telescuela": "${escapeStringForJson(telescuela)}",
  "concurrencia": "${escapeStringForJson(concurrencia)}",
  "nivelalcanzado": "${escapeStringForJson(nivelalcanzado)}",
  "referenteesc": "${escapeStringForJson(referenteesc)}",
  "trabaja": "${escapeStringForJson(trabaja)}",
  "tipotrabajo": "${escapeStringForJson(tipotrabajo)}",
  "grupoconviviente": "${escapeStringForJson(grupoconviviente)}",
  "tipofamilia": "${escapeStringForJson(tipofamilia)}",
  "resenasituacion": "${escapeStringForJson(resenasituacion)}",
  "derechos": [
    ${derechos}
  ],
  "medidasform6": [
    ${medidasform6}
  ],
  "fundamentacion": "${escapeStringForJson(fundamentacion)}",
  "indicadoresriesgo": [
    ${indicadoresriesgo}
  ],
  "Agotado": "${escapeStringForJson(agotado)}",
  "riesgofam": "${escapeStringForJson(riesgofam)}",
  "firmas": "${escapeStringForJson(firmas)}"
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
