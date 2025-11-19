import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cambiarexpe_widget.dart' show CambiarexpeWidget;
import 'package:flutter/material.dart';

class CambiarexpeModel extends FlutterFlowModel<CambiarexpeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ExpedienteRow>? expedienteactualizado;
  // Stores action output result for [Backend Call - API (cambiospd)] action in Button widget.
  ApiCallResponse? cambiospdapi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
