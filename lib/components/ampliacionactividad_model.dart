import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ampliacionactividad_widget.dart' show AmpliacionactividadWidget;
import 'package:flutter/material.dart';

class AmpliacionactividadModel
    extends FlutterFlowModel<AmpliacionactividadWidget> {
  ///  Local state fields for this component.

  bool edit = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AmpliaciondeinformacionRow? crearampliacion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
