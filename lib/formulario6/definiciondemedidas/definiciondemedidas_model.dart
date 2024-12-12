import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'definiciondemedidas_widget.dart' show DefiniciondemedidasWidget;
import 'package:flutter/material.dart';

class DefiniciondemedidasModel
    extends FlutterFlowModel<DefiniciondemedidasWidget> {
  ///  Local state fields for this page.

  int? contador;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Formulario6Row>? form6principal;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario6Row? creaform60;
  // Stores action output result for [Bottom Sheet - formulario6] action in Button widget.
  String? form6;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<Formulario6Row>();
  // Stores action output result for [Bottom Sheet - formulario6] action in Button widget.
  String? form6edit;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<Anexo5requerimientoaccionesRow>? launch;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
