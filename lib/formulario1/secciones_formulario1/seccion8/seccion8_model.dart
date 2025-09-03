import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'seccion8_widget.dart' show Seccion8Widget;
import 'package:flutter/material.dart';

class Seccion8Model extends FlutterFlowModel<Seccion8Widget> {
  ///  Local state fields for this component.

  bool editarpersonarelacionadas = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<Seccion8Row>();
  Completer<List<Seccion8Row>>? requestCompleter;
  // Stores action output result for [Bottom Sheet - agregarPersonaRelacionada] action in Button widget.
  bool? creopersonaampliar;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }

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
