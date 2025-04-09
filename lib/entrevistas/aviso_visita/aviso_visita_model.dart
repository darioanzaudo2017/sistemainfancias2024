import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'aviso_visita_widget.dart' show AvisoVisitaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AvisoVisitaModel extends FlutterFlowModel<AvisoVisitaWidget> {
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
  final textFieldresenaMask = MaskTextInputFormatter(mask: '##:## hs');
  String? Function(BuildContext, String?)?
      textFieldresenaTextControllerValidator;
  String? _textFieldresenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<AmpliaciondeinformacionRow>? formvisitaedit;
  // Stores action output result for [Backend Call - API (Aviso visita NNyA)] action in Button widget.
  ApiCallResponse? apiResulth1aedit;

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
