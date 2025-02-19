import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'listareunioninterinstitucional_widget.dart'
    show ListareunioninterinstitucionalWidget;
import 'package:flutter/material.dart';

class ListareunioninterinstitucionalModel
    extends FlutterFlowModel<ListareunioninterinstitucionalWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - Anexoreunioninstitucional] action in Button widget.
  bool? creonuevareunion;
  Completer<List<Anexo4RequerimientoaccionesRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (ANEXO  REUNIN INTERINSTITUCIONAL)] action in Button widget.
  ApiCallResponse? apiResultzqa;

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
