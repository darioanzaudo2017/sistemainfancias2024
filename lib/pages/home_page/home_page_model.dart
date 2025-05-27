import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/referencias_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
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
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? query2;

  @override
  void initState(BuildContext context) {
    referenciasModel = createModel(context, () => ReferenciasModel());
  }

  @override
  void dispose() {
    referenciasModel.dispose();
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }

  /// Action blocks.
  Future apibusqueda(BuildContext context) async {
    ApiCallResponse? apiResultfvyCopy;

    apiResultfvyCopy = await BusquedaExpedienteLISTACall.call(
      busquedaExp: textFieldTextController.text,
      token: currentJwtToken,
    );
  }
}
