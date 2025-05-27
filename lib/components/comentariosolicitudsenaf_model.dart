import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comentariosolicitudsenaf_widget.dart'
    show ComentariosolicitudsenafWidget;
import 'package:flutter/material.dart';

class ComentariosolicitudsenafModel
    extends FlutterFlowModel<ComentariosolicitudsenafWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  HistorialmovimientossolicitudsenafRow? enviado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
