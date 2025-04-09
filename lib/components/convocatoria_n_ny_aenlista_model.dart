import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'convocatoria_n_ny_aenlista_widget.dart'
    show ConvocatoriaNNyAenlistaWidget;
import 'package:flutter/material.dart';

class ConvocatoriaNNyAenlistaModel
    extends FlutterFlowModel<ConvocatoriaNNyAenlistaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChipsNNyA widget.
  FormFieldController<List<String>>? choiceChipsNNyAValueController;
  String? get choiceChipsNNyAValue =>
      choiceChipsNNyAValueController?.value?.firstOrNull;
  set choiceChipsNNyAValue(String? val) =>
      choiceChipsNNyAValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
