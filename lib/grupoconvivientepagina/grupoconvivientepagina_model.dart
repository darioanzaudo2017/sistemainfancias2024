import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'grupoconvivientepagina_widget.dart' show GrupoconvivientepaginaWidget;
import 'package:flutter/material.dart';

class GrupoconvivientepaginaModel
    extends FlutterFlowModel<GrupoconvivientepaginaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
