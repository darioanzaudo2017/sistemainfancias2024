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
  // State field(s) for TextFieldresena widget.
  FocusNode? textFieldresenaFocusNode;
  TextEditingController? textFieldresenaTextController;
  final textFieldresenaMask = MaskTextInputFormatter(mask: '##:## hs');
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
  final textFieldtelacontactarMask = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)?
      textFieldtelacontactarTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (Concurrencia visita adulto)] action in Button widget.
  ApiCallResponse? apiResultm56;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<AmpliaciondeinformacionRow>? crearnuevaconcurrenciaadulto;
  Completer<List<AvisovisitaadultosRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    textFieldresenaTextControllerValidator =
        _textFieldresenaTextControllerValidator;
  }

  @override
  void dispose() {
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
