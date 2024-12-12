import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seccion5_widget.dart' show Seccion5Widget;
import 'package:flutter/material.dart';

class Seccion5Model extends FlutterFlowModel<Seccion5Widget> {
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

  // State field(s) for TextFieldresena widget.
  FocusNode? textFieldresenaFocusNode;
  TextEditingController? textFieldresenaTextController;
  String? Function(BuildContext, String?)?
      textFieldresenaTextControllerValidator;
  String? _textFieldresenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Seccion5Row>? seccion5;

  @override
  void initState(BuildContext context) {
    textFieldmotivoTextControllerValidator =
        _textFieldmotivoTextControllerValidator;
    textFieldresenaTextControllerValidator =
        _textFieldresenaTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldmotivoFocusNode?.dispose();
    textFieldmotivoTextController?.dispose();

    textFieldresenaFocusNode?.dispose();
    textFieldresenaTextController?.dispose();
  }
}
