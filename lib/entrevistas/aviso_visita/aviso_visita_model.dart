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
  FocusNode? textFieldmotivoFocusNode1;
  TextEditingController? textFieldmotivoTextController1;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController1Validator;
  String? _textFieldmotivoTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode2;
  TextEditingController? textFieldmotivoTextController2;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController2Validator;
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
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AvisovisitaNNyARow? formvisita;
  // Stores action output result for [Backend Call - API (Aviso visita NNyA)] action in Button widget.
  ApiCallResponse? apiResulth1a;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<AvisovisitaNNyARow>? formvisitaedit;
  // Stores action output result for [Backend Call - API (Aviso visita NNyA)] action in Button widget.
  ApiCallResponse? apiResulth1aedit;

  @override
  void initState(BuildContext context) {
    textFieldmotivoTextController1Validator =
        _textFieldmotivoTextController1Validator;
    textFieldresenaTextControllerValidator =
        _textFieldresenaTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldmotivoFocusNode1?.dispose();
    textFieldmotivoTextController1?.dispose();

    textFieldmotivoFocusNode2?.dispose();
    textFieldmotivoTextController2?.dispose();

    textFieldresenaFocusNode?.dispose();
    textFieldresenaTextController?.dispose();
  }
}
