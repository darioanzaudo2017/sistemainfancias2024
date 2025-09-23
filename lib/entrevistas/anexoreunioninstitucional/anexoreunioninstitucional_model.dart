import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anexoreunioninstitucional_widget.dart'
    show AnexoreunioninstitucionalWidget;
import 'package:flutter/material.dart';

class AnexoreunioninstitucionalModel
    extends FlutterFlowModel<AnexoreunioninstitucionalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadData9zvreunion = false;
  FFUploadedFile uploadedLocalFile_uploadData9zvreunion =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData9zvreunion = '';

  DateTime? datePicked;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode1;
  TextEditingController? textFieldmotivoTextController1;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController1Validator;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode2;
  TextEditingController? textFieldmotivoTextController2;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController2Validator;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode3;
  TextEditingController? textFieldmotivoTextController3;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController3Validator;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode4;
  TextEditingController? textFieldmotivoTextController4;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController4Validator;
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode5;
  TextEditingController? textFieldmotivoTextController5;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController5Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Anexo4RequerimientoaccionesRow? crearreunioninter;
  // Stores action output result for [Backend Call - API (ANEXO  REUNIN INTERINSTITUCIONAL)] action in Button widget.
  ApiCallResponse? documentoword;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldmotivoFocusNode1?.dispose();
    textFieldmotivoTextController1?.dispose();

    textFieldmotivoFocusNode2?.dispose();
    textFieldmotivoTextController2?.dispose();

    textFieldmotivoFocusNode3?.dispose();
    textFieldmotivoTextController3?.dispose();

    textFieldmotivoFocusNode4?.dispose();
    textFieldmotivoTextController4?.dispose();

    textFieldmotivoFocusNode5?.dispose();
    textFieldmotivoTextController5?.dispose();
  }
}
