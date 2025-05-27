import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ampliacioninformacion_widget.dart' show AmpliacioninformacionWidget;
import 'dart:async';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AmpliacioninformacionModel
    extends FlutterFlowModel<AmpliacioninformacionWidget> {
  ///  Local state fields for this component.

  String? completar;

  int? ampliacionrow;

  int? idconvocatoriaadulto;

  int? idconvocatoriaNNyA;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldprofesional widget.
  FocusNode? textFieldprofesionalFocusNode;
  TextEditingController? textFieldprofesionalTextController;
  String? Function(BuildContext, String?)?
      textFieldprofesionalTextControllerValidator;
  // State field(s) for TextFieldapellido widget.
  FocusNode? textFieldapellidoFocusNode;
  TextEditingController? textFieldapellidoTextController;
  String? Function(BuildContext, String?)?
      textFieldapellidoTextControllerValidator;
  // State field(s) for TextFieldnombre widget.
  FocusNode? textFieldnombreFocusNode;
  TextEditingController? textFieldnombreTextController;
  String? Function(BuildContext, String?)?
      textFieldnombreTextControllerValidator;
  // State field(s) for TextFieldDNI widget.
  FocusNode? textFieldDNIFocusNode1;
  TextEditingController? textFieldDNITextController1;
  final textFieldDNIMask1 = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textFieldDNITextController1Validator;
  // State field(s) for TextFieldDNI widget.
  FocusNode? textFieldDNIFocusNode2;
  TextEditingController? textFieldDNITextController2;
  final textFieldDNIMask2 = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? textFieldDNITextController2Validator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AvisovisitaadultosRow? crearaviso;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AvisovisitaNNyARow? creovisitannya;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for TextFieldobjetivo widget.
  FocusNode? textFieldobjetivoFocusNode1;
  TextEditingController? textFieldobjetivoTextController1;
  String? Function(BuildContext, String?)?
      textFieldobjetivoTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DocumentosadjuntosRow>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for DropDownredes widget.
  List<String>? dropDownredesValue;
  FormFieldController<List<String>>? dropDownredesValueController;
  // State field(s) for TextFieldredesotros widget.
  FocusNode? textFieldredesotrosFocusNode;
  TextEditingController? textFieldredesotrosTextController;
  String? Function(BuildContext, String?)?
      textFieldredesotrosTextControllerValidator;
  // State field(s) for RadioButtonespacios widget.
  FormFieldController<String>? radioButtonespaciosValueController;
  // State field(s) for TextFielddescribeespacios widget.
  FocusNode? textFielddescribeespaciosFocusNode;
  TextEditingController? textFielddescribeespaciosTextController;
  String? Function(BuildContext, String?)?
      textFielddescribeespaciosTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for DropDownactividaes widget.
  List<String>? dropDownactividaesValue;
  FormFieldController<List<String>>? dropDownactividaesValueController;
  // State field(s) for DropDownintereses widget.
  List<String>? dropDowninteresesValue;
  FormFieldController<List<String>>? dropDowninteresesValueController;
  // State field(s) for TextFielddescripcionderechos widget.
  FocusNode? textFielddescripcionderechosFocusNode;
  TextEditingController? textFielddescripcionderechosTextController;
  String? Function(BuildContext, String?)?
      textFielddescripcionderechosTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  Completer<List<AmpliaciondeinformacionRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldprofesionalFocusNode?.dispose();
    textFieldprofesionalTextController?.dispose();

    textFieldapellidoFocusNode?.dispose();
    textFieldapellidoTextController?.dispose();

    textFieldnombreFocusNode?.dispose();
    textFieldnombreTextController?.dispose();

    textFieldDNIFocusNode1?.dispose();
    textFieldDNITextController1?.dispose();

    textFieldDNIFocusNode2?.dispose();
    textFieldDNITextController2?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    textFieldFocusNode3?.dispose();
    textController8?.dispose();

    textFieldFocusNode4?.dispose();
    textController9?.dispose();

    textFieldFocusNode5?.dispose();
    textController10?.dispose();

    expandableExpandableController1.dispose();
    textFieldobjetivoFocusNode1?.dispose();
    textFieldobjetivoTextController1?.dispose();

    textFieldFocusNode6?.dispose();
    textController12?.dispose();

    textFieldobjetivoFocusNode2?.dispose();
    textFieldobjetivoTextController2?.dispose();

    textFieldpercepcionFocusNode?.dispose();
    textFieldpercepcionTextController?.dispose();

    textFielddescripcionFocusNode?.dispose();
    textFielddescripcionTextController?.dispose();

    textFieldFocusNode7?.dispose();
    textController16?.dispose();

    expandableExpandableController2.dispose();
    paginatedDataTableController.dispose();
    expandableExpandableController3.dispose();
    textFieldFocusNode8?.dispose();
    textController17?.dispose();

    textFieldFocusNode9?.dispose();
    textController18?.dispose();

    textFieldredesotrosFocusNode?.dispose();
    textFieldredesotrosTextController?.dispose();

    textFielddescribeespaciosFocusNode?.dispose();
    textFielddescribeespaciosTextController?.dispose();

    textFieldFocusNode10?.dispose();
    textController21?.dispose();

    textFielddescripcionderechosFocusNode?.dispose();
    textFielddescripcionderechosTextController?.dispose();

    expandableExpandableController4.dispose();
    textFieldFocusNode11?.dispose();
    textController23?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonespaciosValue =>
      radioButtonespaciosValueController?.value;
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
}
