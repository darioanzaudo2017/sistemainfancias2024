import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enviarmail_widget.dart' show EnviarmailWidget;
import 'package:flutter/material.dart';

class EnviarmailModel extends FlutterFlowModel<EnviarmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextFieldmensaje widget.
  FocusNode? textFieldmensajeFocusNode;
  TextEditingController? textFieldmensajeTextController;
  String? Function(BuildContext, String?)?
      textFieldmensajeTextControllerValidator;
  // Stores action output result for [Backend Call - API (resend supabase)] action in Button widget.
  ApiCallResponse? apiresend;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldmensajeFocusNode?.dispose();
    textFieldmensajeTextController?.dispose();
  }
}
