import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seccion3_widget.dart' show Seccion3Widget;
import 'package:flutter/material.dart';

class Seccion3Model extends FlutterFlowModel<Seccion3Widget> {
  ///  Local state fields for this component.

  bool editarseccion3 = true;

  int? contador;

  UserRolRow? userrow;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<GrupoConvivienteRow>? formgrupoconviviente;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GrupoConvivienteRow? insertnnyaprincipal;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GrupoConvivienteRow? grupoconviviente;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<GrupoConvivienteRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<GrupoConvivienteRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
  }
}
