import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'ingresos_widget.dart' show IngresosWidget;
import 'package:flutter/material.dart';

class IngresosModel extends FlutterFlowModel<IngresosWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<VistaExpedientesUltimoEstadoRow>? queryexp;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  IngresosRow? crearingreso;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ImpresionesExpedientesRow>? caprtetaexp;
  // Stores action output result for [Backend Call - API (crear carpeta ingreso)] action in Button widget.
  ApiCallResponse? apiResultz88;
  Completer<List<VistaIngresosDiasRow>>? requestCompleter;

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
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
