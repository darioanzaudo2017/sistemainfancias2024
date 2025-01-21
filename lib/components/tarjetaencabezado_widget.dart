import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'tarjetaencabezado_model.dart';
export 'tarjetaencabezado_model.dart';

class TarjetaencabezadoWidget extends StatefulWidget {
  const TarjetaencabezadoWidget({
    super.key,
    required this.exprow,
    required this.ingresorow,
    required this.usuariorow,
    bool? editarcaratula,
    bool? contactosref,
    bool? cambia,
  })  : editarcaratula = editarcaratula ?? true,
        contactosref = contactosref ?? true,
        cambia = cambia ?? true;

  final VistaExpedientesUltimoEstadoRow? exprow;
  final IngresosRow? ingresorow;
  final UsuariosRow? usuariorow;
  final bool editarcaratula;
  final bool contactosref;
  final bool cambia;

  @override
  State<TarjetaencabezadoWidget> createState() =>
      _TarjetaencabezadoWidgetState();
}

class _TarjetaencabezadoWidgetState extends State<TarjetaencabezadoWidget> {
  late TarjetaencabezadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TarjetaencabezadoModel());

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
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
        child: Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF39A9EF),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x19000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                      child: Flex(
                        direction: (MediaQuery.sizeOf(context).width > 800.0)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'NNyA: ${widget.exprow?.nombres} , ${widget.exprow?.apellidos}',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'DNI: ${valueOrDefault<String>(
                                        widget.exprow!.dni! >= 90000000
                                            ? 'Sin dato'
                                            : widget.exprow?.dni?.toString(),
                                        '0',
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          'Expediente: ${widget.exprow?.expediente}',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          'SPD: ${widget.exprow?.spd}',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          'Edad: ${widget.exprow?.edad?.toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                            ),
                          ),
                          Visibility(
                            visible:
                                (MediaQuery.sizeOf(context).width > 800.0) &&
                                    responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ),
                            child: Container(
                              width: 280.0,
                              height: 250.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 5.0),
                                  child:
                                      FutureBuilder<List<VistaNnyaexpgruRow>>(
                                    future: VistaNnyaexpgruTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'DNI_NNyA',
                                        widget.exprow?.dni,
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<VistaNnyaexpgruRow>
                                          listViewVistaNnyaexpgruRowList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewVistaNnyaexpgruRowList
                                                .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewVistaNnyaexpgruRow =
                                              listViewVistaNnyaexpgruRowList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 5.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: const [
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 5.0, 12.0, 5.0),
                                                child: Flex(
                                                  direction: (MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          800.0)
                                                      ? Axis.horizontal
                                                      : Axis.vertical,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewVistaNnyaexpgruRow
                                                                    .expedienteExpediente,
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewVistaNnyaexpgruRow
                                                                    .detalleNNyAExpGru,
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        10.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            FutureBuilder<
                                                                List<
                                                                    ExpedienteRow>>(
                                                              future: ExpedienteTable()
                                                                  .querySingleRow(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  listViewVistaNnyaexpgruRow
                                                                      .idExpediente,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<ExpedienteRow>
                                                                    textExpedienteRowList =
                                                                    snapshot
                                                                        .data!;

                                                                final textExpedienteRow =
                                                                    textExpedienteRowList
                                                                            .isNotEmpty
                                                                        ? textExpedienteRowList
                                                                            .first
                                                                        : null;

                                                                return Text(
                                                                  '${textExpedienteRow?.nombres},${textExpedienteRow?.apellidos}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF14181B),
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                          listViewVistaNnyaexpgruRow
                                                                  .idExpediente !=
                                                              widget
                                                                  .exprow?.id,
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            const Color(0xFFE0E3E7),
                                                        borderRadius: 8.0,
                                                        borderWidth: 2.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        icon: const Icon(
                                                          Icons.navigate_next,
                                                          color:
                                                              Color(0xFF57636C),
                                                          size: 20.0,
                                                        ),
                                                        onPressed: () async {
                                                          _model.queryexp =
                                                              await VistaExpedientesUltimoEstadoTable()
                                                                  .queryRows(
                                                            queryFn: (q) =>
                                                                q.eqOrNull(
                                                              'id',
                                                              listViewVistaNnyaexpgruRow
                                                                  .idExpediente,
                                                            ),
                                                          );

                                                          context.pushNamed(
                                                            'Ingresos',
                                                            queryParameters: {
                                                              'idexpediente':
                                                                  serializeParam(
                                                                _model.queryexp
                                                                    ?.firstOrNull,
                                                                ParamType
                                                                    .SupabaseRow,
                                                              ),
                                                              'idexp':
                                                                  serializeParam(
                                                                listViewVistaNnyaexpgruRow
                                                                    .idExpediente,
                                                                ParamType.int,
                                                              ),
                                                              'usuariorow':
                                                                  serializeParam(
                                                                widget
                                                                    .usuariorow,
                                                                ParamType
                                                                    .SupabaseRow,
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
                            ),
                          ),
                        ].divide((MediaQuery.sizeOf(context).width > 800.0)
                            ? const SizedBox(width: 10.0)
                            : const SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                  Flex(
                    direction: (MediaQuery.sizeOf(context).width > 800.0)
                        ? Axis.horizontal
                        : Axis.vertical,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Visibility(
                        visible: widget.editarcaratula,
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, 1.0),
                          child: FFButtonWidget(
                            onPressed: () async {},
                            text: 'Editar Caratula',
                            options: FFButtonOptions(
                              height: 30.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Noto Sans JP',
                                    color: const Color(0xFF39A9EF),
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: widget.contactosref,
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, 1.0),
                          child: FFButtonWidget(
                            onPressed: () async {},
                            text: 'Contactos de referencia',
                            options: FFButtonOptions(
                              height: 30.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Noto Sans JP',
                                    color: const Color(0xFF39A9EF),
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget.cambia)
                            Align(
                              alignment: const AlignmentDirectional(1.0, 1.0),
                              child: FFButtonWidget(
                                onPressed: () async {},
                                text: 'Cambiar exp de SPD',
                                options: FFButtonOptions(
                                  height: 30.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        color: const Color(0xFF39A9EF),
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ]
                        .divide((MediaQuery.sizeOf(context).width > 800.0)
                            ? const SizedBox(width: 10.0)
                            : const SizedBox(height: 10.0))
                        .around((MediaQuery.sizeOf(context).width > 800.0)
                            ? const SizedBox(width: 10.0)
                            : const SizedBox(height: 10.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
