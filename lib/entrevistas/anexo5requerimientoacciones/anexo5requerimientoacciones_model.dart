import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anexo5requerimientoacciones_widget.dart'
    show Anexo5requerimientoaccionesWidget;
import 'package:flutter/material.dart';

class Anexo5requerimientoaccionesModel
    extends FlutterFlowModel<Anexo5requerimientoaccionesWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (ANEXO  REQUERIMIENTO DE EJECUCIoN DE ACCIONES)] action in Button widget.
  ApiCallResponse? apiResults9d;
  // Stores action output result for [Backend Call - API (ANEXO  REQUERIMIENTO DE EJECUCIoN DE ACCIONES)] action in Button widget.
  ApiCallResponse? apiResults9dedit;

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
  }
}
