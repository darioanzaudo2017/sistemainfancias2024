import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
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
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AvisovisitaadultosRow? crearnuevaconcurrenciaadulto;
  // Stores action output result for [Backend Call - API (Concurrencia visita adulto)] action in Button widget.
  ApiCallResponse? apiResultm56;
  Completer<List<AvisovisitaadultosRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<AvisovisitaadultosRow>();
  // Stores action output result for [Bottom Sheet - AvisoVisitaadulto] action in IconButton widget.
  bool? crearavisovisita;

  @override
  void initState(BuildContext context) {
    textFieldmotivoTextController1Validator =
        _textFieldmotivoTextController1Validator;
    textFieldresenaTextControllerValidator =
        _textFieldresenaTextControllerValidator;
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

    textFieldresenaFocusNode?.dispose();
    textFieldresenaTextController?.dispose();

    textFieldtelacontactarFocusNode?.dispose();
    textFieldtelacontactarTextController?.dispose();

    paginatedDataTableController.dispose();
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
