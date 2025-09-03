import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ampliacioninformacion_widget.dart' show AmpliacioninformacionWidget;
import 'dart:async';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AmpliacioninformacionModel
    extends FlutterFlowModel<AmpliacioninformacionWidget> {
  ///  Local state fields for this component.

  String? completar;

  int? ampliacionrow;

  int? idconvocatoriaadulto;

  int? idconvocatoriaNNyA;

  List<int> idseccion8 = [];
  void addToIdseccion8(int item) => idseccion8.add(item);
  void removeFromIdseccion8(int item) => idseccion8.remove(item);
  void removeAtIndexFromIdseccion8(int index) => idseccion8.removeAt(index);
  void insertAtIndexInIdseccion8(int index, int item) =>
      idseccion8.insert(index, item);
  void updateIdseccion8AtIndex(int index, Function(int) updateFn) =>
      idseccion8[index] = updateFn(idseccion8[index]);

  int? contador = 0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldprofesional widget.
  FocusNode? textFieldprofesionalFocusNode;
  TextEditingController? textFieldprofesionalTextController;
  String? Function(BuildContext, String?)?
      textFieldprofesionalTextControllerValidator;
  // Stores action output result for [Bottom Sheet - agregarPersonaRelacionada] action in Button widget.
  bool? creopersonaampliar;
  Completer<List<Seccion8Row>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<Seccion8Row>();
  // Stores action output result for [Bottom Sheet - agregarPersonaRelacionadaeditar] action in IconButton widget.
  bool? editopersonarelacionada;
  // State field(s) for Checkbox widget.
  Map<Seccion8Row, bool> checkboxValueMap = {};
  List<Seccion8Row> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for TextFieldobjetivo widget.
  FocusNode? textFieldobjetivoFocusNode1;
  TextEditingController? textFieldobjetivoTextController1;
  String? Function(BuildContext, String?)?
      textFieldobjetivoTextController1Validator;
  // State field(s) for TextFieldreferentesafectivo widget.
  FocusNode? textFieldreferentesafectivoFocusNode;
  TextEditingController? textFieldreferentesafectivoTextController;
  String? Function(BuildContext, String?)?
      textFieldreferentesafectivoTextControllerValidator;
  bool isDataUploading_uploadData7y7 = false;
  FFUploadedFile uploadedLocalFile_uploadData7y7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData7y7 = '';

  // State field(s) for TextFieldobjetivo widget.
  FocusNode? textFieldobjetivoFocusNode2;
  TextEditingController? textFieldobjetivoTextController2;
  String? Function(BuildContext, String?)?
      textFieldobjetivoTextController2Validator;
  // State field(s) for TextFieldpercepcion widget.
  FocusNode? textFieldpercepcionFocusNode;
  TextEditingController? textFieldpercepcionTextController;
  String? Function(BuildContext, String?)?
      textFieldpercepcionTextControllerValidator;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode;
  TextEditingController? textFielddescripcionTextController;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<DocumentosadjuntosRow>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for DropDownredes widget.
  List<String>? dropDownredesValue;
  FormFieldController<List<String>>? dropDownredesValueController;
  // State field(s) for TextFieldredesotros widget.
  FocusNode? textFieldredesotrosFocusNode;
  TextEditingController? textFieldredesotrosTextController;
  String? Function(BuildContext, String?)?
      textFieldredesotrosTextControllerValidator;
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
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<ArticulacionComunitariaRow>();
  // State field(s) for RadioButtonespacios widget.
  FormFieldController<String>? radioButtonespaciosValueController;
  // State field(s) for TextFielddescribeespacios widget.
  FocusNode? textFielddescribeespaciosFocusNode;
  TextEditingController? textFielddescribeespaciosTextController;
  String? Function(BuildContext, String?)?
      textFielddescribeespaciosTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for DropDownactividaes widget.
  List<String>? dropDownactividaesValue;
  FormFieldController<List<String>>? dropDownactividaesValueController;
  // State field(s) for TextFielddotrasact widget.
  FocusNode? textFielddotrasactFocusNode;
  TextEditingController? textFielddotrasactTextController;
  String? Function(BuildContext, String?)?
      textFielddotrasactTextControllerValidator;
  // State field(s) for TextFieldobservacionesactividades widget.
  FocusNode? textFieldobservacionesactividadesFocusNode;
  TextEditingController? textFieldobservacionesactividadesTextController;
  String? Function(BuildContext, String?)?
      textFieldobservacionesactividadesTextControllerValidator;
  // State field(s) for DropDownintereses widget.
  List<String>? dropDowninteresesValue;
  FormFieldController<List<String>>? dropDowninteresesValueController;
  // State field(s) for TextFieldobservacionesotrasintereses widget.
  FocusNode? textFieldobservacionesotrasinteresesFocusNode;
  TextEditingController? textFieldobservacionesotrasinteresesTextController;
  String? Function(BuildContext, String?)?
      textFieldobservacionesotrasinteresesTextControllerValidator;
  // State field(s) for TextFielddescripcionderechos widget.
  FocusNode? textFielddescripcionderechosFocusNode;
  TextEditingController? textFielddescripcionderechosTextController;
  String? Function(BuildContext, String?)?
      textFielddescripcionderechosTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<AmpliaciondeinformacionRow>? amplaicion;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<IngresosRow>? ampliaciohistor;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Seccion8Row>? personaentrevistada;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<AmpliaciondeinformacionRow>? amplaicionentrevistado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldprofesionalFocusNode?.dispose();
    textFieldprofesionalTextController?.dispose();

    paginatedDataTableController1.dispose();
    expandableExpandableController1.dispose();
    textFieldobjetivoFocusNode1?.dispose();
    textFieldobjetivoTextController1?.dispose();

    textFieldreferentesafectivoFocusNode?.dispose();
    textFieldreferentesafectivoTextController?.dispose();

    textFieldobjetivoFocusNode2?.dispose();
    textFieldobjetivoTextController2?.dispose();

    textFieldpercepcionFocusNode?.dispose();
    textFieldpercepcionTextController?.dispose();

    textFielddescripcionFocusNode?.dispose();
    textFielddescripcionTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController7?.dispose();

    expandableExpandableController2.dispose();
    paginatedDataTableController2.dispose();
    expandableExpandableController3.dispose();
    textFieldFocusNode2?.dispose();
    textController8?.dispose();

    textFieldFocusNode3?.dispose();
    textController9?.dispose();

    textFieldredesotrosFocusNode?.dispose();
    textFieldredesotrosTextController?.dispose();

    textFieldnombreespacioFocusNode?.dispose();
    textFieldnombreespacioTextController?.dispose();

    textFieldreferenteFocusNode?.dispose();
    textFieldreferenteTextController?.dispose();

    paginatedDataTableController3.dispose();
    textFielddescribeespaciosFocusNode?.dispose();
    textFielddescribeespaciosTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController14?.dispose();

    textFielddotrasactFocusNode?.dispose();
    textFielddotrasactTextController?.dispose();

    textFieldobservacionesactividadesFocusNode?.dispose();
    textFieldobservacionesactividadesTextController?.dispose();

    textFieldobservacionesotrasinteresesFocusNode?.dispose();
    textFieldobservacionesotrasinteresesTextController?.dispose();

    textFielddescripcionderechosFocusNode?.dispose();
    textFielddescripcionderechosTextController?.dispose();

    expandableExpandableController4.dispose();
    textFieldFocusNode5?.dispose();
    textController19?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  String? get radioButtonespaciosValue =>
      radioButtonespaciosValueController?.value;
}
