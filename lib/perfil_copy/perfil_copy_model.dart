import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
import '/components/barrade_navegacion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_copy_widget.dart' show PerfilCopyWidget;
import 'package:flutter/material.dart';

class PerfilCopyModel extends FlutterFlowModel<PerfilCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barradeNavegacion component.
  late BarradeNavegacionModel barradeNavegacionModel;
  // Model for anexosbotonera component.
  late AnexosbotoneraModel anexosbotoneraModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ExpedienteRow? creaexpgrupoCopy;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ExpedienteRow>? expedienteCopy;
  // Stores action output result for [Backend Call - API (carpeta del expediente)] action in Button widget.
  ApiCallResponse? apiResult42yCopy;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<VistaExpedientesUltimoEstadoRow>? exp;

  @override
  void initState(BuildContext context) {
    barradeNavegacionModel =
        createModel(context, () => BarradeNavegacionModel());
    anexosbotoneraModel = createModel(context, () => AnexosbotoneraModel());
  }

  @override
  void dispose() {
    barradeNavegacionModel.dispose();
    anexosbotoneraModel.dispose();
  }
}
