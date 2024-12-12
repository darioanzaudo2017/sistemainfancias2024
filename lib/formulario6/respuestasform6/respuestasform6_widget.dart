import '/flutter_flow/flutter_flow_util.dart';
import '/formulario6/formulario6elevacion/formulario6elevacion_widget.dart';
import '/formulario6/formulario6reiteracion/formulario6reiteracion_widget.dart';
import '/formulario6/formulario6respuesta/formulario6respuesta_widget.dart';
import 'package:flutter/material.dart';
import 'respuestasform6_model.dart';
export 'respuestasform6_model.dart';

class Respuestasform6Widget extends StatefulWidget {
  const Respuestasform6Widget({
    super.key,
    this.idform6,
  });

  final int? idform6;

  @override
  State<Respuestasform6Widget> createState() => _Respuestasform6WidgetState();
}

class _Respuestasform6WidgetState extends State<Respuestasform6Widget> {
  late Respuestasform6Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Respuestasform6Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.formulario6respuestaModel,
            updateCallback: () => safeSetState(() {}),
            child: Formulario6respuestaWidget(
              editar: false,
              idform6: widget.idform6,
            ),
          ),
          wrapWithModel(
            model: _model.formulario6reiteracionModel,
            updateCallback: () => safeSetState(() {}),
            child: const Formulario6reiteracionWidget(),
          ),
          wrapWithModel(
            model: _model.formulario6elevacionModel,
            updateCallback: () => safeSetState(() {}),
            child: Formulario6elevacionWidget(
              editar: false,
              idform6: widget.idform6,
            ),
          ),
        ],
      ),
    );
  }
}
