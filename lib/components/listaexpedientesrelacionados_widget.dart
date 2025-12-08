import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'listaexpedientesrelacionados_model.dart';
export 'listaexpedientesrelacionados_model.dart';

class ListaexpedientesrelacionadosWidget extends StatefulWidget {
  const ListaexpedientesrelacionadosWidget({
    super.key,
    this.idexpedientepropio,
    required this.rowusuario,
    this.rowspd,
    this.rowusuariosroles,
    this.idnnya,
  });

  final int? idexpedientepropio;
  final UsuariosRow? rowusuario;
  final SpdRow? rowspd;
  final VistaUsuariosRolesRow? rowusuariosroles;
  final int? idnnya;

  @override
  State<ListaexpedientesrelacionadosWidget> createState() =>
      _ListaexpedientesrelacionadosWidgetState();
}

class _ListaexpedientesrelacionadosWidgetState
    extends State<ListaexpedientesrelacionadosWidget> {
  late ListaexpedientesrelacionadosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaexpedientesrelacionadosModel());

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
      alignment: AlignmentDirectional(1.0, -1.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          width: 400.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 25.0, 0.0),
                    child: FutureBuilder<List<VistaNnyaexpgruRow>>(
                      future: VistaNnyaexpgruTable().queryRows(
                        queryFn: (q) => q.eqOrNull(
                          'id_NNyA',
                          widget.idnnya,
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
                        List<VistaNnyaexpgruRow>
                            containerVistaNnyaexpgruRowList = snapshot.data!;

                        return Container(
                          width: 400.0,
                          height: 600.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Builder(
                              builder: (context) {
                                final nnyaexpgrup =
                                    containerVistaNnyaexpgruRowList.toList();

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: nnyaexpgrup.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 10.0),
                                  itemBuilder: (context, nnyaexpgrupIndex) {
                                    final nnyaexpgrupItem =
                                        nnyaexpgrup[nnyaexpgrupIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.vistaexp =
                                              await VistaExpedientesUltimoEstadoTable()
                                                  .queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'id',
                                              nnyaexpgrupItem.idExpediente,
                                            ),
                                          );

                                          context.pushNamed(
                                            IngresosWidget.routeName,
                                            queryParameters: {
                                              'idexp': serializeParam(
                                                _model
                                                    .vistaexp?.firstOrNull?.id,
                                                ParamType.int,
                                              ),
                                              'usuariorow': serializeParam(
                                                widget.rowusuario,
                                                ParamType.SupabaseRow,
                                              ),
                                              'spd': serializeParam(
                                                widget.rowspd,
                                                ParamType.SupabaseRow,
                                              ),
                                              'idcarpeta': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                              'usuariorol': serializeParam(
                                                widget.rowusuariosroles,
                                                ParamType.SupabaseRow,
                                              ),
                                            }.withoutNulls,
                                          );

                                          safeSetState(() {});
                                        },
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
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 16.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    nnyaexpgrupItem
                                                        .expedienteExpediente,
                                                    'Sin dato',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF39D2C0),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Divider(
                                                  height: 16.0,
                                                  thickness: 2.0,
                                                  color: Color(0xFFF1F4F8),
                                                ),
                                                Text(
                                                  '${valueOrDefault<String>(
                                                    nnyaexpgrupItem.nombresNNyA,
                                                    'Sin dato',
                                                  )}, ${valueOrDefault<String>(
                                                    nnyaexpgrupItem
                                                        .apellidosNNyA,
                                                    'Sin dato',
                                                  )}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      nnyaexpgrupItem
                                                          .sPDExpediente,
                                                      'Sin dato',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Cerrar',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
