import '/flutter_flow/flutter_flow_util.dart';
import '/formulario6/formulario6elevacion/formulario6elevacion_widget.dart';
import '/formulario6/formulario6reiteracion/formulario6reiteracion_widget.dart';
import '/formulario6/formulario6respuesta/formulario6respuesta_widget.dart';
import 'respuestasform6_widget.dart' show Respuestasform6Widget;
import 'package:flutter/material.dart';

class Respuestasform6Model extends FlutterFlowModel<Respuestasform6Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for formulario6respuesta component.
  late Formulario6respuestaModel formulario6respuestaModel;
  // Model for formulario6reiteracion component.
  late Formulario6reiteracionModel formulario6reiteracionModel;
  // Model for formulario6elevacion component.
  late Formulario6elevacionModel formulario6elevacionModel;

  @override
  void initState(BuildContext context) {
    formulario6respuestaModel =
        createModel(context, () => Formulario6respuestaModel());
    formulario6reiteracionModel =
        createModel(context, () => Formulario6reiteracionModel());
    formulario6elevacionModel =
        createModel(context, () => Formulario6elevacionModel());
  }

  @override
  void dispose() {
    formulario6respuestaModel.dispose();
    formulario6reiteracionModel.dispose();
    formulario6elevacionModel.dispose();
  }
}
