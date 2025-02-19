import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'senaf_copy_model.dart';
export 'senaf_copy_model.dart';

class SenafCopyWidget extends StatefulWidget {
  const SenafCopyWidget({
    super.key,
    this.ingrow,
    this.expediente,
    required this.usuariorow,
    this.usuariorol,
  });

  final IngresosRow? ingrow;
  final VistaExpedientesUltimoEstadoRow? expediente;
  final UsuariosRow? usuariorow;
  final VistaUsuariosRolesRow? usuariorol;

  static String routeName = 'SenafCopy';
  static String routePath = '/senafCopy';

  @override
  State<SenafCopyWidget> createState() => _SenafCopyWidgetState();
}

class _SenafCopyWidgetState extends State<SenafCopyWidget> {
  late SenafCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SenafCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.grupo = await GrupoConvivienteTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'idingreso',
          widget.ingrow?.id,
        ),
      );
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldObsFocusNode ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textFieldmotivosolicitudFocusNode ??= FocusNode();

    _model.textFieldobservacionesdemedidaadoptadaTextController ??=
        TextEditingController();
    _model.textFieldobservacionesdemedidaadoptadaFocusNode ??= FocusNode();

    _model.textFieldmotivorechazoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GrupoConvivienteRow>>(
      future: GrupoConvivienteTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'idingreso',
          widget.ingrow?.id,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<GrupoConvivienteRow> senafCopyGrupoConvivienteRowList =
            snapshot.data!;

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
                  context.safePop();
                },
              ),
              title: Text(
                'SENAF',
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
              child: FutureBuilder<List<Formulario9Row>>(
                future: (_model.requestCompleter1 ??=
                        Completer<List<Formulario9Row>>()
                          ..complete(Formulario9Table().querySingleRow(
                            queryFn: (q) => q.eqOrNull(
                              'idIngreso',
                              widget.ingrow?.id,
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
                  List<Formulario9Row> containerform9Formulario9RowList =
                      snapshot.data!;

                  final containerform9Formulario9Row =
                      containerform9Formulario9RowList.isNotEmpty
                          ? containerform9Formulario9RowList.first
                          : null;

                  return Container(
                    decoration: BoxDecoration(),
                    child: FutureBuilder<List<IngresosRow>>(
                      future: (_model.requestCompleter2 ??=
                              Completer<List<IngresosRow>>()
                                ..complete(IngresosTable().querySingleRow(
                                  queryFn: (q) => q.eqOrNull(
                                    'id',
                                    widget.ingrow?.id,
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
                        List<IngresosRow> containeringresoIngresosRowList =
                            snapshot.data!;

                        final containeringresoIngresosRow =
                            containeringresoIngresosRowList.isNotEmpty
                                ? containeringresoIngresosRowList.first
                                : null;

                        return Container(
                          decoration: BoxDecoration(),
                          child: FutureBuilder<List<Formulario5Row>>(
                            future: Formulario5Table().querySingleRow(
                              queryFn: (q) => q.eqOrNull(
                                'idIngreso',
                                widget.ingrow?.id,
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
                              List<Formulario5Row> containerFormulario5RowList =
                                  snapshot.data!;

                              final containerFormulario5Row =
                                  containerFormulario5RowList.isNotEmpty
                                      ? containerFormulario5RowList.first
                                      : null;

                              return Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.296,
                                            height: 300.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Builder(
                                              builder: (context) {
                                                final grupoconvivientetabla =
                                                    senafCopyGrupoConvivienteRowList
                                                        .toList();

                                                return FlutterFlowDataTable<
                                                    GrupoConvivienteRow>(
                                                  controller: _model
                                                      .paginatedDataTableController,
                                                  data: grupoconvivientetabla,
                                                  columnsBuilder:
                                                      (onSortChanged) => [
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Nombres',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Apellidos',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Vinculo',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'convivencia',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                  ],
                                                  dataRowBuilder:
                                                      (grupoconvivientetablaItem,
                                                              grupoconvivientetablaIndex,
                                                              selected,
                                                              onSelectChanged) =>
                                                          DataRow(
                                                    color: WidgetStateProperty
                                                        .all(
                                                      grupoconvivientetablaIndex %
                                                                  2 ==
                                                              0
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
                                                          grupoconvivientetablaItem
                                                              .nombre,
                                                          '0',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          grupoconvivientetablaItem
                                                              .apellido,
                                                          '0',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          grupoconvivientetablaItem
                                                              .vinculo,
                                                          '0',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          grupoconvivientetablaItem
                                                              .conviviente,
                                                          '0',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  addHorizontalDivider: true,
                                                  addTopAndBottomDivider: false,
                                                  hideDefaultHorizontalDivider:
                                                      true,
                                                  horizontalDividerColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  horizontalDividerThickness:
                                                      1.0,
                                                  addVerticalDivider: false,
                                                );
                                              },
                                            ),
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 5.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.3,
                                              height: 500.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 7.0,
                                                              color: Color(
                                                                  0x2F1D2429),
                                                              offset: Offset(
                                                                0.0,
                                                                3.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      12.0,
                                                                      16.0,
                                                                      12.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Informe sintesis',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: Color(
                                                                            0xFF39D2C0),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Divider(
                                                                  height: 16.0,
                                                                  thickness:
                                                                      2.0,
                                                                  color: Color(
                                                                      0xFFF1F4F8),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Profesionales intervinientes',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          containerFormulario5Row
                                                                              ?.profesionales,
                                                                          'No hay profesionales registrados',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Fundamento',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          containerFormulario5Row
                                                                              ?.fundamento,
                                                                          'No tiene',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Indicadores de riesgo',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          containerFormulario5Row
                                                                              ?.indicadores,
                                                                          'No tiene',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Valoracion integral',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          containerFormulario5Row
                                                                              ?.valoracionIntegral,
                                                                          'No tiene',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Propuestas',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child: SelectionArea(
                                                                          child: Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          containerFormulario5Row
                                                                              ?.propuestaMedida,
                                                                          'No tiene',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      )),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          Formulario5PaginaWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'idingreso':
                                                                serializeParam(
                                                              widget
                                                                  .ingrow?.id,
                                                              ParamType.int,
                                                            ),
                                                            'rowexpediente':
                                                                serializeParam(
                                                              widget
                                                                  .expediente,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'rowingreso':
                                                                serializeParam(
                                                              containeringresoIngresosRow,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'edit':
                                                                serializeParam(
                                                              true,
                                                              ParamType.bool,
                                                            ),
                                                            'usuariorow':
                                                                serializeParam(
                                                              widget
                                                                  .usuariorow,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'usuariorol':
                                                                serializeParam(
                                                              widget
                                                                  .usuariorol,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      text:
                                                          'Ir a Informe sintesis',
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 10.0))
                                                      .around(SizedBox(
                                                          height: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Form(
                                                      key: _model.formKey,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .disabled,
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.93,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .stretch,
                                                                children: [
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .tarjetaencabezadoModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        TarjetaencabezadoWidget(
                                                                      editarcaratula:
                                                                          false,
                                                                      contactosref:
                                                                          false,
                                                                      cambia:
                                                                          false,
                                                                      exprow: widget
                                                                          .expediente!,
                                                                      ingresorow:
                                                                          widget
                                                                              .ingrow,
                                                                      usuariorow:
                                                                          widget
                                                                              .usuariorow!,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      'Cese de la intervencion ',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans JP',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .dropDowncausaValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.dropDowncausaValue ??=
                                                                            containerform9Formulario9Row?.causa,
                                                                      ),
                                                                      options: [
                                                                        'Restitución integral de los derechos vulnerados',
                                                                        'Incumplimiento reiterado de las estrategias acordadas por parte del niño/adolescente o familia u organismo/institución requerido',
                                                                        'Fallecimiento del NNA',
                                                                        'Otra causal que impide la continuidad de intervencion',
                                                                        'Cambio de ciudad de residencia (Se notifica por principio de corresponsabilidad)',
                                                                        'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)'
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              safeSetState(() => _model.dropDowncausaValue = val),
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          100.0,
                                                                      maxHeight:
                                                                          250.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans JP',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            lineHeight:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Causa',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          10.0,
                                                                      margin: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      isOverButton:
                                                                          false,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .dropDowncausaValue ==
                                                                      'Incumplimiento reiterado de las estrategias acordadas por parte del niño/adolescente o familia u organismo/institución requerido')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController1,
                                                                        focusNode:
                                                                            _model.textFieldFocusNode1,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              containerform9Formulario9Row?.acciones,
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans JP',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        validator: _model
                                                                            .textController1Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropDowncausaValue !=
                                                                      'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textFieldObsTextController ??=
                                                                                TextEditingController(
                                                                          text:
                                                                              containerform9Formulario9Row?.observacioncese,
                                                                        ),
                                                                        focusNode:
                                                                            _model.textFieldObsFocusNode,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              'Observaciones de motivo del cese de la medida de protección',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans JP',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        maxLines:
                                                                            3,
                                                                        validator: _model
                                                                            .textFieldObsTextControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                          .dropDowncausaValue ==
                                                                      'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)')
                                                                    Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          5.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Visibility(
                                                                          visible:
                                                                              _model.dropDowncausaValue == 'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)',
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    decoration: BoxDecoration(),
                                                                                  ),
                                                                                  Text(
                                                                                    'SOLICITUD DE MEDIDA EXCEPCIONAL A SeNAF',
                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Divider(
                                                                                    thickness: 2.0,
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                        child: Text(
                                                                                          'Se resuelve el CESE DE LAS MEDIDAS DE PROTECCIÓN DE DERECHOS y la SOLICITUD DE LA MEDIDA EXCEPCIONAL A SENAF en razón de',
                                                                                          style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 450.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Text(
                                                                                              'a) Haber agotado las Medidas de protección posibles para la restitución de los derechos vulnerados sin que los mismos hayan podido ser restituidos. (art 42, 45, 48 y 51 de la ley 9944)',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          FlutterFlowRadioButton(
                                                                                            options: ['Si', 'No'].toList(),
                                                                                            onChanged: (val) => safeSetState(() {}),
                                                                                            controller: _model.radioButtoninscriptoagotadoValueController ??= FormFieldController<String>(valueOrDefault<String>(
                                                                                              containerform9Formulario9Row?.agotadomedida,
                                                                                              'No',
                                                                                            )),
                                                                                            optionHeight: 32.0,
                                                                                            textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            buttonPosition: RadioButtonPosition.left,
                                                                                            direction: Axis.vertical,
                                                                                            radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                            inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            toggleable: false,
                                                                                            horizontalAlignment: WrapAlignment.start,
                                                                                            verticalAlignment: WrapCrossAlignment.start,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 450.0,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Text(
                                                                                              'b) Que la permanencia en su medio familiar implica un grave riesgo para la vida e integridad psicofisica de la niñajo o adolescente. (art 42 y 51 de la ley say4)',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          FlutterFlowRadioButton(
                                                                                            options: ['Si', 'No'].toList(),
                                                                                            onChanged: (val) => safeSetState(() {}),
                                                                                            controller: _model.radioButtoninscriptopermanenciafamiliaValueController ??= FormFieldController<String>('No'),
                                                                                            optionHeight: 32.0,
                                                                                            textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            buttonPosition: RadioButtonPosition.left,
                                                                                            direction: Axis.vertical,
                                                                                            radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                            inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            toggleable: false,
                                                                                            horizontalAlignment: WrapAlignment.start,
                                                                                            verticalAlignment: WrapCrossAlignment.start,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 5.0)),
                                                                                  ),
                                                                                  Divider(
                                                                                    thickness: 2.0,
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 6.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.textController3 ??= TextEditingController(
                                                                                        text: containerform9Formulario9Row?.resenadelasitu,
                                                                                      ),
                                                                                      focusNode: _model.textFieldFocusNode2,
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: 'Reseña de la situacion',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Reseña de la situacion',
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              letterSpacing: 0.0,
                                                                                              lineHeight: 3.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Noto Sans JP',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      maxLines: 20,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.textController3Validator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 6.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.textController4 ??= TextEditingController(
                                                                                        text: containerform9Formulario9Row?.fundamentacionsolicitud,
                                                                                      ),
                                                                                      focusNode: _model.textFieldFocusNode3,
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: 'Fundamentacion ',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: 'Fundamentacion',
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              letterSpacing: 0.0,
                                                                                              lineHeight: 3.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Noto Sans JP',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      maxLines: 20,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.textController4Validator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(10.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 5.0,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                ),
                                                                                              ),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Estado de avance de solicitud de medida Excepcional',
                                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                    child: Container(
                                                                                                      width: 100.0,
                                                                                                      height: 10.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: () {
                                                                                                          if (containerform9Formulario9Row?.idForm9 == null) {
                                                                                                            return Color(0x00000000);
                                                                                                          } else if (containerform9Formulario9Row!.solicitudMedida!) {
                                                                                                            return FlutterFlowTheme.of(context).secondary;
                                                                                                          } else {
                                                                                                            return FlutterFlowTheme.of(context).warning;
                                                                                                          }
                                                                                                        }(),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(0.0),
                                                                                                          bottomRight: Radius.circular(0.0),
                                                                                                          topLeft: Radius.circular(10.0),
                                                                                                          topRight: Radius.circular(0.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Theme(
                                                                                                          data: ThemeData(
                                                                                                            checkboxTheme: CheckboxThemeData(
                                                                                                              visualDensity: VisualDensity.compact,
                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                              shape: CircleBorder(),
                                                                                                            ),
                                                                                                            unselectedWidgetColor: FlutterFlowTheme.of(context).error,
                                                                                                          ),
                                                                                                          child: Checkbox(
                                                                                                            value: _model.checkboxsolicitudValue ??= containerform9Formulario9Row?.idForm9 == null ? false : containerform9Formulario9Row!.solicitudMedida!,
                                                                                                            onChanged: (widget.usuariorol?.rolId != 1)
                                                                                                                ? null
                                                                                                                : (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxsolicitudValue = newValue!);
                                                                                                                  },
                                                                                                            side: BorderSide(
                                                                                                              width: 2,
                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                            ),
                                                                                                            activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                            checkColor: (widget.usuariorol?.rolId != 1) ? null : FlutterFlowTheme.of(context).info,
                                                                                                          ),
                                                                                                        ),
                                                                                                        Text(
                                                                                                          'Solicitud de medida excepcional',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                                fontSize: 18.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Divider(
                                                                                                    thickness: 2.0,
                                                                                                    indent: 10.0,
                                                                                                    endIndent: 10.0,
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Fecha de elevacion a direccion general',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                _model.datePicked1?.toString(),
                                                                                                                'No tiene fecha de elevacion nueva',
                                                                                                              ),
                                                                                                              textAlign: TextAlign.start,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                          child: FFButtonWidget(
                                                                                                            onPressed: () async {
                                                                                                              final _datePicked1Date = await showDatePicker(
                                                                                                                context: context,
                                                                                                                initialDate: getCurrentTimestamp,
                                                                                                                firstDate: DateTime(1900),
                                                                                                                lastDate: DateTime(2050),
                                                                                                                builder: (context, child) {
                                                                                                                  return wrapInMaterialDatePickerTheme(
                                                                                                                    context,
                                                                                                                    child!,
                                                                                                                    headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                    headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                    headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                                          fontSize: 32.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                        ),
                                                                                                                    pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                    pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                    selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                    selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                    actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                    iconSize: 24.0,
                                                                                                                  );
                                                                                                                },
                                                                                                              );

                                                                                                              if (_datePicked1Date != null) {
                                                                                                                safeSetState(() {
                                                                                                                  _model.datePicked1 = DateTime(
                                                                                                                    _datePicked1Date.year,
                                                                                                                    _datePicked1Date.month,
                                                                                                                    _datePicked1Date.day,
                                                                                                                  );
                                                                                                                });
                                                                                                              } else if (_model.datePicked1 != null) {
                                                                                                                safeSetState(() {
                                                                                                                  _model.datePicked1 = getCurrentTimestamp;
                                                                                                                });
                                                                                                              }
                                                                                                            },
                                                                                                            text: valueOrDefault<String>(
                                                                                                              dateTimeFormat(
                                                                                                                "d/M/y",
                                                                                                                containerform9Formulario9Row?.fechasolicitud,
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              ),
                                                                                                              'Fec de elevacion',
                                                                                                            ),
                                                                                                            options: FFButtonOptions(
                                                                                                              height: 40.0,
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    color: Colors.white,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                              elevation: 3.0,
                                                                                                              borderSide: BorderSide(
                                                                                                                color: Colors.transparent,
                                                                                                                width: 1.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      if (widget.usuariorol?.rolId == 1)
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'Fecha de solicitud a SENAF',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Expanded(
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      dateTimeFormat(
                                                                                                                        "d/M/y",
                                                                                                                        _model.datePicked2,
                                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                                      ),
                                                                                                                      'No tiene fecha de solicitud nueva',
                                                                                                                    ),
                                                                                                                    textAlign: TextAlign.start,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                                child: FFButtonWidget(
                                                                                                                  onPressed: (widget.usuariorol?.rolId != 1)
                                                                                                                      ? null
                                                                                                                      : () async {
                                                                                                                          final _datePicked2Date = await showDatePicker(
                                                                                                                            context: context,
                                                                                                                            initialDate: getCurrentTimestamp,
                                                                                                                            firstDate: DateTime(1900),
                                                                                                                            lastDate: DateTime(2050),
                                                                                                                            builder: (context, child) {
                                                                                                                              return wrapInMaterialDatePickerTheme(
                                                                                                                                context,
                                                                                                                                child!,
                                                                                                                                headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                                headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                                headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                                                      fontSize: 32.0,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                                pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                                selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                                actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                iconSize: 24.0,
                                                                                                                              );
                                                                                                                            },
                                                                                                                          );

                                                                                                                          if (_datePicked2Date != null) {
                                                                                                                            safeSetState(() {
                                                                                                                              _model.datePicked2 = DateTime(
                                                                                                                                _datePicked2Date.year,
                                                                                                                                _datePicked2Date.month,
                                                                                                                                _datePicked2Date.day,
                                                                                                                              );
                                                                                                                            });
                                                                                                                          } else if (_model.datePicked2 != null) {
                                                                                                                            safeSetState(() {
                                                                                                                              _model.datePicked2 = getCurrentTimestamp;
                                                                                                                            });
                                                                                                                          }
                                                                                                                        },
                                                                                                                  text: valueOrDefault<String>(
                                                                                                                    dateTimeFormat(
                                                                                                                      "d/M/y",
                                                                                                                      containerform9Formulario9Row?.fechasolicitudsenaf,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ),
                                                                                                                    'Fecha de solicitud senaf',
                                                                                                                  ),
                                                                                                                  options: FFButtonOptions(
                                                                                                                    height: 40.0,
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                                          color: Colors.white,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                    elevation: 3.0,
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: Colors.transparent,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      if (widget.usuariorol?.rolId == 1)
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'Fecha reiteracion solicitud',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Expanded(
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      dateTimeFormat(
                                                                                                                        "d/M/y",
                                                                                                                        _model.datePicked3,
                                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                                      ),
                                                                                                                      'No tiene fecha de reiteracion nueva',
                                                                                                                    ),
                                                                                                                    textAlign: TextAlign.start,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                                child: FFButtonWidget(
                                                                                                                  onPressed: (widget.usuariorol?.rolId != 1)
                                                                                                                      ? null
                                                                                                                      : () async {
                                                                                                                          final _datePicked3Date = await showDatePicker(
                                                                                                                            context: context,
                                                                                                                            initialDate: getCurrentTimestamp,
                                                                                                                            firstDate: DateTime(1900),
                                                                                                                            lastDate: DateTime(2050),
                                                                                                                            builder: (context, child) {
                                                                                                                              return wrapInMaterialDatePickerTheme(
                                                                                                                                context,
                                                                                                                                child!,
                                                                                                                                headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                                headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                                headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                                                      fontSize: 32.0,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                                pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                                selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                                actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                iconSize: 24.0,
                                                                                                                              );
                                                                                                                            },
                                                                                                                          );

                                                                                                                          if (_datePicked3Date != null) {
                                                                                                                            safeSetState(() {
                                                                                                                              _model.datePicked3 = DateTime(
                                                                                                                                _datePicked3Date.year,
                                                                                                                                _datePicked3Date.month,
                                                                                                                                _datePicked3Date.day,
                                                                                                                              );
                                                                                                                            });
                                                                                                                          } else if (_model.datePicked3 != null) {
                                                                                                                            safeSetState(() {
                                                                                                                              _model.datePicked3 = getCurrentTimestamp;
                                                                                                                            });
                                                                                                                          }
                                                                                                                        },
                                                                                                                  text: valueOrDefault<String>(
                                                                                                                    dateTimeFormat(
                                                                                                                      "d/M/y",
                                                                                                                      containerform9Formulario9Row?.reiteracionFecha,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    ),
                                                                                                                    'Fec de reiteracion',
                                                                                                                  ),
                                                                                                                  options: FFButtonOptions(
                                                                                                                    height: 40.0,
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                                          color: Colors.white,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
                                                                                                                    elevation: 3.0,
                                                                                                                    borderSide: BorderSide(
                                                                                                                      color: Colors.transparent,
                                                                                                                      width: 1.0,
                                                                                                                    ),
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                    ].divide(SizedBox(height: 10.0)),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                    child: TextFormField(
                                                                                                      controller: _model.textFieldmotivosolicitudTextController ??= TextEditingController(
                                                                                                        text: containerform9Formulario9Row?.motivosolicitud,
                                                                                                      ),
                                                                                                      focusNode: _model.textFieldmotivosolicitudFocusNode,
                                                                                                      autofocus: false,
                                                                                                      obscureText: false,
                                                                                                      decoration: InputDecoration(
                                                                                                        labelText: 'Sintesis/motivo pedido ME',
                                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        enabledBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        focusedBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        errorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                      validator: _model.textFieldmotivosolicitudTextControllerValidator.asValidator(context),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 5.0,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                ),
                                                                                              ),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                    child: Container(
                                                                                                      width: 100.0,
                                                                                                      height: 10.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: () {
                                                                                                          if (containerform9Formulario9Row?.idForm9 == null) {
                                                                                                            return Color(0x00000000);
                                                                                                          } else if (containerform9Formulario9Row!.evaluacionMedida!) {
                                                                                                            return FlutterFlowTheme.of(context).secondary;
                                                                                                          } else {
                                                                                                            return FlutterFlowTheme.of(context).warning;
                                                                                                          }
                                                                                                        }(),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(0.0),
                                                                                                          bottomRight: Radius.circular(0.0),
                                                                                                          topLeft: Radius.circular(10.0),
                                                                                                          topRight: Radius.circular(0.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Theme(
                                                                                                          data: ThemeData(
                                                                                                            checkboxTheme: CheckboxThemeData(
                                                                                                              visualDensity: VisualDensity.compact,
                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                              shape: CircleBorder(),
                                                                                                            ),
                                                                                                            unselectedWidgetColor: FlutterFlowTheme.of(context).error,
                                                                                                          ),
                                                                                                          child: Checkbox(
                                                                                                            value: _model.checkboxevaluacionValue ??= containerform9Formulario9Row?.idForm9 == null ? false : containerform9Formulario9Row!.evaluacionMedida!,
                                                                                                            onChanged: (widget.usuariorol?.rolId != 1)
                                                                                                                ? null
                                                                                                                : (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxevaluacionValue = newValue!);
                                                                                                                  },
                                                                                                            side: BorderSide(
                                                                                                              width: 2,
                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                            ),
                                                                                                            activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                            checkColor: (widget.usuariorol?.rolId != 1) ? null : FlutterFlowTheme.of(context).info,
                                                                                                          ),
                                                                                                        ),
                                                                                                        Text(
                                                                                                          'Valoracion para adopcion para MPE',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                                fontSize: 18.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 5.0,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                ),
                                                                                              ),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                    child: Container(
                                                                                                      width: 100.0,
                                                                                                      height: 10.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: () {
                                                                                                          if (containerform9Formulario9Row?.idForm9 == null) {
                                                                                                            return Color(0x00000000);
                                                                                                          } else if (containerform9Formulario9Row!.medidaAdoptada!) {
                                                                                                            return FlutterFlowTheme.of(context).secondary;
                                                                                                          } else {
                                                                                                            return FlutterFlowTheme.of(context).warning;
                                                                                                          }
                                                                                                        }(),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(0.0),
                                                                                                          bottomRight: Radius.circular(0.0),
                                                                                                          topLeft: Radius.circular(10.0),
                                                                                                          topRight: Radius.circular(0.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Theme(
                                                                                                          data: ThemeData(
                                                                                                            checkboxTheme: CheckboxThemeData(
                                                                                                              visualDensity: VisualDensity.compact,
                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                              shape: CircleBorder(),
                                                                                                            ),
                                                                                                            unselectedWidgetColor: FlutterFlowTheme.of(context).error,
                                                                                                          ),
                                                                                                          child: Checkbox(
                                                                                                            value: _model.checkboxadoptadaValue ??= containerform9Formulario9Row?.idForm9 == null ? false : containerform9Formulario9Row!.medidaAdoptada!,
                                                                                                            onChanged: (widget.usuariorol?.rolId != 1)
                                                                                                                ? null
                                                                                                                : (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxadoptadaValue = newValue!);
                                                                                                                  },
                                                                                                            side: BorderSide(
                                                                                                              width: 2,
                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                            ),
                                                                                                            activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                            checkColor: (widget.usuariorol?.rolId != 1) ? null : FlutterFlowTheme.of(context).info,
                                                                                                          ),
                                                                                                        ),
                                                                                                        Text(
                                                                                                          'Medida excepcional adoptada',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                                fontSize: 18.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Divider(
                                                                                                    thickness: 2.0,
                                                                                                    indent: 10.0,
                                                                                                    endIndent: 10.0,
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Fecha medida adoptada',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                dateTimeFormat(
                                                                                                                  "d/M/y",
                                                                                                                  _model.datePicked4,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                ),
                                                                                                                'No tiene fecha de adopcion nueva',
                                                                                                              ),
                                                                                                              textAlign: TextAlign.start,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                          child: FFButtonWidget(
                                                                                                            onPressed: (widget.usuariorol?.rolId != 1)
                                                                                                                ? null
                                                                                                                : () async {
                                                                                                                    final _datePicked4Date = await showDatePicker(
                                                                                                                      context: context,
                                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                                      firstDate: DateTime(1900),
                                                                                                                      lastDate: DateTime(2050),
                                                                                                                      builder: (context, child) {
                                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                                          context,
                                                                                                                          child!,
                                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                                                fontSize: 32.0,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                              ),
                                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          iconSize: 24.0,
                                                                                                                        );
                                                                                                                      },
                                                                                                                    );

                                                                                                                    if (_datePicked4Date != null) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.datePicked4 = DateTime(
                                                                                                                          _datePicked4Date.year,
                                                                                                                          _datePicked4Date.month,
                                                                                                                          _datePicked4Date.day,
                                                                                                                        );
                                                                                                                      });
                                                                                                                    } else if (_model.datePicked4 != null) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.datePicked4 = getCurrentTimestamp;
                                                                                                                      });
                                                                                                                    }
                                                                                                                  },
                                                                                                            text: valueOrDefault<String>(
                                                                                                              dateTimeFormat(
                                                                                                                "d/M/y",
                                                                                                                containerform9Formulario9Row?.fecMedidaAdoptada,
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              ),
                                                                                                              'Fec de adopcion medida',
                                                                                                            ),
                                                                                                            options: FFButtonOptions(
                                                                                                              height: 40.0,
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    color: Colors.white,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                              elevation: 3.0,
                                                                                                              borderSide: BorderSide(
                                                                                                                color: Colors.transparent,
                                                                                                                width: 1.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                              disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                    child: TextFormField(
                                                                                                      controller: _model.textFieldobservacionesdemedidaadoptadaTextController,
                                                                                                      focusNode: _model.textFieldobservacionesdemedidaadoptadaFocusNode,
                                                                                                      autofocus: false,
                                                                                                      readOnly: widget.usuariorol?.rolId != 1,
                                                                                                      obscureText: false,
                                                                                                      decoration: InputDecoration(
                                                                                                        labelText: 'Observaciones de la adopcion  de la medida de excepcion',
                                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        enabledBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        focusedBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        errorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                      validator: _model.textFieldobservacionesdemedidaadoptadaTextControllerValidator.asValidator(context),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 5.0,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                ),
                                                                                              ),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                    child: Container(
                                                                                                      width: 100.0,
                                                                                                      height: 10.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: () {
                                                                                                          if (containerform9Formulario9Row?.idForm9 == null) {
                                                                                                            return Color(0x00000000);
                                                                                                          } else if (containerform9Formulario9Row!.medidaRechazada!) {
                                                                                                            return FlutterFlowTheme.of(context).secondary;
                                                                                                          } else {
                                                                                                            return FlutterFlowTheme.of(context).warning;
                                                                                                          }
                                                                                                        }(),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(0.0),
                                                                                                          bottomRight: Radius.circular(0.0),
                                                                                                          topLeft: Radius.circular(10.0),
                                                                                                          topRight: Radius.circular(0.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Theme(
                                                                                                          data: ThemeData(
                                                                                                            checkboxTheme: CheckboxThemeData(
                                                                                                              visualDensity: VisualDensity.compact,
                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                              shape: CircleBorder(),
                                                                                                            ),
                                                                                                            unselectedWidgetColor: FlutterFlowTheme.of(context).error,
                                                                                                          ),
                                                                                                          child: Checkbox(
                                                                                                            value: _model.checkboxrechazadaValue ??= containerform9Formulario9Row?.idForm9 == null ? false : containerform9Formulario9Row!.medidaRechazada!,
                                                                                                            onChanged: (widget.usuariorol?.rolId != 1)
                                                                                                                ? null
                                                                                                                : (newValue) async {
                                                                                                                    safeSetState(() => _model.checkboxrechazadaValue = newValue!);
                                                                                                                  },
                                                                                                            side: BorderSide(
                                                                                                              width: 2,
                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                            ),
                                                                                                            activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                            checkColor: (widget.usuariorol?.rolId != 1) ? null : FlutterFlowTheme.of(context).info,
                                                                                                          ),
                                                                                                        ),
                                                                                                        Text(
                                                                                                          'Medida excepcional rechazada',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                                fontSize: 18.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Divider(
                                                                                                    thickness: 2.0,
                                                                                                    indent: 10.0,
                                                                                                    endIndent: 10.0,
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Fecha medida rechazada',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                dateTimeFormat(
                                                                                                                  "d/M/y",
                                                                                                                  _model.datePicked5,
                                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                                ),
                                                                                                                'No tiene fecha de rechazo nueva',
                                                                                                              ),
                                                                                                              textAlign: TextAlign.start,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                          child: FFButtonWidget(
                                                                                                            onPressed: (widget.usuariorol?.rolId != 1)
                                                                                                                ? null
                                                                                                                : () async {
                                                                                                                    final _datePicked5Date = await showDatePicker(
                                                                                                                      context: context,
                                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                                      firstDate: DateTime(1900),
                                                                                                                      lastDate: DateTime(2050),
                                                                                                                      builder: (context, child) {
                                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                                          context,
                                                                                                                          child!,
                                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                                                fontSize: 32.0,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                              ),
                                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          iconSize: 24.0,
                                                                                                                        );
                                                                                                                      },
                                                                                                                    );

                                                                                                                    if (_datePicked5Date != null) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.datePicked5 = DateTime(
                                                                                                                          _datePicked5Date.year,
                                                                                                                          _datePicked5Date.month,
                                                                                                                          _datePicked5Date.day,
                                                                                                                        );
                                                                                                                      });
                                                                                                                    } else if (_model.datePicked5 != null) {
                                                                                                                      safeSetState(() {
                                                                                                                        _model.datePicked5 = getCurrentTimestamp;
                                                                                                                      });
                                                                                                                    }
                                                                                                                  },
                                                                                                            text: valueOrDefault<String>(
                                                                                                              dateTimeFormat(
                                                                                                                "d/M/y",
                                                                                                                containerform9Formulario9Row?.fechaMedidaRechazada,
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              ),
                                                                                                              'Fec de rechazo',
                                                                                                            ),
                                                                                                            options: FFButtonOptions(
                                                                                                              height: 40.0,
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    color: Colors.white,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                              elevation: 3.0,
                                                                                                              borderSide: BorderSide(
                                                                                                                color: Colors.transparent,
                                                                                                                width: 1.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                              disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                    child: TextFormField(
                                                                                                      controller: _model.textFieldmotivorechazoTextController ??= TextEditingController(
                                                                                                        text: containerform9Formulario9Row?.motivoRechazo,
                                                                                                      ),
                                                                                                      focusNode: _model.textFieldmotivorechazoFocusNode,
                                                                                                      autofocus: false,
                                                                                                      readOnly: widget.usuariorol?.rolId != 1,
                                                                                                      obscureText: false,
                                                                                                      decoration: InputDecoration(
                                                                                                        labelText: 'Motivo de rechazo de la medida de protección',
                                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                        enabledBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        focusedBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        errorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                      validator: _model.textFieldmotivorechazoTextControllerValidator.asValidator(context),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(SizedBox(height: 10.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ListView(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceAround,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                              child: FutureBuilder<List<DocumentosadjuntosRow>>(
                                                                                future: DocumentosadjuntosTable().querySingleRow(
                                                                                  queryFn: (q) => q
                                                                                      .eqOrNull(
                                                                                        'idingresodoc',
                                                                                        widget.ingrow?.id,
                                                                                      )
                                                                                      .eqOrNull(
                                                                                        'tipodocumento',
                                                                                        'Formulario Solicitud de medida excepcional',
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
                                                                                  List<DocumentosadjuntosRow> buttonDocumentosadjuntosRowList = snapshot.data!;

                                                                                  final buttonDocumentosadjuntosRow = buttonDocumentosadjuntosRowList.isNotEmpty ? buttonDocumentosadjuntosRowList.first : null;

                                                                                  return FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                        return;
                                                                                      }
                                                                                      if (_model.dropDowncausaValue == null) {
                                                                                        return;
                                                                                      }
                                                                                      if (_model.datePicked1 == null) {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('fecha obligatoria'),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                    child: Text('Ok'),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                      if (containerform9Formulario9Row?.idForm9 == null) {
                                                                                        _model.form9 = await Formulario9Table().insert({
                                                                                          'idIngreso': widget.ingrow?.id,
                                                                                          'idExpediente': widget.expediente?.id,
                                                                                          'fecha': supaSerialize<DateTime>(_model.datePicked1),
                                                                                          'causa': _model.dropDowncausaValue,
                                                                                          'observacioncese': _model.textFieldObsTextController.text,
                                                                                          'solicitudMedida': true,
                                                                                          'fechasolicitud': supaSerialize<DateTime>(_model.datePicked1),
                                                                                          'evaluacionMedida': false,
                                                                                          'MedidaAdoptada': false,
                                                                                          'MedidaRechazada': false,
                                                                                          'FechaMedidaRechazada': supaSerialize<DateTime>(_model.datePicked5),
                                                                                          'MotivoRechazo': _model.textFieldmotivorechazoTextController.text,
                                                                                          'acciones': _model.textController1.text,
                                                                                          'reiteracionFecha': supaSerialize<DateTime>(_model.datePicked3),
                                                                                          'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                          'iduser': currentUserUid,
                                                                                          'fechasolicitudsenaf': supaSerialize<DateTime>(_model.datePicked2),
                                                                                          'agotadomedida': _model.radioButtoninscriptoagotadoValue,
                                                                                          'riesgovida': _model.radioButtoninscriptopermanenciafamiliaValue,
                                                                                          'fundamentacionsolicitud': _model.textController4.text,
                                                                                          'FecMedidaAdoptada': supaSerialize<DateTime>(_model.datePicked4),
                                                                                          'estado': 'Cerrado',
                                                                                          'reseñadelasitu': _model.textController3.text,
                                                                                          'motivosolicitud': _model.textFieldmotivosolicitudTextController.text,
                                                                                          'observacionesmedidaadoptada': _model.textFieldobservacionesdemedidaadoptadaTextController.text,
                                                                                        });
                                                                                        await IngresosTable().update(
                                                                                          data: {
                                                                                            'form9': true,
                                                                                            'form9completo': true,
                                                                                            'fechacierre': supaSerialize<DateTime>(_model.datePicked1),
                                                                                            'Motivocierre': _model.dropDowncausaValue,
                                                                                            'observacioncierre': _model.textFieldObsTextController.text,
                                                                                            'Estado': 'Cerrado',
                                                                                            'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                          },
                                                                                          matchingRows: (rows) => rows.eqOrNull(
                                                                                            'id',
                                                                                            widget.ingrow?.id,
                                                                                          ),
                                                                                        );
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Carga correcta'),
                                                                                                content: Text('La informacion se guardo correctamente!!'),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                    child: Text('Ok'),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                        safeSetState(() => _model.requestCompleter2 = null);
                                                                                        await _model.waitForRequestCompleted2();
                                                                                        safeSetState(() => _model.requestCompleter1 = null);
                                                                                        await _model.waitForRequestCompleted1();
                                                                                        if (_model.form9?.causa == 'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)') {
                                                                                          _model.apiResultznwinfsenaf1 = await CrearCaratulaCall.call(
                                                                                            idexp: widget.expediente?.id,
                                                                                            tipo: buttonDocumentosadjuntosRow?.tipodocumento,
                                                                                            editar: 0,
                                                                                            idigreso: widget.ingrow?.id,
                                                                                            carpeta: containeringresoIngresosRow?.idcarpeta,
                                                                                            iddocumentoadjunto: buttonDocumentosadjuntosRow?.id.toString(),
                                                                                          );

                                                                                          if ((_model.apiResultznwinfsenaf1?.succeeded ?? true)) {
                                                                                            await Future.delayed(const Duration(milliseconds: 5000));
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return WebViewAware(
                                                                                                  child: AlertDialog(
                                                                                                    title: Text('Se ejecuto correctamente!'),
                                                                                                    content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                        child: Text('Ok'),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          }
                                                                                        } else {
                                                                                          Navigator.pop(context);
                                                                                        }
                                                                                      } else {
                                                                                        await Formulario9Table().update(
                                                                                          data: {
                                                                                            'idIngreso': widget.ingrow?.id,
                                                                                            'idExpediente': widget.expediente?.id,
                                                                                            'fecha': supaSerialize<DateTime>(_model.datePicked1 != null ? _model.datePicked1 : containerform9Formulario9Row?.fecha),
                                                                                            'causa': _model.dropDowncausaValue,
                                                                                            'observacioncese': _model.textFieldObsTextController.text,
                                                                                            'solicitudMedida': _model.checkboxsolicitudValue,
                                                                                            'fechasolicitud': supaSerialize<DateTime>(_model.datePicked1 != null ? _model.datePicked1 : containerform9Formulario9Row?.fechasolicitud),
                                                                                            'evaluacionMedida': _model.checkboxevaluacionValue,
                                                                                            'MedidaAdoptada': _model.checkboxadoptadaValue,
                                                                                            'MedidaRechazada': _model.checkboxrechazadaValue,
                                                                                            'FechaMedidaRechazada': supaSerialize<DateTime>(_model.datePicked5 != null ? _model.datePicked5 : containerform9Formulario9Row?.fechaMedidaRechazada),
                                                                                            'MotivoRechazo': _model.textFieldobservacionesdemedidaadoptadaTextController.text,
                                                                                            'acciones': _model.textController1.text,
                                                                                            'reiteracionFecha': supaSerialize<DateTime>(_model.datePicked3 != null ? _model.datePicked3 : containerform9Formulario9Row?.reiteracionFecha),
                                                                                            'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                            'iduser': currentUserUid,
                                                                                            'fechasolicitudsenaf': supaSerialize<DateTime>(_model.datePicked2 != null ? _model.datePicked2 : containerform9Formulario9Row?.fechasolicitudsenaf),
                                                                                            'agotadomedida': _model.radioButtoninscriptoagotadoValue,
                                                                                            'riesgovida': _model.radioButtoninscriptopermanenciafamiliaValue,
                                                                                            'fundamentacionsolicitud': _model.textController4.text,
                                                                                            'FecMedidaAdoptada': supaSerialize<DateTime>(_model.datePicked4 != null ? _model.datePicked4 : containerform9Formulario9Row?.fecMedidaAdoptada),
                                                                                            'reseñadelasitu': _model.textController3.text,
                                                                                            'motivosolicitud': _model.textFieldmotivosolicitudTextController.text,
                                                                                            'observacionesmedidaadoptada': _model.textFieldobservacionesdemedidaadoptadaTextController.text,
                                                                                          },
                                                                                          matchingRows: (rows) => rows.eqOrNull(
                                                                                            'idIngreso',
                                                                                            widget.ingrow?.id,
                                                                                          ),
                                                                                        );
                                                                                        safeSetState(() => _model.requestCompleter2 = null);
                                                                                        await _model.waitForRequestCompleted2();
                                                                                        safeSetState(() => _model.requestCompleter1 = null);
                                                                                        await _model.waitForRequestCompleted1();
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Se guardo correctamente la informacion'),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                    child: Text('Ok'),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                        _model.apiResultznwinfsenaf2 = await CrearCaratulaCall.call(
                                                                                          idexp: widget.expediente?.id,
                                                                                          tipo: buttonDocumentosadjuntosRow?.tipodocumento,
                                                                                          editar: 1,
                                                                                          idigreso: widget.ingrow?.id,
                                                                                          carpeta: containeringresoIngresosRow?.idcarpeta,
                                                                                          iddocumentoadjunto: buttonDocumentosadjuntosRow?.id.toString(),
                                                                                          idDocedit: buttonDocumentosadjuntosRow?.iddocdrive,
                                                                                        );

                                                                                        if ((_model.apiResultznwinfsenaf2?.succeeded ?? true)) {
                                                                                          await Future.delayed(const Duration(milliseconds: 5000));
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (alertDialogContext) {
                                                                                              return WebViewAware(
                                                                                                child: AlertDialog(
                                                                                                  title: Text('Se ejecuto correctamente!'),
                                                                                                  content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                      child: Text('Ok'),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          );
                                                                                          safeSetState(() => _model.requestCompleter1 = null);
                                                                                          await _model.waitForRequestCompleted1();
                                                                                        }
                                                                                      }

                                                                                      safeSetState(() {});
                                                                                    },
                                                                                    text: 'Guardar',
                                                                                    icon: Icon(
                                                                                      Icons.save,
                                                                                      size: 15.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      width: 250.0,
                                                                                      height: 40.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).success,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Noto Sans JP',
                                                                                            color: Colors.white,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      elevation: 2.0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(20.0),
                                                                                      hoverElevation: 4.0,
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          if (containerform9Formulario9Row?.linksolicitud != null &&
                                                                              containerform9Formulario9Row?.linksolicitud != '')
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  context.pushNamed(
                                                                                    InformesenafWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'link': serializeParam(
                                                                                        containerform9Formulario9Row?.linksolicitud,
                                                                                        ParamType.String,
                                                                                      ),
                                                                                      'form9row': serializeParam(
                                                                                        containerform9Formulario9Row,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                      'exprow': serializeParam(
                                                                                        widget.expediente,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                      'ingreso': serializeParam(
                                                                                        widget.ingrow,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                      'usuariorow': serializeParam(
                                                                                        widget.usuariorow,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                text: 'Ver informe',
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Noto Sans JP',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(25.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ]
                                                                    .divide(SizedBox(
                                                                        height:
                                                                            8.0))
                                                                    .around(SizedBox(
                                                                        height:
                                                                            8.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
