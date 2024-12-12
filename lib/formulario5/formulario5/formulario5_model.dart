import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'formulario5_widget.dart' show Formulario5Widget;
import 'package:flutter/material.dart';

class Formulario5Model extends FlutterFlowModel<Formulario5Widget> {
  ///  Local state fields for this component.

  bool derechoscompletos = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  // State field(s) for TextFieldfundamento widget.
  FocusNode? textFieldfundamentoFocusNode;
  TextEditingController? textFieldfundamentoTextController;
  String? Function(BuildContext, String?)?
      textFieldfundamentoTextControllerValidator;
  String? _textFieldfundamentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

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
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
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
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for DropDownpriorizacion widget.
  List<String>? dropDownpriorizacionValue;
  FormFieldController<List<String>>? dropDownpriorizacionValueController;
  // State field(s) for TextFieldcriteriopriorizacion widget.
  FocusNode? textFieldcriteriopriorizacionFocusNode;
  TextEditingController? textFieldcriteriopriorizacionTextController;
  String? Function(BuildContext, String?)?
      textFieldcriteriopriorizacionTextControllerValidator;
  String? _textFieldcriteriopriorizacionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldprofesionalesTextControllerValidator =
        _textFieldprofesionalesTextControllerValidator;
    textFieldfundamentoTextControllerValidator =
        _textFieldfundamentoTextControllerValidator;
    textFieldinddevulneracionTextControllerValidator =
        _textFieldinddevulneracionTextControllerValidator;
    textFieldresponsablesTextControllerValidator =
        _textFieldresponsablesTextControllerValidator;
    textController6Validator = _textController6Validator;
    textController7Validator = _textController7Validator;
    textFieldcriteriopriorizacionTextControllerValidator =
        _textFieldcriteriopriorizacionTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldprofesionalesFocusNode?.dispose();
    textFieldprofesionalesTextController?.dispose();

    paginatedDataTableController.dispose();
    textFieldfundamentoFocusNode?.dispose();
    textFieldfundamentoTextController?.dispose();

    textFieldinddevulneracionFocusNode?.dispose();
    textFieldinddevulneracionTextController?.dispose();

    textFieldresponsablesFocusNode?.dispose();
    textFieldresponsablesTextController?.dispose();

    textFieldantecedentesFocusNode?.dispose();
    textFieldantecedentesTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    textFieldcriteriopriorizacionFocusNode?.dispose();
    textFieldcriteriopriorizacionTextController?.dispose();
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
