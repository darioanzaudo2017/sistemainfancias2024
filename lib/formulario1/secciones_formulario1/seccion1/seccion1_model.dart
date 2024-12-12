import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'seccion1_widget.dart' show Seccion1Widget;
import 'package:flutter/material.dart';

class Seccion1Model extends FlutterFlowModel<Seccion1Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldlunacimiento widget.
  FocusNode? textFieldlunacimientoFocusNode;
  TextEditingController? textFieldlunacimientoTextController;
  String? Function(BuildContext, String?)?
      textFieldlunacimientoTextControllerValidator;
  // State field(s) for TextFielddomicilio widget.
  FocusNode? textFielddomicilioFocusNode;
  TextEditingController? textFielddomicilioTextController;
  String? Function(BuildContext, String?)?
      textFielddomicilioTextControllerValidator;
  String? _textFielddomicilioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldtelefono widget.
  FocusNode? textFieldtelefonoFocusNode;
  TextEditingController? textFieldtelefonoTextController;
  String? Function(BuildContext, String?)?
      textFieldtelefonoTextControllerValidator;
  // State field(s) for DropGenero widget.
  String? dropGeneroValue;
  FormFieldController<String>? dropGeneroValueController;
  // State field(s) for Droptipoflia widget.
  String? droptipofliaValue;
  FormFieldController<String>? droptipofliaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for RadioButtonrnp widget.
  FormFieldController<String>? radioButtonrnpValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for RadioButtoncud widget.
  FormFieldController<String>? radioButtoncudValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for DropDownSalaGrado widget.
  String? dropDownSalaGradoValue;
  FormFieldController<String>? dropDownSalaGradoValueController;
  // State field(s) for DropDownTurno widget.
  String? dropDownTurnoValue;
  FormFieldController<String>? dropDownTurnoValueController;
  // State field(s) for TextFielddomicilioescuela widget.
  FocusNode? textFielddomicilioescuelaFocusNode;
  TextEditingController? textFielddomicilioescuelaTextController;
  String? Function(BuildContext, String?)?
      textFielddomicilioescuelaTextControllerValidator;
  // State field(s) for TextFieldtelescuela widget.
  FocusNode? textFieldtelescuelaFocusNode;
  TextEditingController? textFieldtelescuelaTextController;
  String? Function(BuildContext, String?)?
      textFieldtelescuelaTextControllerValidator;
  // State field(s) for RadioButtonescuela widget.
  FormFieldController<String>? radioButtonescuelaValueController;
  // State field(s) for RadioButtomatriculo widget.
  FormFieldController<String>? radioButtomatriculoValueController;
  // State field(s) for DropDownNivelAlcanzado widget.
  String? dropDownNivelAlcanzadoValue;
  FormFieldController<String>? dropDownNivelAlcanzadoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for RadioButtontrabjanino widget.
  FormFieldController<String>? radioButtontrabjaninoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;

  @override
  void initState(BuildContext context) {
    textFielddomicilioTextControllerValidator =
        _textFielddomicilioTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldlunacimientoFocusNode?.dispose();
    textFieldlunacimientoTextController?.dispose();

    textFielddomicilioFocusNode?.dispose();
    textFielddomicilioTextController?.dispose();

    textFieldtelefonoFocusNode?.dispose();
    textFieldtelefonoTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();

    textFieldFocusNode5?.dispose();
    textController8?.dispose();

    textFielddomicilioescuelaFocusNode?.dispose();
    textFielddomicilioescuelaTextController?.dispose();

    textFieldtelescuelaFocusNode?.dispose();
    textFieldtelescuelaTextController?.dispose();

    textFieldFocusNode6?.dispose();
    textController11?.dispose();

    textFieldFocusNode7?.dispose();
    textController12?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonrnpValue => radioButtonrnpValueController?.value;
  String? get radioButtoncudValue => radioButtoncudValueController?.value;
  String? get radioButtonescuelaValue =>
      radioButtonescuelaValueController?.value;
  String? get radioButtomatriculoValue =>
      radioButtomatriculoValueController?.value;
  String? get radioButtontrabjaninoValue =>
      radioButtontrabjaninoValueController?.value;
}
