import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'listaexpedientesrelacionados_model.dart';
export 'listaexpedientesrelacionados_model.dart';

class ListaexpedientesrelacionadosWidget extends StatefulWidget {
  const ListaexpedientesrelacionadosWidget({
    super.key,
    this.parameter1,
    required this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
  });

  final int? parameter1;
  final UsuariosRow? parameter2;
  final SpdRow? parameter3;
  final VistaUsuariosRolesRow? parameter4;
  final int? parameter5;

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
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
          child: FutureBuilder<List<VistaNnyaexpgruRow>>(
            future: VistaNnyaexpgruTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'id_NNyA',
                widget.parameter5,
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
              List<VistaNnyaexpgruRow> listViewVistaNnyaexpgruRowList =
                  snapshot.data!;

              return ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: listViewVistaNnyaexpgruRowList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewVistaNnyaexpgruRow =
                      listViewVistaNnyaexpgruRowList[listViewIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
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
                            12.0, 5.0, 12.0, 5.0),
                        child: Flex(
                          direction: (MediaQuery.sizeOf(context).width > 800.0)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 8.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        listViewVistaNnyaexpgruRow
                                            .expedienteExpediente,
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF14181B),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        listViewVistaNnyaexpgruRow
                                            .detalleNNyAExpGru,
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF14181B),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                    Text(
                                      '${listViewVistaNnyaexpgruRow.nombresNNyA},${listViewVistaNnyaexpgruRow.nombresNNyA}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF14181B),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible:
                                  listViewVistaNnyaexpgruRow.idExpediente !=
                                      widget.parameter1,
                              child: FlutterFlowIconButton(
                                borderColor: Color(0xFFE0E3E7),
                                borderRadius: 8.0,
                                borderWidth: 2.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.navigate_next,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  _model.queryexp =
                                      await VistaExpedientesUltimoEstadoTable()
                                          .queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'id',
                                      listViewVistaNnyaexpgruRow.idExpediente,
                                    ),
                                  );

                                  context.pushNamed(
                                    IngresosWidget.routeName,
                                    queryParameters: {
                                      'idexpediente': serializeParam(
                                        _model.queryexp?.firstOrNull,
                                        ParamType.SupabaseRow,
                                      ),
                                      'idexp': serializeParam(
                                        listViewVistaNnyaexpgruRow.idExpediente,
                                        ParamType.int,
                                      ),
                                      'usuariorow': serializeParam(
                                        widget.parameter2,
                                        ParamType.SupabaseRow,
                                      ),
                                      'spd': serializeParam(
                                        widget.parameter3,
                                        ParamType.SupabaseRow,
                                      ),
                                      'usuariorol': serializeParam(
                                        widget.parameter4,
                                        ParamType.SupabaseRow,
                                      ),
                                    }.withoutNulls,
                                  );

                                  safeSetState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
