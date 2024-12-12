import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case VistaTotalVulneradosRow:
            return VistaTotalVulneradosRow(data);
          case ImpresionesExpedientesRow:
            return ImpresionesExpedientesRow(data);
          case DerechovulneradoRow:
            return DerechovulneradoRow(data);
          case VistaRecepciondelademandaRow:
            return VistaRecepciondelademandaRow(data);
          case AnexoAForm1Row:
            return AnexoAForm1Row(data);
          case VistaEstadisticasRow:
            return VistaEstadisticasRow(data);
          case AvisovisitaNNyARow:
            return AvisovisitaNNyARow(data);
          case NNyARow:
            return NNyARow(data);
          case VistaExpedientesIngresos24hsRow:
            return VistaExpedientesIngresos24hsRow(data);
          case FormularioSenafRow:
            return FormularioSenafRow(data);
          case UserRolRow:
            return UserRolRow(data);
          case VistaIngresosDiasRow:
            return VistaIngresosDiasRow(data);
          case PaginaFormulario2y3Row:
            return PaginaFormulario2y3Row(data);
          case GrupofamiliarRow:
            return GrupofamiliarRow(data);
          case SpdRow:
            return SpdRow(data);
          case AnexosForm1Row:
            return AnexosForm1Row(data);
          case VistaExpedientesSenafRow:
            return VistaExpedientesSenafRow(data);
          case VistaNnyaexpgruRow:
            return VistaNnyaexpgruRow(data);
          case UsuariosRow:
            return UsuariosRow(data);
          case AlertasRow:
            return AlertasRow(data);
          case Seccion8Row:
            return Seccion8Row(data);
          case Formulario9Row:
            return Formulario9Row(data);
          case GrupofamiliarexpedientesRow:
            return GrupofamiliarexpedientesRow(data);
          case Seccion9Row:
            return Seccion9Row(data);
          case ListaDerechosVulneradosexpedienteRow:
            return ListaDerechosVulneradosexpedienteRow(data);
          case AnexoB1Form1Row:
            return AnexoB1Form1Row(data);
          case DocumentosadjuntosRow:
            return DocumentosadjuntosRow(data);
          case VistaExpedientesRow:
            return VistaExpedientesRow(data);
          case Anexo1Form1Row:
            return Anexo1Form1Row(data);
          case GrupoConvivienteRow:
            return GrupoConvivienteRow(data);
          case ResuestasForm6Row:
            return ResuestasForm6Row(data);
          case NNyAExpGruRow:
            return NNyAExpGruRow(data);
          case Seccion1Row:
            return Seccion1Row(data);
          case ExpedienteRow:
            return ExpedienteRow(data);
          case Seccion2Row:
            return Seccion2Row(data);
          case Formulario3Row:
            return Formulario3Row(data);
          case AvisovisitaadultosRow:
            return AvisovisitaadultosRow(data);
          case Anexo4RequerimientoaccionesRow:
            return Anexo4RequerimientoaccionesRow(data);
          case AnexoinstitucionesaludRow:
            return AnexoinstitucionesaludRow(data);
          case Formulario2Row:
            return Formulario2Row(data);
          case VistaExpedientesUltimoEstadoRow:
            return VistaExpedientesUltimoEstadoRow(data);
          case Seccion4Row:
            return Seccion4Row(data);
          case Formulario5Row:
            return Formulario5Row(data);
          case RolesRow:
            return RolesRow(data);
          case IngresosRow:
            return IngresosRow(data);
          case Seccion5Row:
            return Seccion5Row(data);
          case Formulario4Row:
            return Formulario4Row(data);
          case Anexo5requerimientoaccionesRow:
            return Anexo5requerimientoaccionesRow(data);
          case Seccion6Row:
            return Seccion6Row(data);
          case PruebaarchivosRow:
            return PruebaarchivosRow(data);
          case AnexoinstitucioneeducacionRow:
            return AnexoinstitucioneeducacionRow(data);
          case Formulario7Row:
            return Formulario7Row(data);
          case Seccion7Row:
            return Seccion7Row(data);
          case Formulario6Row:
            return Formulario6Row(data);
          case VistaExpedientesIngresosCountRow:
            return VistaExpedientesIngresosCountRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
