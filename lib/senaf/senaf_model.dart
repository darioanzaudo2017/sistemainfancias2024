import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'senaf_widget.dart' show SenafWidget;
import 'package:flutter/material.dart';

class SenafModel extends FlutterFlowModel<SenafWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Senaf widget.
  List<GrupoConvivienteRow>? grupo;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<GrupoConvivienteRow>();
  // State field(s) for DropDowncausa widget.
  String? dropDowncausaValue;
  FormFieldController<String>? dropDowncausaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextFieldObs widget.
  FocusNode? textFieldObsFocusNode;
  TextEditingController? textFieldObsTextController;
  String? Function(BuildContext, String?)? textFieldObsTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for RadioButtoninscriptoagotado widget.
  FormFieldController<String>? radioButtoninscriptoagotadoValueController;
  // State field(s) for RadioButtoninscriptopermanenciafamilia widget.
  FormFieldController<String>?
      radioButtoninscriptopermanenciafamiliaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Checkboxsolicitud widget.
  bool? checkboxsolicitudValue;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for TextFieldmotivosolicitud widget.
  FocusNode? textFieldmotivosolicitudFocusNode;
  TextEditingController? textFieldmotivosolicitudTextController;
  String? Function(BuildContext, String?)?
      textFieldmotivosolicitudTextControllerValidator;
  // State field(s) for Checkboxevaluacion widget.
  bool? checkboxevaluacionValue;
  // State field(s) for Checkboxadoptada widget.
  bool? checkboxadoptadaValue;
  DateTime? datePicked5;
  // State field(s) for Checkboxrechazada widget.
  bool? checkboxrechazadaValue;
  DateTime? datePicked6;
  // State field(s) for TextFieldmotivorechazo widget.
  FocusNode? textFieldmotivorechazoFocusNode;
  TextEditingController? textFieldmotivorechazoTextController;
  String? Function(BuildContext, String?)?
      textFieldmotivorechazoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldObsFocusNode?.dispose();
    textFieldObsTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldmotivosolicitudFocusNode?.dispose();
    textFieldmotivosolicitudTextController?.dispose();

    textFieldmotivorechazoFocusNode?.dispose();
    textFieldmotivorechazoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtoninscriptoagotadoValue =>
      radioButtoninscriptoagotadoValueController?.value;
  String? get radioButtoninscriptopermanenciafamiliaValue =>
      radioButtoninscriptopermanenciafamiliaValueController?.value;
}
