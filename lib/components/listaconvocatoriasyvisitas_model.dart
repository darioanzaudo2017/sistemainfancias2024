import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'listaconvocatoriasyvisitas_widget.dart'
    show ListaconvocatoriasyvisitasWidget;
import 'package:flutter/material.dart';

class ListaconvocatoriasyvisitasModel
    extends FlutterFlowModel<ListaconvocatoriasyvisitasWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - avisoconcurrenciaadulto] action in Button widget.
  bool? convocatoria;
  Completer<List<AvisovisitaadultosRow>>? requestCompleter;

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
