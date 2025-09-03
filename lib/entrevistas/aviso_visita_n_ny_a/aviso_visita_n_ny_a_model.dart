import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'aviso_visita_n_ny_a_widget.dart' show AvisoVisitaNNyAWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AvisoVisitaNNyAModel extends FlutterFlowModel<AvisoVisitaNNyAWidget> {
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
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode3;
  TextEditingController? textFieldmotivoTextController3;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController3Validator;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode4;
  TextEditingController? textFieldmotivoTextController4;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController4Validator;
  // State field(s) for TextFieldresena widget.
  FocusNode? textFieldresenaFocusNode;
  TextEditingController? textFieldresenaTextController;
  late MaskTextInputFormatter textFieldresenaMask;
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
  // Stores action output result for [Backend Call - API (Aviso convocatoria al  NNyA)] action in Button widget.
  ApiCallResponse? apiResulth1aavisoentreNNyA;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<AmpliaciondeinformacionRow>? formvisitaedit;

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

    textFieldmotivoFocusNode3?.dispose();
    textFieldmotivoTextController3?.dispose();

    textFieldmotivoFocusNode4?.dispose();
    textFieldmotivoTextController4?.dispose();

    textFieldresenaFocusNode?.dispose();
    textFieldresenaTextController?.dispose();
  }
}
