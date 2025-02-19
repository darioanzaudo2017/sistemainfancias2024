import '/backend/supabase/supabase.dart';
import '/components/desplegablederechosprincipal_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'formulario5_model.dart';
export 'formulario5_model.dart';

class Formulario5Widget extends StatefulWidget {
  const Formulario5Widget({
    super.key,
    this.idingreso,
    this.rowexp,
    this.edit,
    String? formderecho,
    required this.idform5historial,
  }) : this.formderecho = formderecho ?? 'Informe sintesis';

  final IngresosRow? idingreso;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final bool? edit;
  final String formderecho;
  final int? idform5historial;

  @override
  State<Formulario5Widget> createState() => _Formulario5WidgetState();
}

class _Formulario5WidgetState extends State<Formulario5Widget> {
  late Formulario5Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Formulario5Model());

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
      child: FutureBuilder<List<Formulario5HistorialRow>>(
        future: Formulario5HistorialTable().querySingleRow(
          queryFn: (q) => q
              .eqOrNull(
                'idIngreso',
                widget.idingreso?.id,
              )
              .eqOrNull(
                'idForm5',
                widget.idform5historial,
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
          List<Formulario5HistorialRow> containerFormulario5HistorialRowList =
              snapshot.data!;

          final containerFormulario5HistorialRow =
              containerFormulario5HistorialRowList.isNotEmpty
                  ? containerFormulario5HistorialRowList.first
                  : null;

          return Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              constraints: BoxConstraints(
                maxWidth: 800.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
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
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Text(
                              'Formulario 5 - Informe síntesis de la vulneración de derechos para definir propuestas de medida de protección',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Noto Sans JP',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Fecha: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                        "d/M/y",
                                        containerFormulario5HistorialRow?.fecha,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      'No tiene fecha cargada',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Profesionales intervinientes',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow
                                      ?.profesionales,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '1. Derechos vulnerados (según Cuadro de Derechos):',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          FutureBuilder<
                              List<ListaDerechosVulneradosexpedienteRow>>(
                            future: (_model.requestCompleter ??= Completer<
                                    List<
                                        ListaDerechosVulneradosexpedienteRow>>()
                                  ..complete(
                                      ListaDerechosVulneradosexpedienteTable()
                                          .queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'idingreso',
                                      widget.idingreso?.id,
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
                              List<ListaDerechosVulneradosexpedienteRow>
                                  containerderechosListaDerechosVulneradosexpedienteRowList =
                                  snapshot.data!;

                              return Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 300.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
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
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      DesplegablederechosprincipalWidget(
                                                    idexp: widget.rowexp?.id,
                                                    idingreso:
                                                        widget.idingreso?.id,
                                                    form: 'Form5',
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => safeSetState(() =>
                                              _model.agregarderecho = value));

                                          if (_model.agregarderecho!) {
                                            safeSetState(() =>
                                                _model.requestCompleter = null);
                                            await _model
                                                .waitForRequestCompleted();
                                            _model.derechoscompletos = true;
                                            safeSetState(() {});
                                          }

                                          safeSetState(() {});
                                        },
                                        text: 'Agregar Derecho',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Noto Sans JP',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Builder(
                                        builder: (context) {
                                          final listadederchos =
                                              containerderechosListaDerechosVulneradosexpedienteRowList
                                                  .toList();

                                          return FlutterFlowDataTable<
                                              ListaDerechosVulneradosexpedienteRow>(
                                            controller: _model
                                                .paginatedDataTableController,
                                            data: listadederchos,
                                            columnsBuilder: (onSortChanged) => [
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Derecho',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Sub categoria',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Principal',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Formulario',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            dataRowBuilder: (listadederchosItem,
                                                    listadederchosIndex,
                                                    selected,
                                                    onSelectChanged) =>
                                                DataRow(
                                              color: WidgetStateProperty.all(
                                                listadederchosIndex % 2 == 0
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                              ),
                                              cells: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    listadederchosItem.derecho,
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    listadederchosItem
                                                        .subcategoria,
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Visibility(
                                                  visible: listadederchosItem
                                                          .principal ==
                                                      'Si',
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 65.0,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            listadederchosItem
                                                                .principal,
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    listadederchosItem
                                                        .formulario,
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ]
                                                  .map((c) => DataCell(c))
                                                  .toList(),
                                            ),
                                            paginated: true,
                                            selectable: false,
                                            hidePaginator: false,
                                            showFirstLastButtons: false,
                                            headingRowHeight: 56.0,
                                            dataRowHeight: 48.0,
                                            columnSpacing: 20.0,
                                            headingRowColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            addHorizontalDivider: true,
                                            addTopAndBottomDivider: false,
                                            hideDefaultHorizontalDivider: true,
                                            horizontalDividerColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            horizontalDividerThickness: 1.0,
                                            addVerticalDivider: false,
                                          );
                                        },
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              );
                            },
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Indicadores de vulneracion',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow?.indicadores,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Responsables de las vulneraciones',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow
                                      ?.responsables,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Antecedentes de la intervenciones previas del SPD y otras instituciones',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow
                                      ?.antecedentes,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '2. Fortalezas familiares y factores protectores',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Informacion obtenida de las entrevistas',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow?.info1,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '3. Actores referentes para articulación comunitaria',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final actores = containerFormulario5HistorialRow
                                      ?.actoresdrop
                                      .toList() ??
                                  [];

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(actores.length,
                                    (actoresIndex) {
                                  final actoresItem = actores[actoresIndex];
                                  return Text(
                                    actoresItem,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                  );
                                }),
                              );
                            },
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Informacion obtenida de las entrevistas',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow?.info2,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '4. Redefinición de criterios de priorización',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      lineHeight: 1.8,
                                    ),
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final criterios = containerFormulario5HistorialRow
                                      ?.criteriopriorizaciondrop
                                      .toList() ??
                                  [];

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(criterios.length,
                                    (criteriosIndex) {
                                  final criteriosItem =
                                      criterios[criteriosIndex];
                                  return Text(
                                    criteriosItem,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                  );
                                }),
                              );
                            },
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Valoracion Integral',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow
                                      ?.valoracionIntegral,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '5. Propuestas para medidas de Proteccion Integral',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      lineHeight: 1.8,
                                    ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Propuestas',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerFormulario5HistorialRow
                                      ?.propuestaMedida,
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ]
                            .divide(SizedBox(height: 12.0))
                            .around(SizedBox(height: 12.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
