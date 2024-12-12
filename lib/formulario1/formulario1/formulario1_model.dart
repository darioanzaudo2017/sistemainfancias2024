import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'formulario1_widget.dart' show Formulario1Widget;
import 'package:flutter/material.dart';

class Formulario1Model extends FlutterFlowModel<Formulario1Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Bottom Sheet - seccion1] action in Button widget.
  bool? seccio1true;
  Completer<List<IngresosRow>>? requestCompleter1;
  // Stores action output result for [Bottom Sheet - seccion2] action in Button widget.
  bool? seccion2true;
  // Stores action output result for [Bottom Sheet - seccion5] action in Button widget.
  bool? seccion5true;
  // Stores action output result for [Bottom Sheet - seccion4] action in Button widget.
  bool? seccion4true;
  // Stores action output result for [Bottom Sheet - seccion6] action in Button widget.
  bool? seccion6true;
  // Stores action output result for [Bottom Sheet - seccion3] action in Button widget.
  bool? seccion3true;
  // Stores action output result for [Bottom Sheet - seccion7] action in Button widget.
  bool? seccion7true;
  // Stores action output result for [Bottom Sheet - seccion9] action in Button widget.
  bool? seccion9true;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Bottom Sheet - adjuntardocumento] action in Button widget.
  bool? cargodoc;
  Completer<List<DocumentosadjuntosRow>>? requestCompleter2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
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

  String? get radioButtonValue => radioButtonValueController?.value;
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
}
