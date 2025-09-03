import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'senaf_widget.dart' show SenafWidget;
import 'package:flutter/material.dart';

class SenafModel extends FlutterFlowModel<SenafWidget> {
  ///  Local state fields for this page.

  bool editarformcese = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Senaf widget.
  List<GrupoConvivienteRow>? grupo;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<GrupoConvivienteRow>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for DropDowncausa widget.
  String? dropDowncausaValue;
  FormFieldController<String>? dropDowncausaValueController;
  DateTime? datePicked1;
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
  Completer<List<Formulario9Row>>? requestCompleter3;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario9Row? form9;
  Completer<List<IngresosRow>>? requestCompleter1;
  Completer<List<VistaHistorialMovimientosSolicitudsenafRow>>?
      requestCompleter2;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaRecepciondelademandaRow>? recepciondemanda;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ListaDerechosVulneradosexpedienteRow>? derechos;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Formulario6Row>? medidas;
  // Stores action output result for [Backend Call - API (crearwordsolicitud)] action in Button widget.
  ApiCallResponse? apiResultznwinfsenaf1Copy;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<Formulario9Row>? linksolici;
  // Stores action output result for [Bottom Sheet - Comentariosolicitudsenaf] action in Button widget.
  bool? comentarioCopy5;
  // Stores action output result for [Bottom Sheet - Comentariosolicitudsenaf] action in Button widget.
  bool? comentarioCopy3;
  // Stores action output result for [Bottom Sheet - Comentariosolicitudsenaf] action in Button widget.
  bool? comentarioCopy;
  // Stores action output result for [Bottom Sheet - Comentariosolicitudsenaf] action in Button widget.
  bool? comentarioCopy2;
  // Stores action output result for [Bottom Sheet - Comentariosolicitudsenaf] action in Button widget.
  bool? comentario;
  // Stores action output result for [Bottom Sheet - adjuntasolicitudsenaffirmada] action in Button widget.
  bool? solicitudfirmada;
  DateTime? datePicked6;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  Completer<List<SeguimientosolicitudRow>>? requestCompleter4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    tabBarController?.dispose();
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

    textFieldFocusNode4?.dispose();
    textController8?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtoninscriptoagotadoValue =>
      radioButtoninscriptoagotadoValueController?.value;
  String? get radioButtoninscriptopermanenciafamiliaValue =>
      radioButtoninscriptopermanenciafamiliaValueController?.value;
  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
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

  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
