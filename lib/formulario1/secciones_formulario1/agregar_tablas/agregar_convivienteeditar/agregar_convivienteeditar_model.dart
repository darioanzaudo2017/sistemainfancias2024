import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agregar_convivienteeditar_widget.dart'
    show AgregarConvivienteeditarWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AgregarConvivienteeditarModel
    extends FlutterFlowModel<AgregarConvivienteeditarWidget> {
  ///  Local state fields for this component.

  String? nombre;

  String? apellido;

  int? dni;

  int? anos;

  int? idingreso;

  int? idexpediente;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButtoncud widget.
  FormFieldController<String>? radioButtoncudValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldDni widget.
  FocusNode? textFieldDniFocusNode;
  TextEditingController? textFieldDniTextController;
  late MaskTextInputFormatter textFieldDniMask;
  String? Function(BuildContext, String?)? textFieldDniTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - anos] action in Button widget.
  int? anosgc;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldvinculo widget.
  FocusNode? textFieldvinculoFocusNode;
  TextEditingController? textFieldvinculoTextController;
  String? Function(BuildContext, String?)?
      textFieldvinculoTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  late MaskTextInputFormatter textFieldMask4;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // Stores action output result for [Backend Call - API (Actualizar grupo conviviente )] action in Button widget.
  ApiCallResponse? apiResultyu;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldDniFocusNode?.dispose();
    textFieldDniTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldvinculoFocusNode?.dispose();
    textFieldvinculoTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController6?.dispose();

    textFieldFocusNode5?.dispose();
    textController7?.dispose();

    textFieldFocusNode6?.dispose();
    textController8?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtoncudValue => radioButtoncudValueController?.value;
}
