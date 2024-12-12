import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'formulario9_widget.dart' show Formulario9Widget;
import 'package:flutter/material.dart';

class Formulario9Model extends FlutterFlowModel<Formulario9Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario9Row? form9;
  Completer<List<Formulario9Row>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
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
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
