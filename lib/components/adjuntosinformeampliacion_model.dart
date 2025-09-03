import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adjuntosinformeampliacion_widget.dart'
    show AdjuntosinformeampliacionWidget;
import 'package:flutter/material.dart';

class AdjuntosinformeampliacionModel
    extends FlutterFlowModel<AdjuntosinformeampliacionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DocumentosadjuntosRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
