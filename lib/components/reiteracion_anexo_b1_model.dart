import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reiteracion_anexo_b1_widget.dart' show ReiteracionAnexoB1Widget;
import 'package:flutter/material.dart';

class ReiteracionAnexoB1Model
    extends FlutterFlowModel<ReiteracionAnexoB1Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (anexoformreiteracionderivacion)] action in Button widget.
  ApiCallResponse? apiResulth8b;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AnexoB1Form1Row? anexoBseccion9;
  // Stores action output result for [Backend Call - API (anexoformreiteracionderivacion)] action in Button widget.
  ApiCallResponse? apiResulth8bcrear;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
