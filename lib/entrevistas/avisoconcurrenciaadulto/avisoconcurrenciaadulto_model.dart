import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'avisoconcurrenciaadulto_widget.dart' show AvisoconcurrenciaadultoWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AvisoconcurrenciaadultoModel
    extends FlutterFlowModel<AvisoconcurrenciaadultoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldmotivo widget.
  FocusNode? textFieldmotivoFocusNode1;
  TextEditingController? textFieldmotivoTextController1;
  String? Function(BuildContext, String?)?
      textFieldmotivoTextController1Validator;
  String? _textFieldmotivoTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
  // State field(s) for TextFieldresena widget.
  FocusNode? textFieldresenaFocusNode1;
  TextEditingController? textFieldresenaTextController1;
  final textFieldresenaMask1 = MaskTextInputFormatter(mask: '##:## hs');
  String? Function(BuildContext, String?)?
      textFieldresenaTextController1Validator;
  String? _textFieldresenaTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldresena widget.
  FocusNode? textFieldresenaFocusNode2;
  TextEditingController? textFieldresenaTextController2;
  final textFieldresenaMask2 = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)?
      textFieldresenaTextController2Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (Concurrencia visita adulto)] action in Button widget.
  ApiCallResponse? apiResultm56;
  Completer<List<AvisovisitaadultosRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (Concurrencia visita adulto)] action in Button widget.
  ApiCallResponse? apiResultm56edit;

  @override
  void initState(BuildContext context) {
    textFieldmotivoTextController1Validator =
        _textFieldmotivoTextController1Validator;
    textFieldresenaTextController1Validator =
        _textFieldresenaTextController1Validator;
  }

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

    textFieldresenaFocusNode1?.dispose();
    textFieldresenaTextController1?.dispose();

    textFieldresenaFocusNode2?.dispose();
    textFieldresenaTextController2?.dispose();
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
