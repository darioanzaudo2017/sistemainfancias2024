import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'ingresos_widget.dart' show IngresosWidget;
import 'package:flutter/material.dart';

class IngresosModel extends FlutterFlowModel<IngresosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barradeNavegacion component.
  late BarradeNavegacionModel barradeNavegacionModel;
  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
  // Stores action output result for [Bottom Sheet - formcaratula] action in Button widget.
  bool? editocaratural;
  Completer<List<VistaExpedientesUltimoEstadoRow>>? requestCompleter1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ImpresionesExpedientesRow>? caprtetaexp;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  IngresosRow? crearingreso;
  // Stores action output result for [Backend Call - API (crear carpeta ingreso)] action in Button widget.
  ApiCallResponse? apiResultz88;
  // Stores action output result for [Backend Call - API (crearlistadocumentosadjuntos)] action in Button widget.
  ApiCallResponse? apiResultgyy;
  Completer<List<VistaIngresosDiasRow>>? requestCompleter2;

  @override
  void initState(BuildContext context) {
    barradeNavegacionModel =
        createModel(context, () => BarradeNavegacionModel());
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
  }

  @override
  void dispose() {
    barradeNavegacionModel.dispose();
    tarjetaencabezadoModel.dispose();
  }

  /// Additional helper methods.
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
}
