import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/formulario6/formulario6elevacion/formulario6elevacion_widget.dart';
import '/formulario6/formulario6reiteracion/formulario6reiteracion_widget.dart';
import '/formulario6/formulario6respuesta/formulario6respuesta_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'respuestaform6page_model.dart';
export 'respuestaform6page_model.dart';

class Respuestaform6pageWidget extends StatefulWidget {
  const Respuestaform6pageWidget({
    super.key,
    required this.idingreso,
    required this.expedienterow,
    required this.idform6,
  });

  final IngresosRow? idingreso;
  final VistaExpedientesUltimoEstadoRow? expedienterow;
  final int? idform6;

  static String routeName = 'Respuestaform6page';
  static String routePath = '/respuestaform6page';

  @override
  State<Respuestaform6pageWidget> createState() =>
      _Respuestaform6pageWidgetState();
}

class _Respuestaform6pageWidgetState extends State<Respuestaform6pageWidget> {
  late Respuestaform6pageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Respuestaform6pageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Text(
              'Respuestas de medidas',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.notoSansJp(
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Material(
              color: Colors.transparent,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.6,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.formulario6respuestaModel,
                          updateCallback: () => safeSetState(() {}),
                          child: Formulario6respuestaWidget(
                            editar: false,
                            idform6: widget.idform6,
                            idingreso: widget.idingreso,
                            rowexp: widget.expedienterow,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.formulario6reiteracionModel,
                          updateCallback: () => safeSetState(() {}),
                          child: Formulario6reiteracionWidget(
                            editar: false,
                            idform6: widget.idform6,
                            idingreso: widget.idingreso,
                            rowexp: widget.expedienterow,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.formulario6elevacionModel,
                          updateCallback: () => safeSetState(() {}),
                          child: Formulario6elevacionWidget(
                            editar: false,
                            idform6: widget.idform6,
                            idingreso: widget.idingreso,
                            rowexp: widget.expedienterow,
                          ),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
