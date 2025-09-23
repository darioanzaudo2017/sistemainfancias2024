import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'enviarmail_widget.dart' show EnviarmailWidget;
import 'package:flutter/material.dart';

class EnviarmailModel extends FlutterFlowModel<EnviarmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextFieldmensaje widget.
  FocusNode? textFieldmensajeFocusNode;
  TextEditingController? textFieldmensajeTextController;
  String? Function(BuildContext, String?)?
      textFieldmensajeTextControllerValidator;
  // Stores action output result for [Backend Call - API (resend supabase)] action in Button widget.
  ApiCallResponse? apiresend;
  Completer<List<EnviomailsRow>>? requestCompleter;
  // Stores action output result for [Bottom Sheet - adjuntardocumento] action in Button widget.
  bool? adjunto;
  // State field(s) for Checkbox widget.
  Map<DocumentosadjuntosRow, bool> checkboxValueMap = {};
  List<DocumentosadjuntosRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldmensajeFocusNode?.dispose();
    textFieldmensajeTextController?.dispose();
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
}
