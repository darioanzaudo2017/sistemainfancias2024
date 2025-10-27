import '/backend/supabase/supabase.dart';
import '/components/adjuntardocumento_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'listadodeadjuntos_model.dart';
export 'listadodeadjuntos_model.dart';

class ListadodeadjuntosWidget extends StatefulWidget {
  const ListadodeadjuntosWidget({
    super.key,
    required this.expedienterow,
    required this.ingresorow,
  });

  final VistaExpedientesUltimoEstadoRow? expedienterow;
  final IngresosRow? ingresorow;

  @override
  State<ListadodeadjuntosWidget> createState() =>
      _ListadodeadjuntosWidgetState();
}

class _ListadodeadjuntosWidgetState extends State<ListadodeadjuntosWidget> {
  late ListadodeadjuntosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListadodeadjuntosModel());

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
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: FutureBuilder<List<DocumentosadjuntosRow>>(
          future: DocumentosadjuntosTable().queryRows(
            queryFn: (q) => q.eqOrNull(
              'idingresodoc',
              widget.ingresorow?.id,
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
            List<DocumentosadjuntosRow> containerDocumentosadjuntosRowList =
                snapshot.data!;

            return Material(
              color: Colors.transparent,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: 432.6,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Listado de archivos adjuntos',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.notoSansJp(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
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
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: AdjuntardocumentoWidget(
                                      exprow: widget.expedienterow,
                                      ingrow: widget.ingresorow,
                                      idampliacion: 0,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) =>
                                safeSetState(() => _model.adjunto = value));

                            safeSetState(() {});
                          },
                          text: 'adjuntar',
                          icon: Icon(
                            Icons.upload,
                            size: 15.0,
                          ),
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
                      Builder(
                        builder: (context) {
                          final listaadjuntos =
                              containerDocumentosadjuntosRowList.toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listaadjuntos.length,
                            itemBuilder: (context, listaadjuntosIndex) {
                              final listaadjuntosItem =
                                  listaadjuntos[listaadjuntosIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 16.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                                        12.0, 8.0, 12.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.mail_outline_outlined,
                                          color: Color(0xFF4B39EF),
                                          size: 32.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 8.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    listaadjuntosItem
                                                        .tipodocumento,
                                                    'Sin dato',
                                                  ),
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
                                                      listaadjuntosItem
                                                          .observaciones,
                                                      'Sin dato',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor: Color(0xFFE0E3E7),
                                            borderRadius: 8.0,
                                            borderWidth: 2.0,
                                            buttonSize: 40.0,
                                            icon: Icon(
                                              Icons.cloud_download_outlined,
                                              color: Color(0xFF57636C),
                                              size: 20.0,
                                            ),
                                            onPressed: () async {
                                              await launchURL(listaadjuntosItem
                                                  .documentopdf!);
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
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
