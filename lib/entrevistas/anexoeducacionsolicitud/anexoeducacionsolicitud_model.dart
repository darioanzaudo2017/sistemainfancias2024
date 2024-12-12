import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anexoeducacionsolicitud_widget.dart' show AnexoeducacionsolicitudWidget;
import 'package:flutter/material.dart';

class AnexoeducacionsolicitudModel
    extends FlutterFlowModel<AnexoeducacionsolicitudWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode;
  TextEditingController? textFieldmotivoTextController;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextControllerValidator;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (ANEXO  SOLICITA INFORMACIN A INSTITUCIN EDUCATIVA)] action in Button widget.
  ApiCallResponse? apiResults9dedujcacio;
  // Stores action output result for [Backend Call - API (ANEXO  SOLICITA INFORMACIN A INSTITUCIN EDUCATIVA)] action in Button widget.
  ApiCallResponse? apiResults9dedujcacio23;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldmotivoFocusNode?.dispose();
    textFieldmotivoTextController?.dispose();
  }
}
