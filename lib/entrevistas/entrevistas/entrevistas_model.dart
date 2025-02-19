import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'entrevistas_widget.dart' show EntrevistasWidget;
import 'package:flutter/material.dart';

class EntrevistasModel extends FlutterFlowModel<EntrevistasWidget> {
  ///  Local state fields for this page.

  String nombrepagina =
      'Verificacion y ampliacion de informacion. Entrevistas ';

  ///  State fields for stateful widgets in this page.

  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
  // Model for anexosbotonera component.
  late AnexosbotoneraModel anexosbotoneraModel;
  // Stores action output result for [Bottom Sheet - AvisoVisita] action in Button widget.
  bool? crearconvocatoria;
  Completer<List<AvisovisitaNNyARow>>? requestCompleter;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<AvisovisitaNNyARow>? link;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<Formulario3Row>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<Formulario2Row>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<Formulario4Row>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<AccionesAccesoriasRow>();

  @override
  void initState(BuildContext context) {
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
    anexosbotoneraModel = createModel(context, () => AnexosbotoneraModel());
  }

  @override
  void dispose() {
    tarjetaencabezadoModel.dispose();
    anexosbotoneraModel.dispose();
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    paginatedDataTableController4.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
