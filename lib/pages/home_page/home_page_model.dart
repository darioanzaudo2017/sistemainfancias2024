import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/referencias_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool? buscarbool;

  ///  State fields for stateful widgets in this page.

  // Model for referencias component.
  late ReferenciasModel referenciasModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (busqueda expediente)] action in Button widget.
  ApiCallResponse? apiResultfvy;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? queryexp;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<VistaExpedientesUltimoEstadoRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<VistaExpedientesUltimoEstadoRow>();

  @override
  void initState(BuildContext context) {
    referenciasModel = createModel(context, () => ReferenciasModel());
  }

  @override
  void dispose() {
    referenciasModel.dispose();
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();

    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
  }
}
