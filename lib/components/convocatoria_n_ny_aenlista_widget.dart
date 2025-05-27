import '/backend/supabase/supabase.dart';
import '/entrevistas/aviso_visita/aviso_visita_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'convocatoria_n_ny_aenlista_model.dart';
export 'convocatoria_n_ny_aenlista_model.dart';

class ConvocatoriaNNyAenlistaWidget extends StatefulWidget {
  const ConvocatoriaNNyAenlistaWidget({
    super.key,
    this.idampliacion,
    this.ingresorow,
    required this.exprow,
    required this.avisovisita,
  });

  final int? idampliacion;
  final IngresosRow? ingresorow;
  final VistaExpedientesUltimoEstadoRow? exprow;
  final String? avisovisita;

  @override
  State<ConvocatoriaNNyAenlistaWidget> createState() =>
      _ConvocatoriaNNyAenlistaWidgetState();
}

class _ConvocatoriaNNyAenlistaWidgetState
    extends State<ConvocatoriaNNyAenlistaWidget> {
  late ConvocatoriaNNyAenlistaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConvocatoriaNNyAenlistaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 120.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Asistio a la entrevista NNyA: ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.notoSansJp(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Color(0x8A000000),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            Flexible(
              child: FlutterFlowChoiceChips(
                options: [ChipData('Si'), ChipData('No')],
                onChanged: (val) async {
                  safeSetState(
                      () => _model.choiceChipsNNyAValue = val?.firstOrNull);
                  await AmpliaciondeinformacionTable().update(
                    data: {
                      'asistioentrevistaNNyA': _model.choiceChipsNNyAValue,
                    },
                    matchingRows: (rows) => rows.eqOrNull(
                      'idampliacion',
                      widget.idampliacion,
                    ),
                  );
                },
                selectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.notoSansJp(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                  iconColor: FlutterFlowTheme.of(context).info,
                  iconSize: 16.0,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                unselectedChipStyle: ChipStyle(
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.notoSansJp(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  iconSize: 16.0,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                chipSpacing: 8.0,
                rowSpacing: 8.0,
                multiselect: false,
                initialized: _model.choiceChipsNNyAValue != null,
                alignment: WrapAlignment.start,
                controller: _model.choiceChipsNNyAValueController ??=
                    FormFieldController<List<String>>(
                  [widget.avisovisita!],
                ),
                wrapped: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: AvisoVisitaWidget(
                              rowingreso: widget.ingresorow!,
                              rowexp: widget.exprow!,
                              editar: true,
                              idampliacion: widget.idampliacion,
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    text: 'Convocatoria NNyA',
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
                ].divide(SizedBox(width: 15.0)),
              ),
            ),
          ].divide(SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
