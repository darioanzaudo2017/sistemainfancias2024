import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ampliacionactividadplanificacion_widget.dart'
    show AmpliacionactividadplanificacionWidget;
import 'package:flutter/material.dart';

class AmpliacionactividadplanificacionModel
    extends FlutterFlowModel<AmpliacionactividadplanificacionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AmpliaciondeinformacionRow? crearampliacionplanificacion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
