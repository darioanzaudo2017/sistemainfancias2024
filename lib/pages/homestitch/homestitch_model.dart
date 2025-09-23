import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'homestitch_widget.dart' show HomestitchWidget;
import 'package:flutter/material.dart';

class HomestitchModel extends FlutterFlowModel<HomestitchWidget> {
  ///  Local state fields for this page.

  String filtro = 'leonardo';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<Apiexpediente6Struct>();
  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<VistaExpedientesUltimoEstadoRow>? query10;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}
