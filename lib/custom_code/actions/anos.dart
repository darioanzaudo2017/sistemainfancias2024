// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int?> anos(DateTime? fecnac) async {
  if (fecnac == null) {
    return null;
  }

  final now = DateTime.now();
  int years = now.year - fecnac.year;

  // Check if birthday hasn't occurred this year yet
  if (now.month < fecnac.month ||
      (now.month == fecnac.month && now.day < fecnac.day)) {
    years--;
  }

  return years;
}
