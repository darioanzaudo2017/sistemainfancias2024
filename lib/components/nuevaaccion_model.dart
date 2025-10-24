import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'nuevaaccion_widget.dart' show NuevaaccionWidget;
import 'package:flutter/material.dart';

class NuevaaccionModel extends FlutterFlowModel<NuevaaccionWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - Agregaraccionmodal] action in Button widget.
  bool? agregaaccion;
  Completer<List<AccionesMedidaRow>>? requestCompleter2;
  Completer<List<AccionesMedidaRow>>? requestCompleter1;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Bottom Sheet - estadodeaccion] action in IconButton widget.
  bool? accion2;
  // Stores action output result for [Bottom Sheet - estadodeaccion] action in IconButton widget.
  bool? accion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
