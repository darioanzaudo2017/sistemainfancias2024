import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'seccion7_widget.dart' show Seccion7Widget;
import 'package:flutter/material.dart';

class Seccion7Model extends FlutterFlowModel<Seccion7Widget> {
  ///  Local state fields for this component.

  bool derchosvulcompleto = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Bottom Sheet - desplegablederechosprincipal] action in Button widget.
  bool? agregarderecho;
  Completer<List<ListaDerechosVulneradosexpedienteRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ListaDerechosVulneradosexpedienteRow>();
  // State field(s) for DropDownpriorizacion widget.
  List<String>? dropDownpriorizacionValue;
  FormFieldController<List<String>>? dropDownpriorizacionValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
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
