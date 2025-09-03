import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anexoeducacionsolicitud_widget.dart' show AnexoeducacionsolicitudWidget;
import 'package:flutter/material.dart';

class AnexoeducacionsolicitudModel
    extends FlutterFlowModel<AnexoeducacionsolicitudWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for TextFieldcpc widget.
  FocusNode? textFieldcpcFocusNode;
  TextEditingController? textFieldcpcTextController;
  String? Function(BuildContext, String?)? textFieldcpcTextControllerValidator;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode;
  TextEditingController? textFieldmotivoTextController;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AnexoinstitucioneeducacionRow? creasolicitudeducacion;
  // Stores action output result for [Backend Call - API (ANEXO  SOLICITA INFORMACIN A INSTITUCIN EDUCATIVA)] action in Button widget.
  ApiCallResponse? apiResults9dedujcacio;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldcpcFocusNode?.dispose();
    textFieldcpcTextController?.dispose();

    textFieldmotivoFocusNode?.dispose();
    textFieldmotivoTextController?.dispose();
  }
}
