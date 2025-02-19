import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'informesenaf_model.dart';
export 'informesenaf_model.dart';

class InformesenafWidget extends StatefulWidget {
  const InformesenafWidget({
    super.key,
    required this.link,
    required this.form9row,
    required this.exprow,
    required this.ingreso,
    required this.usuariorow,
  });

  final String? link;
  final Formulario9Row? form9row;
  final VistaExpedientesUltimoEstadoRow? exprow;
  final IngresosRow? ingreso;
  final UsuariosRow? usuariorow;

  static String routeName = 'informesenaf';
  static String routePath = '/informesenaf';

  @override
  State<InformesenafWidget> createState() => _InformesenafWidgetState();
}

class _InformesenafWidgetState extends State<InformesenafWidget> {
  late InformesenafModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformesenafModel());

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
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Noto Sans JP',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: FlutterFlowWebView(
                  content: widget.link!,
                  bypass: false,
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.apiResultnlg = await EmailResendCall.call(
                      mail:
                          'darioanzaudo@gmail.com,direcgenerlinfanciasme@gmail.com',
                      titulo:
                          'Solicitud de medida excepcional: ${widget.usuariorow?.spd}Solicita: ${widget.usuariorow?.nombreCompleto}',
                      mensaje: 'Solicitud de medida excepcional',
                      nOmbreyapellido:
                          '${widget.exprow?.nombres}, ${widget.exprow?.apellidos}',
                      dni: widget.exprow?.dni?.toString(),
                      spd: widget.usuariorow?.spd,
                      motivo: widget.form9row?.motivosolicitud,
                      link: widget.form9row?.linksolicitud,
                    );

                    if ((_model.apiResultnlg?.succeeded ?? true)) {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return WebViewAware(
                            child: AlertDialog(
                              title:
                                  Text('Email enviado a la direccion general'),
                              content:
                                  Text('El email se envio correctamente!!'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }

                    safeSetState(() {});
                  },
                  text: 'enviar mail direccion general para senaf',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
