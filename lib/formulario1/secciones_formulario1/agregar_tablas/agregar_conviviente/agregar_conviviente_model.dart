import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agregar_conviviente_widget.dart' show AgregarConvivienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AgregarConvivienteModel
    extends FlutterFlowModel<AgregarConvivienteWidget> {
  ///  Local state fields for this component.

  String? nombre;

  String? apellido;

  int? dni;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextFieldDni widget.
  FocusNode? textFieldDniFocusNode;
  TextEditingController? textFieldDniTextController;
  final textFieldDniMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textFieldDniTextControllerValidator;
  String? _textFieldDniTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  final textFieldMask4 = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController6;
  final textFieldMask5 = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for RadioButtoncud widget.
  FormFieldController<String>? radioButtoncudValueController;
  // Stores action output result for [Custom Action - checkDNI] action in Button widget.
  bool? agregarpersonaexitosa;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NNyARow? crearNNyACopy;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<NNyARow>? busquedapersonadni;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GrupoConvivienteRow? aaa;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GrupoConvivienteRow? creargrupo;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<GrupoConvivienteRow>? creargrupoedit;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<NNyARow>? editNNyA;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textFieldDniTextControllerValidator = _textFieldDniTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldDniFocusNode?.dispose();
    textFieldDniTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    textFieldFocusNode5?.dispose();
    textController6?.dispose();

    textFieldFocusNode6?.dispose();
    textController7?.dispose();

    textFieldFocusNode7?.dispose();
    textController8?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtoncudValue => radioButtoncudValueController?.value;
}
