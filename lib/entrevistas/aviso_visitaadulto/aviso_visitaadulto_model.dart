import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/entrevistas/aviso_visitaadulto/aviso_visitaadulto_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'aviso_visitaadulto_widget.dart' show AvisoVisitaadultoWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class AvisoVisitaadultoModel extends FlutterFlowModel<AvisoVisitaadultoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode;
  TextEditingController? textFieldmotivoTextController;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextControllerValidator;
  String? _textFieldmotivoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Aviso visita adulto)] action in Button widget.
  ApiCallResponse? apiResultdnx;
  Completer<List<AvisovisitaadultosRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    textFieldmotivoTextControllerValidator =
        _textFieldmotivoTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldmotivoFocusNode?.dispose();
    textFieldmotivoTextController?.dispose();
  }

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
