import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    required this.usuariorol,
  });

  final String? link;
  final Formulario9Row? form9row;
  final VistaExpedientesUltimoEstadoRow? exprow;
  final IngresosRow? ingreso;
  final UsuariosRow? usuariorow;
  final VistaUsuariosRolesRow? usuariorol;

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
          title: Text(
            'Informe SENAF',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Noto Sans JP',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.listausuarioszona =
                              await UsuariosTable().queryRows(
                            queryFn: (q) => q
                                .eqOrNull(
                                  'zona_usuario',
                                  widget.usuariorow?.zonaUsuario,
                                )
                                .eqOrNull(
                                  'SPD',
                                  'Zona',
                                ),
                          );
                          _model.apiResultnlg = await EmailResendCall.call(
                            mailList: _model.listausuarioszona
                                ?.map((e) => e.mail)
                                .withoutNulls
                                .toList(),
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

                          _model.versionsolicitud =
                              await InformeSenafVersionesCall.call(
                            fecha: getCurrentTimestamp.toString(),
                            linkinforme: widget.form9row?.linksolicitud,
                            idexpediente: widget.exprow?.id,
                            idingreso: widget.ingreso?.id,
                            idform9: widget.form9row?.idForm9,
                            idDrive: widget.form9row?.iddrive,
                            estado: '1',
                            idcarpeta: widget.ingreso?.idcarpeta,
                          );

                          await Formulario9Table().update(
                            data: {
                              'estadoinforme': 'Revision',
                              'cordinacionzonal': true,
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'idForm9',
                              widget.form9row?.idForm9,
                            ),
                          );
                          if ((_model.apiResultnlg?.succeeded ?? true)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text(
                                        'Email enviado a la direccion general'),
                                    content: Text(
                                        'El email se envio correctamente!!'),
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
                        text: 'Compartir informe con la coordinacion zonal',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Noto Sans JP',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    if ((widget.usuariorol?.rolId == 2) &&
                        (widget.form9row?.cordinacionzonal == true))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            unawaited(
                              () async {
                                await Formulario9Table().update(
                                  data: {
                                    'estadoinforme': 'Listo para PDF',
                                    'cordinaciongenaral': true,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'idForm9',
                                    widget.form9row?.idForm9,
                                  ),
                                );
                              }(),
                            );
                            _model.listausuarioszonaCopy =
                                await UsuariosTable().queryRows(
                              queryFn: (q) => q.eqOrNull(
                                'SPD',
                                'Coordinacion',
                              ),
                            );
                            _model.apiResultnlgCopy =
                                await EmailResendCall.call(
                              mailList: _model.listausuarioszonaCopy
                                  ?.map((e) => valueOrDefault<String>(
                                        e.mail,
                                        'SIn dato',
                                      ))
                                  .toList(),
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

                            _model.versionsolicitudcoordinacion =
                                await InformeSenafVersionesCall.call(
                              fecha: getCurrentTimestamp.toString(),
                              linkinforme: widget.form9row?.linksolicitud,
                              idexpediente: widget.exprow?.id,
                              idingreso: widget.ingreso?.id,
                              idform9: widget.form9row?.idForm9,
                              idDrive: widget.form9row?.iddrive,
                              estado: '2',
                              idcarpeta: widget.ingreso?.idcarpeta,
                            );

                            if ((_model.apiResultnlgCopy?.succeeded ?? true)) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text(
                                          'Email enviado a la direccion general'),
                                      content: Text(
                                          'El email se envio correctamente!!'),
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
                          text: 'Compartir informe con coordinacion general',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Noto Sans JP',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    if ((widget.usuariorol?.rolId == 1) &&
                        (widget.form9row?.cordinaciongenaral == true))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.versionsolicitudcoordinaciongral =
                                await InformeSenafVersionesCall.call(
                              fecha: getCurrentTimestamp.toString(),
                              linkinforme: widget.form9row?.linksolicitud,
                              idexpediente: widget.exprow?.id,
                              idingreso: widget.ingreso?.id,
                              idform9: widget.form9row?.idForm9,
                              idDrive: widget.form9row?.iddrive,
                              estado: '3',
                              idcarpeta: widget.ingreso?.idcarpeta,
                            );

                            safeSetState(() {});
                          },
                          text: 'Crera pdf final',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                Text(
                  'Informe SENAF',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Noto Sans JP',
                        letterSpacing: 0.0,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowWebView(
                        content: widget.link!,
                        bypass: false,
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        height: MediaQuery.sizeOf(context).height * 0.81,
                        verticalScroll: false,
                        horizontalScroll: false,
                      ),
                    ),
                    Container(
                      width: 401.1,
                      height: 731.1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              if (widget.form9row?.solicitudVsSPD != null &&
                                  widget.form9row?.solicitudVsSPD != '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 7.0,
                                          color: Color(0x2F1D2429),
                                          offset: Offset(
                                            0.0,
                                            3.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Solicitud Version SPD',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: Color(0xFF39D2C0),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Divider(
                                            height: 16.0,
                                            thickness: 2.0,
                                            color: Color(0xFFF1F4F8),
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            icon: FaIcon(
                                              FontAwesomeIcons.googleDrive,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              await launchURL(widget
                                                  .form9row!.solicitudVsSPD!);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              if (widget.form9row
                                          ?.solicitudVsCoordinacionGral !=
                                      null &&
                                  widget.form9row
                                          ?.solicitudVsCoordinacionGral !=
                                      '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 7.0,
                                          color: Color(0x2F1D2429),
                                          offset: Offset(
                                            0.0,
                                            3.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Solicitud Version Coordinacion Zonal',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: Color(0xFF39D2C0),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Divider(
                                            height: 16.0,
                                            thickness: 2.0,
                                            color: Color(0xFFF1F4F8),
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            icon: FaIcon(
                                              FontAwesomeIcons.googleDrive,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              await launchURL(widget.form9row!
                                                  .solicitudVsCoordinacionzonal!);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              if (widget.form9row
                                          ?.solicitudVsCoordinacionGral !=
                                      null &&
                                  widget.form9row
                                          ?.solicitudVsCoordinacionGral !=
                                      '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 7.0,
                                          color: Color(0x2F1D2429),
                                          offset: Offset(
                                            0.0,
                                            3.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Solicitud Version Coordinacion general',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Divider(
                                            height: 16.0,
                                            thickness: 2.0,
                                            color: Color(0xFFF1F4F8),
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            icon: FaIcon(
                                              FontAwesomeIcons.googleDrive,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              await launchURL(widget.form9row!
                                                  .solicitudVsCoordinacionGral!);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ].divide(SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
              ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
