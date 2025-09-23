import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'formulario5_widget.dart' show Formulario5Widget;
import 'package:flutter/material.dart';

class Formulario5Model extends FlutterFlowModel<Formulario5Widget> {
  ///  Local state fields for this component.

  bool derechoscompletos = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ListaDerechosVulneradosexpedienteRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
