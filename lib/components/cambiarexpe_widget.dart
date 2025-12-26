import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cambiarexpe_model.dart';
export 'cambiarexpe_model.dart';

class CambiarexpeWidget extends StatefulWidget {
  const CambiarexpeWidget({
    super.key,
    required this.usuariorol,
    required this.idexp,
  });

  final VistaUsuariosRolesRow? usuariorol;
  final int? idexp;

  @override
  State<CambiarexpeWidget> createState() => _CambiarexpeWidgetState();
}

class _CambiarexpeWidgetState extends State<CambiarexpeWidget> {
  late CambiarexpeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CambiarexpeModel());

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
      child: FutureBuilder<List<VistaExpedientesUltimoEstadoRow>>(
        future: VistaExpedientesUltimoEstadoTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'id',
            widget.idexp,
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
          List<VistaExpedientesUltimoEstadoRow>
              containerVistaExpedientesUltimoEstadoRowList = snapshot.data!;

          final containerVistaExpedientesUltimoEstadoRow =
              containerVistaExpedientesUltimoEstadoRowList.isNotEmpty
                  ? containerVistaExpedientesUltimoEstadoRowList.first
                  : null;

          return Material(
            color: Colors.transparent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: 400.0,
              height: 180.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 46.0,
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Text(
                    'Cambiar expediente de SPD',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.notoSansJp(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  FutureBuilder<List<SpdRow>>(
                    future: SpdTable().queryRows(
                      queryFn: (q) => q,
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
                      List<SpdRow> dropDownSpdRowList = snapshot.data!;

                      return FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(
                          _model.dropDownValue ??=
                              containerVistaExpedientesUltimoEstadoRow?.spd,
                        ),
                        options:
                            dropDownSpdRowList.map((e) => e.nombrespd).toList(),
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue = val),
                        width: 300.0,
                        height: 40.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.notoSansJp(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        hintText: 'SPD',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).secondaryText,
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: Text(
                                      'Estas a punto de cambiar de SPD el expediente'),
                                  content: Text(
                                      'Estas a punto de cambiar de SPD el expediente. Deseas continuar?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
                                      child: Text('Confirmar'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ) ??
                          false;
                      if (confirmDialogResponse) {
                        await ExpedienteTable().update(
                          data: {
                            'expediente':
                                '${_model.dropDownValue}/${widget.idexp?.toString()}/${dateTimeFormat(
                              "M",
                              containerVistaExpedientesUltimoEstadoRow?.fecha,
                              locale: FFLocalizations.of(context).languageCode,
                            )}/${dateTimeFormat(
                              "y",
                              containerVistaExpedientesUltimoEstadoRow?.fecha,
                              locale: FFLocalizations.of(context).languageCode,
                            )}',
                          },
                          matchingRows: (rows) => rows.eqOrNull(
                            'id',
                            widget.idexp,
                          ),
                        );
                        _model.cambiospdapi = await CambiospdCall.call(
                          idexp: widget.idexp,
                          spd: _model.dropDownValue,
                          token: currentJwtToken,
                        );

                        await NotificacionesTable().insert({
                          'descripcion': 'Cambio de expediente',
                          'idexpediente': widget.idexp,
                          'spd': containerVistaExpedientesUltimoEstadoRow?.spd,
                          'spdnuevo': _model.dropDownValue,
                        });
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text('Se cambio el expediente'),
                                content: Text(
                                    'El expediente se cambio correctamente!'),
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
                        Navigator.pop(context);
                      }

                      safeSetState(() {});
                    },
                    text: 'Cambiar Expediente',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.notoSansJp(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(SizedBox(height: 5.0)).around(SizedBox(height: 5.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
