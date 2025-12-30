import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'seccion3_model.dart';
export 'seccion3_model.dart';

class Seccion3Widget extends StatefulWidget {
  const Seccion3Widget({
    super.key,
    required this.idingreso,
    required this.idexp,
    this.editar,
    this.titulo,
    required this.userrol,
    required this.idseccion1,
    required this.idengreso2,
    required this.idexp2,
  });

  final IngresosRow? idingreso;
  final VistaExpedientesUltimoEstadoRow? idexp;
  final bool? editar;
  final String? titulo;
  final VistaUsuariosRolesRow? userrol;
  final int? idseccion1;
  final int? idengreso2;
  final int? idexp2;

  @override
  State<Seccion3Widget> createState() => _Seccion3WidgetState();
}

class _Seccion3WidgetState extends State<Seccion3Widget> {
  late Seccion3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Seccion3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: FutureBuilder<List<GrupoConvivienteRow>>(
            future: GrupoConvivienteTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'idingreso',
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
              List<GrupoConvivienteRow> containerGrupoConvivienteRowList =
                  snapshot.data!;

              return Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 800.0,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.sizeOf(context).width * 0.8,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
