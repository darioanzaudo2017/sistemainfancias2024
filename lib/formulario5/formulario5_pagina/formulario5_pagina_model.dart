import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'formulario5_pagina_widget.dart' show Formulario5PaginaWidget;
import 'package:flutter/material.dart';

class Formulario5PaginaModel extends FlutterFlowModel<Formulario5PaginaWidget> {
  ///  Local state fields for this page.

  int? contador;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Formulario5Row>? form5principal;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ListaDerechosVulneradosexpedienteRow>? formderechosprincipal;
  DateTime? datePicked;
  // State field(s) for TextFieldprofesionales widget.
  FocusNode? textFieldprofesionalesFocusNode;
  TextEditingController? textFieldprofesionalesTextController;
  String? Function(BuildContext, String?)?
      textFieldprofesionalesTextControllerValidator;
  String? _textFieldprofesionalesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // Stores action output result for [Bottom Sheet - desplegablederechosprincipal] action in Button widget.
  bool? agregarderecho;
  Completer<List<ListaDerechosVulneradosexpedienteRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ListaDerechosVulneradosexpedienteRow>();
  // State field(s) for TextFieldinddevulneracion widget.
  FocusNode? textFieldinddevulneracionFocusNode;
  TextEditingController? textFieldinddevulneracionTextController;
  String? Function(BuildContext, String?)?
      textFieldinddevulneracionTextControllerValidator;
  String? _textFieldinddevulneracionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextFieldresponsables widget.
  FocusNode? textFieldresponsablesFocusNode;
  TextEditingController? textFieldresponsablesTextController;
  String? Function(BuildContext, String?)?
      textFieldresponsablesTextControllerValidator;
  String? _textFieldresponsablesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextFieldantecedentes widget.
  FocusNode? textFieldantecedentesFocusNode;
  TextEditingController? textFieldantecedentesTextController;
  String? Function(BuildContext, String?)?
      textFieldantecedentesTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for DropDownactores widget.
  List<String>? dropDownactoresValue;
  FormFieldController<List<String>>? dropDownactoresValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for DropDownpriorizacion widget.
  List<String>? dropDownpriorizacionValue;
  FormFieldController<List<String>>? dropDownpriorizacionValueController;
  // State field(s) for TextFieldvaloracionIntegral widget.
  FocusNode? textFieldvaloracionIntegralFocusNode;
  TextEditingController? textFieldvaloracionIntegralTextController;
  String? Function(BuildContext, String?)?
      textFieldvaloracionIntegralTextControllerValidator;
  // State field(s) for TextFieldPropuestasparamedidasdeProteccionIntegral widget.
  FocusNode? textFieldPropuestasparamedidasdeProteccionIntegralFocusNode;
  TextEditingController?
      textFieldPropuestasparamedidasdeProteccionIntegralTextController;
  String? Function(BuildContext, String?)?
      textFieldPropuestasparamedidasdeProteccionIntegralTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldprofesionalesTextControllerValidator =
        _textFieldprofesionalesTextControllerValidator;
    textFieldinddevulneracionTextControllerValidator =
        _textFieldinddevulneracionTextControllerValidator;
    textFieldresponsablesTextControllerValidator =
        _textFieldresponsablesTextControllerValidator;
    textController5Validator = _textController5Validator;
    textController6Validator = _textController6Validator;
  }

  @override
  void dispose() {
    textFieldprofesionalesFocusNode?.dispose();
    textFieldprofesionalesTextController?.dispose();

    paginatedDataTableController.dispose();
    textFieldinddevulneracionFocusNode?.dispose();
    textFieldinddevulneracionTextController?.dispose();

    textFieldresponsablesFocusNode?.dispose();
    textFieldresponsablesTextController?.dispose();

    textFieldantecedentesFocusNode?.dispose();
    textFieldantecedentesTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController5?.dispose();

    textFieldFocusNode2?.dispose();
    textController6?.dispose();

    textFieldvaloracionIntegralFocusNode?.dispose();
    textFieldvaloracionIntegralTextController?.dispose();

    textFieldPropuestasparamedidasdeProteccionIntegralFocusNode?.dispose();
    textFieldPropuestasparamedidasdeProteccionIntegralTextController?.dispose();
  }

  /// Additional helper methods.
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
