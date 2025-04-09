import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'convocatoriaadulto_widget.dart' show ConvocatoriaadultoWidget;
import 'package:flutter/material.dart';

class ConvocatoriaadultoModel
    extends FlutterFlowModel<ConvocatoriaadultoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChipsadulto widget.
  FormFieldController<List<String>>? choiceChipsadultoValueController;
  String? get choiceChipsadultoValue =>
      choiceChipsadultoValueController?.value?.firstOrNull;
  set choiceChipsadultoValue(String? val) =>
      choiceChipsadultoValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
