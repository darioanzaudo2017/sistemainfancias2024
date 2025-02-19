import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barradeNavegacion component.
  late BarradeNavegacionModel barradeNavegacionModel;
  // Model for anexosbotonera component.
  late AnexosbotoneraModel anexosbotoneraModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ExpedienteRow? creaexpgrupoCopy;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ExpedienteRow>? expedienteCopy1;
  // Stores action output result for [Backend Call - API (carpeta del expediente)] action in Button widget.
  ApiCallResponse? apiResult42yCopy;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<VistaExpedientesUltimoEstadoRow>? exp;
  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Stores action output result for [Bottom Sheet - seccion1] action in Button widget.
  bool? seccio1true;
  Completer<List<IngresosRow>>? requestCompleter;
  // Stores action output result for [Bottom Sheet - seccion2] action in Button widget.
  bool? seccion2true;
  // Stores action output result for [Bottom Sheet - seccion3] action in Button widget.
  bool? seccion3true;
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
  // Stores action output result for [Bottom Sheet - seccion9] action in Button widget.
  bool? seccion9true;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    barradeNavegacionModel =
        createModel(context, () => BarradeNavegacionModel());
    anexosbotoneraModel = createModel(context, () => AnexosbotoneraModel());
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
  }

  @override
  void dispose() {
    barradeNavegacionModel.dispose();
    anexosbotoneraModel.dispose();
    tarjetaencabezadoModel.dispose();
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

  String? get radioButtonValue => radioButtonValueController?.value;
}
