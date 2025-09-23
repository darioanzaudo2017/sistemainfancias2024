import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'avisoconcurrenciaadulto_widget.dart' show AvisoconcurrenciaadultoWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AvisoconcurrenciaadultoModel
    extends FlutterFlowModel<AvisoconcurrenciaadultoWidget> {
  ///  Local state fields for this component.

  int? indexlist;

  bool visibilidadform = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  FocusNode? textFieldDNIFocusNode;
  TextEditingController? textFieldDNITextController;
  late MaskTextInputFormatter textFieldDNIMask;
  String? Function(BuildContext, String?)? textFieldDNITextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextFieldresena widget.
  FocusNode? textFieldresenaFocusNode;
  TextEditingController? textFieldresenaTextController;
  late MaskTextInputFormatter textFieldresenaMask;
  String? Function(BuildContext, String?)?
      textFieldresenaTextControllerValidator;
  String? _textFieldresenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldtelacontactar widget.
  FocusNode? textFieldtelacontactarFocusNode;
  TextEditingController? textFieldtelacontactarTextController;
  late MaskTextInputFormatter textFieldtelacontactarMask;
  String? Function(BuildContext, String?)?
      textFieldtelacontactarTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AvisovisitaadultosRow? convocatororia;
  // Stores action output result for [Backend Call - API (Convocatoria visita adulto)] action in Button widget.
  ApiCallResponse? apiResultm56convocatoria;
  // Stores action output result for [Backend Call - API (Aviso visita adulto)] action in Button widget.
  ApiCallResponse? docvisita;
  Completer<List<AvisovisitaadultosRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    textFieldresenaTextControllerValidator =
        _textFieldresenaTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldapellidoFocusNode?.dispose();
    textFieldapellidoTextController?.dispose();

    textFieldnombreFocusNode?.dispose();
    textFieldnombreTextController?.dispose();

    textFieldDNIFocusNode?.dispose();
    textFieldDNITextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFieldresenaFocusNode?.dispose();
    textFieldresenaTextController?.dispose();

    textFieldtelacontactarFocusNode?.dispose();
    textFieldtelacontactarTextController?.dispose();
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
}
