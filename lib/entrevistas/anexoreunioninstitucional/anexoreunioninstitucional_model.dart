import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anexoreunioninstitucional_widget.dart'
    show AnexoreunioninstitucionalWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class AnexoreunioninstitucionalModel
    extends FlutterFlowModel<AnexoreunioninstitucionalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  Completer<List<Anexo4RequerimientoaccionesRow>>? requestCompleter;

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
