import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'formulario1_model.dart';
export 'formulario1_model.dart';

class Formulario1Widget extends StatefulWidget {
  const Formulario1Widget({
    super.key,
    required this.idingreso,
    required this.rowexp,
    required this.usuariorow,
    required this.usuariosrol,
  });

  final IngresosRow? idingreso;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final UsuariosRow? usuariorow;
  final VistaUsuariosRolesRow? usuariosrol;

  @override
  State<Formulario1Widget> createState() => _Formulario1WidgetState();
}

class _Formulario1WidgetState extends State<Formulario1Widget> {
  late Formulario1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Formulario1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<IngresosRow>>(
        future: IngresosTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'id',
            widget.idingreso?.id,
          ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<IngresosRow> containerIngresosRowList = snapshot.data!;

          final containerIngresosRow = containerIngresosRowList.isNotEmpty
              ? containerIngresosRowList.first
              : null;

          return Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              constraints: BoxConstraints(
                maxWidth: 600.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
            ),
          );
        },
      ),
    );
  }
}
