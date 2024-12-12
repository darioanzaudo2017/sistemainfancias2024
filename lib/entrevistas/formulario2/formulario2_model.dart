import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario2_widget.dart' show Formulario2Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Formulario2Model extends FlutterFlowModel<Formulario2Widget> {
  ///  Local state fields for this component.

  int? contador;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Formulario2Row>? form2principal;
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

  // State field(s) for TextFieldnombre widget.
  FocusNode? textFieldnombreFocusNode;
  TextEditingController? textFieldnombreTextController;
  String? Function(BuildContext, String?)?
      textFieldnombreTextControllerValidator;
  String? _textFieldnombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextFieldDNI widget.
  FocusNode? textFieldDNIFocusNode1;
  TextEditingController? textFieldDNITextController1;
  final textFieldDNIMask1 = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textFieldDNITextController1Validator;
  // State field(s) for TextFieldDNI widget.
  FocusNode? textFieldDNIFocusNode2;
  TextEditingController? textFieldDNITextController2;
  final textFieldDNIMask2 = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? textFieldDNITextController2Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextFieldprofesional widget.
  FocusNode? textFieldprofesionalFocusNode;
  TextEditingController? textFieldprofesionalTextController;
  String? Function(BuildContext, String?)?
      textFieldprofesionalTextControllerValidator;
  String? _textFieldprofesionalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextFieldobjetivo widget.
  FocusNode? textFieldobjetivoFocusNode1;
  TextEditingController? textFieldobjetivoTextController1;
  String? Function(BuildContext, String?)?
      textFieldobjetivoTextController1Validator;
  String? _textFieldobjetivoTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextFieldobjetivo widget.
  FocusNode? textFieldobjetivoFocusNode2;
  TextEditingController? textFieldobjetivoTextController2;
  String? Function(BuildContext, String?)?
      textFieldobjetivoTextController2Validator;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode;
  TextEditingController? textFielddescripcionTextController;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextControllerValidator;
  String? _textFielddescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for DropDownredes widget.
  List<String>? dropDownredesValue;
  FormFieldController<List<String>>? dropDownredesValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for RadioButtonespacios widget.
  FormFieldController<String>? radioButtonespaciosValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;

  @override
  void initState(BuildContext context) {
    textFieldapellidoTextControllerValidator =
        _textFieldapellidoTextControllerValidator;
    textFieldnombreTextControllerValidator =
        _textFieldnombreTextControllerValidator;
    textFieldprofesionalTextControllerValidator =
        _textFieldprofesionalTextControllerValidator;
    textFieldobjetivoTextController1Validator =
        _textFieldobjetivoTextController1Validator;
    textFielddescripcionTextControllerValidator =
        _textFielddescripcionTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldapellidoFocusNode?.dispose();
    textFieldapellidoTextController?.dispose();

    textFieldnombreFocusNode?.dispose();
    textFieldnombreTextController?.dispose();

    textFieldDNIFocusNode1?.dispose();
    textFieldDNITextController1?.dispose();

    textFieldDNIFocusNode2?.dispose();
    textFieldDNITextController2?.dispose();

    textFieldprofesionalFocusNode?.dispose();
    textFieldprofesionalTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    textFieldFocusNode3?.dispose();
    textController8?.dispose();

    textFieldFocusNode4?.dispose();
    textController9?.dispose();

    textFieldFocusNode5?.dispose();
    textController10?.dispose();

    textFieldobjetivoFocusNode1?.dispose();
    textFieldobjetivoTextController1?.dispose();

    textFieldobjetivoFocusNode2?.dispose();
    textFieldobjetivoTextController2?.dispose();

    textFielddescripcionFocusNode?.dispose();
    textFielddescripcionTextController?.dispose();

    textFieldFocusNode6?.dispose();
    textController14?.dispose();

    textFieldFocusNode7?.dispose();
    textController15?.dispose();

    textFieldFocusNode8?.dispose();
    textController16?.dispose();

    textFieldFocusNode9?.dispose();
    textController17?.dispose();

    textFieldFocusNode10?.dispose();
    textController18?.dispose();

    textFieldFocusNode11?.dispose();
    textController19?.dispose();

    textFieldFocusNode12?.dispose();
    textController20?.dispose();

    textFieldFocusNode13?.dispose();
    textController21?.dispose();

    textFieldFocusNode14?.dispose();
    textController22?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonespaciosValue =>
      radioButtonespaciosValueController?.value;
}
