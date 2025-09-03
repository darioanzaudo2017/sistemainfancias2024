import '/backend/supabase/supabase.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'entrevistas_copy_widget.dart' show EntrevistasCopyWidget;
import 'package:flutter/material.dart';

class EntrevistasCopyModel extends FlutterFlowModel<EntrevistasCopyWidget> {
  ///  Local state fields for this page.

  String nombrepagina =
      'Verificacion y ampliacion de informacion. Entrevistas ';

  int? contador = 0;

  ///  State fields for stateful widgets in this page.

  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
  // Stores action output result for [Bottom Sheet - ampliacionactividadplanificacion] action in Button widget.
  bool? crearplanificacion;
  Completer<List<VistaAmpliacionInformacionRow>>? requestCompleter;
  // Stores action output result for [Bottom Sheet - ampliacionactividad] action in Button widget.
  bool? creaoampliacionhistorial;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VistaAmpliacionInformacionRow>();
  // Stores action output result for [Bottom Sheet - ampliacioninformacion] action in Button widget.
  int? editoentrevistas;
  // Stores action output result for [Bottom Sheet - ampliacionactividadplanificacion] action in Button widget.
  bool? editarplanificacion;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<AmplaicionSeccion8Row>? listaentrevistados;

  @override
  void initState(BuildContext context) {
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
  }

  @override
  void dispose() {
    tarjetaencabezadoModel.dispose();
    paginatedDataTableController.dispose();
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
