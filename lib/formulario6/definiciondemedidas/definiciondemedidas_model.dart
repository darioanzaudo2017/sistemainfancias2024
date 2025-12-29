import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'definiciondemedidas_widget.dart' show DefiniciondemedidasWidget;
import 'package:flutter/material.dart';

class DefiniciondemedidasModel
    extends FlutterFlowModel<DefiniciondemedidasWidget> {
  ///  Local state fields for this page.

  int? contador;

  bool editarformmedida = true;

  ///  State fields for stateful widgets in this page.

  // Model for barradeNavegacion component.
  late BarradeNavegacionModel barradeNavegacionModel;
  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Formulario6Row>? form6principal;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario6Row? creaform60;
  // Stores action output result for [Bottom Sheet - formulario6] action in Button widget.
  String? form6;
  Completer<List<Formulario6Row>>? requestCompleter1;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<Formulario6Row>();
  // Stores action output result for [Bottom Sheet - formulario6] action in Button widget.
  String? form6edit;
  // Stores action output result for [Backend Call - API (acta)] action in IconButton widget.
  ApiCallResponse? acta;
  bool isDataUploading_uploadDataEnt = false;
  FFUploadedFile uploadedLocalFile_uploadDataEnt =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataEnt = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  Formulario7Row? form7;
  // Stores action output result for [Bottom Sheet - formulario7] action in Button widget.
  bool? creoacta;
  Completer<List<Formulario7Row>>? requestCompleter2;

  @override
  void initState(BuildContext context) {
    barradeNavegacionModel =
        createModel(context, () => BarradeNavegacionModel());
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
  }

  @override
  void dispose() {
    barradeNavegacionModel.dispose();
    tarjetaencabezadoModel.dispose();
    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
