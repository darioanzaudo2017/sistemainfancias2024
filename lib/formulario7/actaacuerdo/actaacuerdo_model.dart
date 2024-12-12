import '/flutter_flow/flutter_flow_util.dart';
import 'actaacuerdo_widget.dart' show ActaacuerdoWidget;
import 'package:flutter/material.dart';

class ActaacuerdoModel extends FlutterFlowModel<ActaacuerdoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
