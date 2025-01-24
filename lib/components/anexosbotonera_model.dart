import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anexosbotonera_widget.dart' show AnexosbotoneraWidget;
import 'dart:async';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AnexosbotoneraModel extends FlutterFlowModel<AnexosbotoneraWidget> {
  ///  Local state fields for this component.

  bool reqacciones = true;

  bool anexoeducacion = true;

  bool reunioninter = true;

  bool anexosalud = true;

  bool entrevistaNNyA = true;

  bool entrevistaflia = true;

  bool ampliacioninfo = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Stores action output result for [Bottom Sheet - Anexoeducacionsolicitud] action in Button widget.
  bool? creosolicitudeducacion;
  Completer<List<AnexoinstitucioneeducacionRow>>? requestCompleter2;
  // Stores action output result for [Bottom Sheet - Anexoinstitucionsalud] action in Button widget.
  bool? creosolicitudsalud;
  Completer<List<AnexoinstitucionesaludRow>>? requestCompleter1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
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
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
