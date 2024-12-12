import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'anexoinstitucionsalud_widget.dart' show AnexoinstitucionsaludWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AnexoinstitucionsaludModel
    extends FlutterFlowModel<AnexoinstitucionsaludWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode1;
  TextEditingController? textFieldmotivoTextController1;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController1Validator;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode2;
  TextEditingController? textFieldmotivoTextController2;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController2Validator;
  // State field(s) for TextFieldresena widget.
  FocusNode? textFieldresenaFocusNode;
  TextEditingController? textFieldresenaTextController;
  final textFieldresenaMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)?
      textFieldresenaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaRecepciondelademandaRow>? recepciondelademanda;
  // Stores action output result for [Backend Call - API (anexo solicitud salud)] action in Button widget.
  ApiCallResponse? apiResults9d;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaRecepciondelademandaRow>? recepciondelademandaedit;
  // Stores action output result for [Backend Call - API (anexo solicitud salud)] action in Button widget.
  ApiCallResponse? apiResults9dedit;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldmotivoFocusNode1?.dispose();
    textFieldmotivoTextController1?.dispose();

    textFieldmotivoFocusNode2?.dispose();
    textFieldmotivoTextController2?.dispose();

    textFieldresenaFocusNode?.dispose();
    textFieldresenaTextController?.dispose();
  }
}
