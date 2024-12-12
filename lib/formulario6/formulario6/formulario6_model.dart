import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario6_widget.dart' show Formulario6Widget;
import 'package:flutter/material.dart';

class Formulario6Model extends FlutterFlowModel<Formulario6Widget> {
  ///  Local state fields for this component.

  String? estado;

  int? idform6;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextFieldresponsables widget.
  FocusNode? textFieldresponsablesFocusNode;
  TextEditingController? textFieldresponsablesTextController;
  String? Function(BuildContext, String?)?
      textFieldresponsablesTextControllerValidator;
  String? _textFieldresponsablesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obligatorio';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDownderecho widget.
  String? dropDownderechoValue;
  FormFieldController<String>? dropDownderechoValueController;
  // State field(s) for DropDownsubderecho widget.
  String? dropDownsubderechoValue;
  FormFieldController<String>? dropDownsubderechoValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario6Row? creaform6;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<Formulario6Row>? editmedida6;

  @override
  void initState(BuildContext context) {
    textFieldresponsablesTextControllerValidator =
        _textFieldresponsablesTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldresponsablesFocusNode?.dispose();
    textFieldresponsablesTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
