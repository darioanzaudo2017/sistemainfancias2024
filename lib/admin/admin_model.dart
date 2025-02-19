import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_widget.dart' show AdminWidget;
import 'package:flutter/material.dart';

class AdminModel extends FlutterFlowModel<AdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<VistaEstadisticasRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<VistaUsuariosRolesRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<VistaExpedientesSenafRow>();
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? vistaexpe;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
  }
}
