import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'informesenaf_widget.dart' show InformesenafWidget;
import 'package:flutter/material.dart';

class InformesenafModel extends FlutterFlowModel<InformesenafWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? listausuarioszona;
  // Stores action output result for [Backend Call - API (email resend)] action in Button widget.
  ApiCallResponse? apiResultnlg;
  // Stores action output result for [Backend Call - API (informe senaf versiones)] action in Button widget.
  ApiCallResponse? versionsolicitud;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? listausuarioszonaCopy;
  // Stores action output result for [Backend Call - API (email resend)] action in Button widget.
  ApiCallResponse? apiResultnlgCopy;
  // Stores action output result for [Backend Call - API (informe senaf versiones)] action in Button widget.
  ApiCallResponse? versionsolicitudcoordinacion;
  // Stores action output result for [Backend Call - API (informe senaf versiones)] action in Button widget.
  ApiCallResponse? versionsolicitudcoordinaciongral;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
