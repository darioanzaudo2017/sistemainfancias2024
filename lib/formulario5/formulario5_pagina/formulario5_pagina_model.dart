import '/backend/supabase/supabase.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'formulario5_pagina_widget.dart' show Formulario5PaginaWidget;
import 'package:flutter/material.dart';

class Formulario5PaginaModel extends FlutterFlowModel<Formulario5PaginaWidget> {
  ///  Local state fields for this page.

  int? contador;

  String nombrepagina =
      ' Informe síntesis de Valoracion Integral y propuestas de MPI';

  bool editarform5 = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
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
  Completer<List<ListaDerechosVulneradosexpedienteRow>>? requestCompleter1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<ListaDerechosVulneradosexpedienteRow>();
  // State field(s) for Checkboxderecho widget.
  Map<ListaDerechosVulneradosexpedienteRow, bool> checkboxderechoValueMap = {};
  List<ListaDerechosVulneradosexpedienteRow> get checkboxderechoCheckedItems =>
      checkboxderechoValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

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
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for DropDownactores widget.
  String? dropDownactoresValue;
  FormFieldController<String>? dropDownactoresValueController;
  // State field(s) for TextFieldnombreespacio widget.
  FocusNode? textFieldnombreespacioFocusNode;
  TextEditingController? textFieldnombreespacioTextController;
  String? Function(BuildContext, String?)?
      textFieldnombreespacioTextControllerValidator;
  // State field(s) for TextFieldreferente widget.
  FocusNode? textFieldreferenteFocusNode;
  TextEditingController? textFieldreferenteTextController;
  String? Function(BuildContext, String?)?
      textFieldreferenteTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<ArticulacionComunitariaRow>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
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
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario5Row? insertform5;
  Completer<List<IngresosRow>>? requestCompleter2;

  @override
  void initState(BuildContext context) {
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
    textFieldprofesionalesTextControllerValidator =
        _textFieldprofesionalesTextControllerValidator;
    textFieldresponsablesTextControllerValidator =
        _textFieldresponsablesTextControllerValidator;
    textController4Validator = _textController4Validator;
  }

  @override
  void dispose() {
    tarjetaencabezadoModel.dispose();
    textFieldprofesionalesFocusNode?.dispose();
    textFieldprofesionalesTextController?.dispose();

    paginatedDataTableController1.dispose();
    textFieldresponsablesFocusNode?.dispose();
    textFieldresponsablesTextController?.dispose();

    textFieldantecedentesFocusNode?.dispose();
    textFieldantecedentesTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    textFieldnombreespacioFocusNode?.dispose();
    textFieldnombreespacioTextController?.dispose();

    textFieldreferenteFocusNode?.dispose();
    textFieldreferenteTextController?.dispose();

    paginatedDataTableController2.dispose();
    textFieldvaloracionIntegralFocusNode?.dispose();
    textFieldvaloracionIntegralTextController?.dispose();

    textFieldPropuestasparamedidasdeProteccionIntegralFocusNode?.dispose();
    textFieldPropuestasparamedidasdeProteccionIntegralTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
