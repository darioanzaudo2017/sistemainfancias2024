import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/components/ultimaactualizacion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barradeNavegacion component.
  late BarradeNavegacionModel barradeNavegacionModel;
  // Stores action output result for [Backend Call - API (crearingresoconexpedientesinoexiste)] action in Button widget.
  ApiCallResponse? apiResulteqd;
  // Stores action output result for [Backend Call - API (copiaringresocompleto)] action in Button widget.
  ApiCallResponse? apiResult73t;
  // Model for ultimaactualizacion component.
  late UltimaactualizacionModel ultimaactualizacionModel;
  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
  // Stores action output result for [Bottom Sheet - seccion1] action in Button widget.
  bool? seccio1true;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Bottom Sheet - seccion2] action in Button widget.
  bool? seccion2true;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Seccion1Row>? seccion111Copy;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Seccion1Row>? seccion1;
  // Stores action output result for [Bottom Sheet - seccion4] action in Button widget.
  bool? seccion4;
  // Stores action output result for [Bottom Sheet - seccion4] action in Button widget.
  bool? seccion4true;
  // Stores action output result for [Bottom Sheet - seccion5] action in Button widget.
  bool? seccion5true;
  // Stores action output result for [Bottom Sheet - seccion6] action in Button widget.
  bool? seccion6true;
  // Stores action output result for [Bottom Sheet - seccion7] action in Button widget.
  bool? seccion7true;
  // Stores action output result for [Bottom Sheet - seccion8] action in Button widget.
  bool? seccion8guardada;
  // Stores action output result for [Backend Call - API (Apertura demanda)] action in Button widget.
  ApiCallResponse? apiResulttym;
  // Stores action output result for [Backend Call - API (Asesoramiento demanda )] action in Button widget.
  ApiCallResponse? apiResulttymCopy;
  // Stores action output result for [Bottom Sheet - AsesoramientoAnexoA] action in Button widget.
  bool? creoasesoramiento1;

  @override
  void initState(BuildContext context) {
    barradeNavegacionModel =
        createModel(context, () => BarradeNavegacionModel());
    ultimaactualizacionModel =
        createModel(context, () => UltimaactualizacionModel());
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
  }

  @override
  void dispose() {
    barradeNavegacionModel.dispose();
    ultimaactualizacionModel.dispose();
    tarjetaencabezadoModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
