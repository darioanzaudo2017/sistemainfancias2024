import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_copy_widget.dart' show PerfilCopyWidget;
import 'package:flutter/material.dart';

class PerfilCopyModel extends FlutterFlowModel<PerfilCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tarjetaencabezado component.
  late TarjetaencabezadoModel tarjetaencabezadoModel;

  @override
  void initState(BuildContext context) {
    tarjetaencabezadoModel =
        createModel(context, () => TarjetaencabezadoModel());
  }

  @override
  void dispose() {
    tarjetaencabezadoModel.dispose();
  }
}
