import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/entrevistas/anexoreunioninstitucional/anexoreunioninstitucional_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'listareunioninterinstitucional_model.dart';
export 'listareunioninterinstitucional_model.dart';

class ListareunioninterinstitucionalWidget extends StatefulWidget {
  const ListareunioninterinstitucionalWidget({
    super.key,
    this.idingreso,
    required this.idingres,
    required this.idexprow,
    required this.formulario,
  });

  final int? idingreso;
  final IngresosRow? idingres;
  final VistaExpedientesUltimoEstadoRow? idexprow;
  final String? formulario;

  @override
  State<ListareunioninterinstitucionalWidget> createState() =>
      _ListareunioninterinstitucionalWidgetState();
}

class _ListareunioninterinstitucionalWidgetState
    extends State<ListareunioninterinstitucionalWidget> {
  late ListareunioninterinstitucionalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListareunioninterinstitucionalModel());

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
      child: FutureBuilder<List<Anexo4RequerimientoaccionesRow>>(
        future: (_model.requestCompleter ??=
                Completer<List<Anexo4RequerimientoaccionesRow>>()
                  ..complete(Anexo4RequerimientoaccionesTable().queryRows(
                    queryFn: (q) => q.eqOrNull(
                      'idingreso',
                      widget.idingreso,
                    ),
                  )))
            .future,
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
          List<Anexo4RequerimientoaccionesRow>
              optionsAnexo4RequerimientoaccionesRowList = snapshot.data!;

          return Material(
            color: Colors.transparent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.6,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: 50.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Lista de reuniones interinstitucionales',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.notoSansJp(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: AnexoreunioninstitucionalWidget(
                                  rowingreso: widget.idingres!,
                                  rowexp: widget.idexprow!,
                                  editar: false,
                                  idanexoreunion: null,
                                  formulario: widget.formulario!,
                                ),
                              );
                            },
                          ).then((value) => safeSetState(
                              () => _model.creonuevareunion = value));

                          if (_model.creonuevareunion!) {
                            await Future.delayed(
                                const Duration(milliseconds: 2500));
                            safeSetState(() => _model.requestCompleter = null);
                            await _model.waitForRequestCompleted();
                          }

                          safeSetState(() {});
                        },
                        text: 'Agregar',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                      child: Builder(
                        builder: (context) {
                          final optionsVar =
                              optionsAnexo4RequerimientoaccionesRowList
                                  .toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: optionsVar.length,
                            itemBuilder: (context, optionsVarIndex) {
                              final optionsVarItem =
                                  optionsVar[optionsVarIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 8.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                optionsVarItem.fecha,
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    font:
                                                        GoogleFonts.notoSansJp(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.apiResultzqa =
                                                        await AnexoReuninInterinstitucionalCall
                                                            .call(
                                                      fecha:
                                                          optionsVarItem.fecha,
                                                      nombreyapellido:
                                                          '${widget.idexprow?.nombres}, ${widget.idexprow?.apellidos}',
                                                      dni:
                                                          widget.idexprow?.dni,
                                                      institucion:
                                                          optionsVarItem
                                                              .institucion,
                                                      objetivos: optionsVarItem
                                                          .objetivos,
                                                      puntosacuerdos:
                                                          optionsVarItem
                                                              .puntosacuerdos,
                                                      expediente: widget
                                                          .idexprow?.expediente,
                                                      idingreso:
                                                          widget.idingreso,
                                                      carpeta: widget
                                                          .idingres?.idcarpeta,
                                                      reunion: optionsVarItem
                                                          .reunion,
                                                      idreunion:
                                                          optionsVarItem.id,
                                                    );

                                                    safeSetState(() => _model
                                                            .requestCompleter =
                                                        null);
                                                    await _model
                                                        .waitForRequestCompleted();

                                                    safeSetState(() {});
                                                  },
                                                  text: 'Generar pdf',
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .notoSansJp(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                if (optionsVarItem.linkdoc !=
                                                        null &&
                                                    optionsVarItem.linkdoc !=
                                                        '')
                                                  FlutterFlowIconButton(
                                                    borderRadius: 8.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons
                                                          .googleDrive,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      await launchURL(
                                                          optionsVarItem
                                                              .linkdoc!);
                                                    },
                                                  ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      AnexoreunioninstitucionalWidget(
                                                    rowingreso:
                                                        widget.idingres!,
                                                    rowexp: widget.idexprow!,
                                                    editar: true,
                                                    idanexoreunion:
                                                        optionsVarItem.id,
                                                    formulario:
                                                        widget.formulario!,
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: Color(0xFF7C8791),
                                            size: 24.0,
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
