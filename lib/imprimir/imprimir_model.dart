import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'imprimir_widget.dart' show ImprimirWidget;
import 'package:flutter/material.dart';

class ImprimirModel extends FlutterFlowModel<ImprimirWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (crearlistadocumentosadjuntos)] action in Button widget.
  ApiCallResponse? apiResultgyy;
  Completer<List<DocumentosadjuntosRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<DocumentosadjuntosRow>? enviarmail;
  // Stores action output result for [Backend Call - API (email resend)] action in Button widget.
  ApiCallResponse? apiResult1fi;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznw;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwrecepcion;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwinfsintesiscreate;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwinfmedidas;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwinfsenaf;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwCopy;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwCopyrecepcion;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwCopyinfsintesis;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwCopyMedidas;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwCopyFormularioSolicituddemedidaexcepcional;

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
