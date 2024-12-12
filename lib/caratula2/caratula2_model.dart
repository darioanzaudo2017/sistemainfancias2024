import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'caratula2_widget.dart' show Caratula2Widget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Caratula2Model extends FlutterFlowModel<Caratula2Widget> {
  ///  Local state fields for this page.

  bool dniok = false;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TextFieldapellido widget.
  FocusNode? textFieldapellidoFocusNode;
  TextEditingController? textFieldapellidoTextController;
  String? Function(BuildContext, String?)?
      textFieldapellidoTextControllerValidator;
  String? _textFieldapellidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldnombres widget.
  FocusNode? textFieldnombresFocusNode;
  TextEditingController? textFieldnombresTextController;
  String? Function(BuildContext, String?)?
      textFieldnombresTextControllerValidator;
  String? _textFieldnombresTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldDNI widget.
  FocusNode? textFieldDNIFocusNode;
  TextEditingController? textFieldDNITextController;
  final textFieldDNIMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textFieldDNITextControllerValidator;
  String? _textFieldDNITextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextFieldedad widget.
  FocusNode? textFieldedadFocusNode;
  TextEditingController? textFieldedadTextController;
  final textFieldedadMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? textFieldedadTextControllerValidator;
  DateTime? datePicked1;
  // Stores action output result for [Custom Action - checkDNI] action in Button widget.
  bool? accionexitosa;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ExpedienteRow? crearexpnnya1;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NNyAExpGruRow? crearexpgrupo;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NNyARow? crearNNyA;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GrupofamiliarRow? grupofmiliar;
  // Stores action output result for [Backend Call - API (carpeta del expediente)] action in Button widget.
  ApiCallResponse? apiResult42y;
  // Stores action output result for [Bottom Sheet - desplegablederechosprincipal] action in Button widget.
  bool? agregarderecho;
  Completer<List<ListaDerechosVulneradosexpedienteRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ListaDerechosVulneradosexpedienteRow>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked2;
  // State field(s) for DropDowncanaldeingreso widget.
  String? dropDowncanaldeingresoValue;
  FormFieldController<String>? dropDowncanaldeingresoValueController;
  // State field(s) for TextFieldespecificar widget.
  FocusNode? textFieldespecificarFocusNode;
  TextEditingController? textFieldespecificarTextController;
  String? Function(BuildContext, String?)?
      textFieldespecificarTextControllerValidator;
  // State field(s) for TextFieldnumactuacion widget.
  FocusNode? textFieldnumactuacionFocusNode;
  TextEditingController? textFieldnumactuacionTextController;
  String? Function(BuildContext, String?)?
      textFieldnumactuacionTextControllerValidator;
  // State field(s) for TextFieldprofesional widget.
  FocusNode? textFieldprofesionalFocusNode;
  TextEditingController? textFieldprofesionalTextController;
  String? Function(BuildContext, String?)?
      textFieldprofesionalTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ExpedienteRow>? creaexpprimeravez;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? vistaExpediente;

  @override
  void initState(BuildContext context) {
    textFieldapellidoTextControllerValidator =
        _textFieldapellidoTextControllerValidator;
    textFieldnombresTextControllerValidator =
        _textFieldnombresTextControllerValidator;
    textFieldDNITextControllerValidator = _textFieldDNITextControllerValidator;
  }

  @override
  void dispose() {
    textFieldapellidoFocusNode?.dispose();
    textFieldapellidoTextController?.dispose();

    textFieldnombresFocusNode?.dispose();
    textFieldnombresTextController?.dispose();

    textFieldDNIFocusNode?.dispose();
    textFieldDNITextController?.dispose();

    textFieldedadFocusNode?.dispose();
    textFieldedadTextController?.dispose();

    paginatedDataTableController.dispose();
    textFieldespecificarFocusNode?.dispose();
    textFieldespecificarTextController?.dispose();

    textFieldnumactuacionFocusNode?.dispose();
    textFieldnumactuacionTextController?.dispose();

    textFieldprofesionalFocusNode?.dispose();
    textFieldprofesionalTextController?.dispose();
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
