// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import "package:community_testing_ryusdv/backend/schema/structs/index.dart"
    as community_testing_ryusdv_data_schema;
import "package:community_testing_ryusdv/backend/schema/enums/enums.dart"
    as community_testing_ryusdv_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> listadedocumentoadjuntosparasolicitud(
  List<dynamic>? documentos,
) async {
  // Validación básica
  if (documentos == null || documentos.isEmpty) return '';

  // Construcción del HTML
  String html = "<ul>";
  for (var doc in documentos) {
    final tipo = doc['tipo'] ?? 'Documento';
    final link = doc['link'] ?? '#';
    html += '<li><a href="$link">$tipo</a></li>';
  }
  html += "</ul>";

  return html;
}
