import '/flutter_flow/flutter_flow_util.dart';
import 'otrasactividades_widget.dart' show OtrasactividadesWidget;
import 'package:flutter/material.dart';

class OtrasactividadesModel extends FlutterFlowModel<OtrasactividadesWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
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
