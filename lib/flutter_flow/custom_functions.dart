import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';
import "package:community_testing_ryusdv/backend/schema/structs/index.dart"
    as community_testing_ryusdv_data_schema;
import "package:community_testing_ryusdv/backend/schema/enums/enums.dart"
    as community_testing_ryusdv_enums;

String? mayusculas(String? texto) {
  // uppercase from texto
  return texto?.toUpperCase();
}

String? listahtmlsenaf(List<String>? links) {
  // return list html from links
  if (links == null || links.isEmpty) return null;

  StringBuffer htmlList = StringBuffer('<ul>');
  for (var link in links) {
    htmlList.write('<li><a href="$link">$link</a></li>');
  }
  htmlList.write('</ul>');

  return htmlList.toString();
}

DateTime? stringtodate(String? fecha) {
  // return date time from string
  if (fecha == null) return null;
  try {
    return DateFormat("yyyy-MM-dd HH:mm:ss").parse(fecha);
  } catch (e) {
    return null;
  }
}

String? datepickertostring(DateTime? fecha) {
  // return string from fecha format "fecha": "2026-01-02"
  if (fecha == null) return null;
  return DateFormat('yyyy-MM-dd').format(fecha);
}
