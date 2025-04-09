import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formcaratula_widget.dart' show FormcaratulaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormcaratulaModel extends FlutterFlowModel<FormcaratulaWidget> {
  ///  Local state fields for this component.

  bool dniok = true;

  bool? derechoagregado = false;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TextFieldapellido widget.
  FocusNode? textFieldapellidoFocusNode;
  TextEditingController? textFieldapellidoTextController;
  String? Function(BuildContext, String?)?
      textFieldapellidoTextControllerValidator;
  String? _textFieldapellidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldnombres widget.
  FocusNode? textFieldnombresFocusNode;
  TextEditingController? textFieldnombresTextController;
  String? Function(BuildContext, String?)?
      textFieldnombresTextControllerValidator;
  String? _textFieldnombresTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldDNI widget.
  FocusNode? textFieldDNIFocusNode;
  TextEditingController? textFieldDNITextController;
  final textFieldDNIMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textFieldDNITextControllerValidator;
  // State field(s) for TextFieldedad widget.
  FocusNode? textFieldedadFocusNode;
  TextEditingController? textFieldedadTextController;
  final textFieldedadMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textFieldedadTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ExpedienteRow>? updatedeexpedicion;

  @override
  void initState(BuildContext context) {
    textFieldapellidoTextControllerValidator =
        _textFieldapellidoTextControllerValidator;
    textFieldnombresTextControllerValidator =
        _textFieldnombresTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldapellidoFocusNode?.dispose();
    textFieldapellidoTextController?.dispose();

    textFieldnombresFocusNode?.dispose();
    textFieldnombresTextController?.dispose();

    textFieldDNIFocusNode?.dispose();
    textFieldDNITextController?.dispose();

    textFieldedadFocusNode?.dispose();
    textFieldedadTextController?.dispose();
  }
}
