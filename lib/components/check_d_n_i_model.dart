import '/flutter_flow/flutter_flow_util.dart';
import 'check_d_n_i_widget.dart' show CheckDNIWidget;
import 'package:flutter/material.dart';

class CheckDNIModel extends FlutterFlowModel<CheckDNIWidget> {
  ///  State fields for stateful widgets in this component.

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
