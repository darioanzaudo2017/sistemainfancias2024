import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'senaf_copy_widget.dart' show SenafCopyWidget;
import 'package:flutter/material.dart';

class SenafCopyModel extends FlutterFlowModel<SenafCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in SenafCopy widget.
  List<GrupoConvivienteRow>? grupo;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<GrupoConvivienteRow>();
  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
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
  // State field(s) for RadioButtoninscriptoagotado widget.
  FormFieldController<String>? radioButtoninscriptoagotadoValueController;
  // State field(s) for RadioButtoninscriptopermanenciafamilia widget.
  FormFieldController<String>?
      radioButtoninscriptopermanenciafamiliaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Checkboxsolicitud widget.
  bool? checkboxsolicitudValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for TextFieldmotivosolicitud widget.
  FocusNode? textFieldmotivosolicitudFocusNode;
  TextEditingController? textFieldmotivosolicitudTextController;
  String? Function(BuildContext, String?)?
      textFieldmotivosolicitudTextControllerValidator;
  // State field(s) for Checkboxevaluacion widget.
  bool? checkboxevaluacionValue;
  // State field(s) for Checkboxadoptada widget.
  bool? checkboxadoptadaValue;
  DateTime? datePicked4;
  // State field(s) for TextFieldobservacionesdemedidaadoptada widget.
  FocusNode? textFieldobservacionesdemedidaadoptadaFocusNode;
  TextEditingController? textFieldobservacionesdemedidaadoptadaTextController;
  String? Function(BuildContext, String?)?
      textFieldobservacionesdemedidaadoptadaTextControllerValidator;
  // State field(s) for Checkboxrechazada widget.
  bool? checkboxrechazadaValue;
  DateTime? datePicked5;
  // State field(s) for TextFieldmotivorechazo widget.
  FocusNode? textFieldmotivorechazoFocusNode;
  TextEditingController? textFieldmotivorechazoTextController;
  String? Function(BuildContext, String?)?
      textFieldmotivorechazoTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario9Row? form9;
  Completer<List<IngresosRow>>? requestCompleter2;
  Completer<List<Formulario9Row>>? requestCompleter1;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwinfsenaf1;
  // Stores action output result for [Backend Call - API (Crear Caratula)] action in Button widget.
  ApiCallResponse? apiResultznwinfsenaf2;

  @override
  void initState(BuildContext context) {
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    tarjetaencabezadoModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldObsFocusNode?.dispose();
    textFieldObsTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldmotivosolicitudFocusNode?.dispose();
    textFieldmotivosolicitudTextController?.dispose();

    textFieldobservacionesdemedidaadoptadaFocusNode?.dispose();
    textFieldobservacionesdemedidaadoptadaTextController?.dispose();

    textFieldmotivorechazoFocusNode?.dispose();
    textFieldmotivorechazoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtoninscriptoagotadoValue =>
      radioButtoninscriptoagotadoValueController?.value;
  String? get radioButtoninscriptopermanenciafamiliaValue =>
      radioButtoninscriptopermanenciafamiliaValueController?.value;
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
}
