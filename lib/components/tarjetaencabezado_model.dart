import '/components/listaexpedientesrelacionados_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tarjetaencabezado_widget.dart' show TarjetaencabezadoWidget;
import 'package:flutter/material.dart';

class TarjetaencabezadoModel extends FlutterFlowModel<TarjetaencabezadoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for listaexpedientesrelacionados component.
  late ListaexpedientesrelacionadosModel listaexpedientesrelacionadosModel;

  @override
  void initState(BuildContext context) {
    listaexpedientesrelacionadosModel =
        createModel(context, () => ListaexpedientesrelacionadosModel());
  }

  @override
  void dispose() {
    listaexpedientesrelacionadosModel.dispose();
  }
}
