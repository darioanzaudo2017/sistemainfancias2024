import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'listasolicitudasalud_widget.dart' show ListasolicitudasaludWidget;
import 'package:flutter/material.dart';

class ListasolicitudasaludModel
    extends FlutterFlowModel<ListasolicitudasaludWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - Anexoinstitucionsalud] action in Button widget.
  bool? solicitudsalud;
  Completer<List<AnexoinstitucionesaludRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
