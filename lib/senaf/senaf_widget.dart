import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/adjuntasolicitudsenaffirmada_widget.dart';
import '/components/comentariosolicitudsenaf_widget.dart';
import '/components/enviarmail_widget.dart';
import '/components/listadodeadjuntos_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'senaf_model.dart';
export 'senaf_model.dart';

class SenafWidget extends StatefulWidget {
  const SenafWidget({
    super.key,
    required this.idexp,
    required this.idingreso,
    required this.idnnya,
    required this.idrol,
    required this.rol,
    required this.spd,
  });

  final int? idexp;
  final int? idingreso;
  final int? idnnya;
  final int? idrol;
  final String? rol;
  final String? spd;

  static String routeName = 'Senaf';
  static String routePath = '/senaf';

  @override
  State<SenafWidget> createState() => _SenafWidgetState();
}

class _SenafWidgetState extends State<SenafWidget>
    with TickerProviderStateMixin {
  late SenafModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SenafModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.grupo = await GrupoConvivienteTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'idingreso',
          widget.idingreso,
        ),
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldObsFocusNode ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetHistorialCall.call(
        token: currentJwtToken,
        pIdIngreso: widget.idingreso,
        pLimit: 20,
        pOffset: 0,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        final senafGetHistorialResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                'Cese de la intervencion ',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.notoSansJp(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
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
                      stackVistaExpedientesUltimoEstadoRowList = snapshot.data!;

                  final stackVistaExpedientesUltimoEstadoRow =
                      stackVistaExpedientesUltimoEstadoRowList.isNotEmpty
                          ? stackVistaExpedientesUltimoEstadoRowList.first
                          : null;

                  return Stack(
                    children: [
                      FutureBuilder<List<Formulario9Row>>(
                        future: (_model.requestCompleter3 ??=
                                Completer<List<Formulario9Row>>()
                                  ..complete(Formulario9Table().querySingleRow(
                                    queryFn: (q) => q.eqOrNull(
                                      'idIngreso',
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
                          List<Formulario9Row>
                              containerform9Formulario9RowList = snapshot.data!;

                          final containerform9Formulario9Row =
                              containerform9Formulario9RowList.isNotEmpty
                                  ? containerform9Formulario9RowList.first
                                  : null;

                          return Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: FutureBuilder<List<IngresosRow>>(
                              future: IngresosTable().querySingleRow(
                                queryFn: (q) => q.eqOrNull(
                                  'id',
                                  widget.idingreso,
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<IngresosRow>
                                    containeringresoIngresosRowList =
                                    snapshot.data!;

                                final containeringresoIngresosRow =
                                    containeringresoIngresosRowList.isNotEmpty
                                        ? containeringresoIngresosRowList.first
                                        : null;

                                return Container(
                                  decoration: BoxDecoration(),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: RcpCeseCall.call(
                                      token: currentJwtToken,
                                      pIdIngreso: widget.idingreso,
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
                                      final containerRcpCeseResponse =
                                          snapshot.data!;

                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 300.0,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.296,
                                                        height: 300.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final grupoconvivientetabla =
                                                                CeseStruct.maybeFromMap(
                                                                            containerRcpCeseResponse.jsonBody)
                                                                        ?.grupoConvivienteCeseList
                                                                        .toList() ??
                                                                    [];

                                                            return FlutterFlowDataTable<
                                                                GrupoConvivienteCeseListStruct>(
                                                              controller: _model
                                                                  .paginatedDataTableController,
                                                              data:
                                                                  grupoconvivientetabla,
                                                              columnsBuilder:
                                                                  (onSortChanged) =>
                                                                      [
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Text(
                                                                      'Nombres',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.notoSansJp(
                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Text(
                                                                      'Apellidos',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.notoSansJp(
                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Text(
                                                                      'Vinculo',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.notoSansJp(
                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                DataColumn2(
                                                                  label:
                                                                      DefaultTextStyle
                                                                          .merge(
                                                                    softWrap:
                                                                        true,
                                                                    child: Text(
                                                                      'convivencia',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.notoSansJp(
                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelLarge.fontStyle,
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
                                                                color:
                                                                    WidgetStateProperty
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
                                                                    valueOrDefault<
                                                                        String>(
                                                                      grupoconvivientetablaItem
                                                                          .nombre,
                                                                      '0',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.notoSansJp(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      grupoconvivientetablaItem
                                                                          .apellido,
                                                                      '0',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.notoSansJp(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      grupoconvivientetablaItem
                                                                          .dni
                                                                          .toString(),
                                                                      '0',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.notoSansJp(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      grupoconvivientetablaItem
                                                                          .conviviente,
                                                                      '0',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.notoSansJp(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ]
                                                                    .map((c) =>
                                                                        DataCell(
                                                                            c))
                                                                    .toList(),
                                                              ),
                                                              paginated: true,
                                                              selectable: false,
                                                              hidePaginator:
                                                                  false,
                                                              showFirstLastButtons:
                                                                  false,
                                                              headingRowHeight:
                                                                  56.0,
                                                              dataRowHeight:
                                                                  48.0,
                                                              columnSpacing:
                                                                  20.0,
                                                              headingRowColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              addHorizontalDivider:
                                                                  true,
                                                              addTopAndBottomDivider:
                                                                  false,
                                                              hideDefaultHorizontalDivider:
                                                                  true,
                                                              horizontalDividerColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              horizontalDividerThickness:
                                                                  1.0,
                                                              addVerticalDivider:
                                                                  false,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.3,
                                                          height: 500.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                          ),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              7.0,
                                                                          color:
                                                                              Color(0x2F1D2429),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            3.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          12.0,
                                                                          16.0,
                                                                          12.0),
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Informe sintesis',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: Color(0xFF39D2C0),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                            Divider(
                                                                              height: 16.0,
                                                                              thickness: 2.0,
                                                                              color: Color(0xFFF1F4F8),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Profesionales intervinientes',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF14181B),
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: SelectionArea(
                                                                                      child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form5CeseRow.profesionales,
                                                                                      'Sin dato',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                  )),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Divider(
                                                                              thickness: 2.0,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            Divider(
                                                                              thickness: 2.0,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Fundamento',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF14181B),
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: SelectionArea(
                                                                                      child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form5CeseRow.fundamento,
                                                                                      'Sin dato',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                  )),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Divider(
                                                                              thickness: 2.0,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Indicadores de riesgo',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF14181B),
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: SelectionArea(
                                                                                      child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form5CeseRow.indicadores,
                                                                                      'Sin dato',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                  )),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Divider(
                                                                              thickness: 2.0,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Valoracion integral',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF14181B),
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: SelectionArea(
                                                                                      child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form5CeseRow.valoracionIntegral,
                                                                                      'Sin dato',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                  )),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Divider(
                                                                              thickness: 2.0,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Propuestas',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF14181B),
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: SelectionArea(
                                                                                      child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form5CeseRow.propuestaMedida,
                                                                                      'Sin dato',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
                                                                  onPressed:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      Formulario5PaginaWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'idingreso':
                                                                            serializeParam(
                                                                          widget
                                                                              .idingreso,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'edit':
                                                                            serializeParam(
                                                                          true,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'idnnya':
                                                                            serializeParam(
                                                                          0,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'idexp':
                                                                            serializeParam(
                                                                          widget
                                                                              .idexp,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'idrol':
                                                                            serializeParam(
                                                                          widget
                                                                              .idrol,
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                        'rol':
                                                                            serializeParam(
                                                                          widget
                                                                              .rol,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'spd1':
                                                                            serializeParam(
                                                                          widget
                                                                              .spd,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  text:
                                                                      'Ir a Informe sintesis',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.notoSansJp(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ]
                                                                  .divide(SizedBox(
                                                                      height:
                                                                          10.0))
                                                                  .around(SizedBox(
                                                                      height:
                                                                          10.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 10.0)),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment(
                                                                      0.0, 0),
                                                              child:
                                                                  FlutterFlowButtonTabBar(
                                                                useToggleButtonStyle:
                                                                    true,
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .notoSansJp(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .fontStyle,
                                                                    ),
                                                                unselectedLabelStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.notoSansJp(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontStyle,
                                                                        ),
                                                                labelColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                unselectedLabelColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                unselectedBackgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                borderWidth:
                                                                    2.0,
                                                                borderRadius:
                                                                    8.0,
                                                                elevation: 0.0,
                                                                buttonMargin:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                tabs: [
                                                                  Tab(
                                                                    text:
                                                                        'Formulario Cese',
                                                                  ),
                                                                  Tab(
                                                                    text:
                                                                        'Historial',
                                                                  ),
                                                                  Tab(
                                                                    text:
                                                                        'Seguimiento MPE',
                                                                  ),
                                                                ],
                                                                controller: _model
                                                                    .tabBarController,
                                                                onTap:
                                                                    (i) async {
                                                                  [
                                                                    () async {},
                                                                    () async {},
                                                                    () async {}
                                                                  ][i]();
                                                                },
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: TabBarView(
                                                                controller: _model
                                                                    .tabBarController,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    child:
                                                                        Container(
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            800.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Form(
                                                                        key: _model
                                                                            .formKey,
                                                                        autovalidateMode:
                                                                            AutovalidateMode.always,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.93,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                  children: [
                                                                                    if (((widget.idrol == 3) && (widget.idrol == 2)) || _model.editarformcese)
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1.0, 0.0),
                                                                                        child: FlutterFlowIconButton(
                                                                                          borderRadius: 8.0,
                                                                                          buttonSize: 40.0,
                                                                                          fillColor: FlutterFlowTheme.of(context).primary,
                                                                                          icon: Icon(
                                                                                            Icons.edit_rounded,
                                                                                            color: FlutterFlowTheme.of(context).info,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                          onPressed: () async {
                                                                                            _model.editarformcese = false;
                                                                                            safeSetState(() {});
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, -1.0),
                                                                                      child: Text(
                                                                                        'Cese de la intervencion ',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                      child: FlutterFlowDropDown<String>(
                                                                                        controller: _model.dropDowncausaValueController ??= FormFieldController<String>(
                                                                                          _model.dropDowncausaValue ??= CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form9CeseRow.causa,
                                                                                        ),
                                                                                        options: [
                                                                                          'Restitución integral de los derechos vulnerados',
                                                                                          'Incumplimiento reiterado de las estrategias acordadas por parte del niño/adolescente o familia u organismo/institución requerido',
                                                                                          'Fallecimiento del NNA',
                                                                                          'Otra causal que impide la continuidad de intervencion',
                                                                                          'Cambio de ciudad de residencia (Se notifica por principio de corresponsabilidad)',
                                                                                          'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)'
                                                                                        ],
                                                                                        onChanged: (val) => safeSetState(() => _model.dropDowncausaValue = val),
                                                                                        width: 300.0,
                                                                                        height: 100.0,
                                                                                        maxHeight: 250.0,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              lineHeight: 0.0,
                                                                                            ),
                                                                                        hintText: 'Causa',
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        elevation: 2.0,
                                                                                        borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                        borderWidth: 2.0,
                                                                                        borderRadius: 10.0,
                                                                                        margin: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                        disabled: _model.editarformcese,
                                                                                        isOverButton: false,
                                                                                        isSearchable: false,
                                                                                        isMultiSelect: false,
                                                                                      ),
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
                                                                                                _model.dropDowncausaValue == 'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)' ? 'Fecha de elevacion a la coordinacion zona' : 'Fecha de cese de la medida',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.notoSansJp(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  () {
                                                                                                    if (_model.datePicked1 != null) {
                                                                                                      return _model.datePicked1?.toString();
                                                                                                    } else if ((containerform9Formulario9Row?.idForm9 != null) && (_model.datePicked1 == null)) {
                                                                                                      return containerform9Formulario9Row?.fecha?.toString();
                                                                                                    } else {
                                                                                                      return 'No tiene Fecha de elevacion';
                                                                                                    }
                                                                                                  }(),
                                                                                                  'No tiene Fecha de elevacion',
                                                                                                ),
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.notoSansJp(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                            child: FFButtonWidget(
                                                                                              onPressed: _model.editarformcese
                                                                                                  ? null
                                                                                                  : () async {
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
                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                                                                  ),
                                                                                                                  fontSize: 32.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
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
                                                                                              text: CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)!.form9CeseRow.fecha,
                                                                                              options: FFButtonOptions(
                                                                                                height: 40.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      font: GoogleFonts.notoSansJp(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                      ),
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
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
                                                                                    if (_model.dropDowncausaValue == 'Incumplimiento reiterado de las estrategias acordadas por parte del niño/adolescente o familia u organismo/institución requerido')
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                        child: TextFormField(
                                                                                          controller: _model.textController1 ??= TextEditingController(
                                                                                            text: CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form9CeseRow.observacionCese,
                                                                                          ),
                                                                                          focusNode: _model.textFieldFocusNode1,
                                                                                          autofocus: true,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: 'Acciones adoptadas por el SPD en caso \"Incumplimiento reiterado\"',
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                ),
                                                                                            hintText: 'Acciones adoptadas por el SPD en caso \"Incumplimiento reiterado\"',
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
                                                                                                font: GoogleFonts.notoSansJp(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                          validator: _model.textController1Validator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    if (_model.dropDowncausaValue != 'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)')
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                        child: TextFormField(
                                                                                          controller: _model.textFieldObsTextController ??= TextEditingController(
                                                                                            text: CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form9CeseRow.observacionCese,
                                                                                          ),
                                                                                          focusNode: _model.textFieldObsFocusNode,
                                                                                          autofocus: true,
                                                                                          readOnly: _model.editarformcese,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: 'Observaciones de motivo del cese de la medida de protección',
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                ),
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
                                                                                                font: GoogleFonts.notoSansJp(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                          maxLines: 3,
                                                                                          validator: _model.textFieldObsTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    if (_model.dropDowncausaValue == 'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)')
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 5.0,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                          ),
                                                                                          child: Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                            ),
                                                                                            child: Visibility(
                                                                                              visible: _model.dropDowncausaValue == 'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)',
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                                child: SingleChildScrollView(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        decoration: BoxDecoration(),
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
                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                                    ),
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
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
                                                                                                                        font: GoogleFonts.notoSansJp(
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              FlutterFlowRadioButton(
                                                                                                                options: ['Si', 'No'].toList(),
                                                                                                                onChanged: _model.editarformcese ? null : (val) => safeSetState(() {}),
                                                                                                                controller: _model.radioButtoninscriptoagotadoValueController ??= FormFieldController<String>(valueOrDefault<String>(
                                                                                                                  containerform9Formulario9Row?.agotadomedida,
                                                                                                                  'No',
                                                                                                                )),
                                                                                                                optionHeight: 32.0,
                                                                                                                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                      font: GoogleFonts.notoSansJp(
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                      ),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                    ),
                                                                                                                selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      font: GoogleFonts.notoSansJp(
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                      ),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                                                                                                                  'b) Existr un grave riesgo para la vida e integridad psicofisica de la niñajo o adolescente, Sin haberse adoptado medidas de proteccion, se requiere urgente intervencion del tercer nivel  (art 42 y 51 de la ley say4)',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        font: GoogleFonts.notoSansJp(
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              FlutterFlowRadioButton(
                                                                                                                options: ['Si', 'No'].toList(),
                                                                                                                onChanged: _model.editarformcese ? null : (val) => safeSetState(() {}),
                                                                                                                controller: _model.radioButtoninscriptopermanenciafamiliaValueController ??= FormFieldController<String>('No'),
                                                                                                                optionHeight: 32.0,
                                                                                                                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                      font: GoogleFonts.notoSansJp(
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                      ),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                    ),
                                                                                                                selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      font: GoogleFonts.notoSansJp(
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                      ),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                                                                                                            text: CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form9CeseRow.resenaSituacion,
                                                                                                          ),
                                                                                                          focusNode: _model.textFieldFocusNode2,
                                                                                                          autofocus: false,
                                                                                                          readOnly: _model.editarformcese,
                                                                                                          obscureText: false,
                                                                                                          decoration: InputDecoration(
                                                                                                            isDense: true,
                                                                                                            labelText: 'Reseña de la situacion',
                                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                  ),
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                ),
                                                                                                            hintText: 'Reseña de la situacion',
                                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                  ),
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
                                                                                                                font: GoogleFonts.notoSansJp(
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                ),
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                          maxLines: null,
                                                                                                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          validator: _model.textController3Validator.asValidator(context),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Container(
                                                                                                        width: MediaQuery.sizeOf(context).width * 6.0,
                                                                                                        child: TextFormField(
                                                                                                          controller: _model.textController4 ??= TextEditingController(
                                                                                                            text: CeseStruct.maybeFromMap(containerRcpCeseResponse.jsonBody)?.form9CeseRow.fundamentacion,
                                                                                                          ),
                                                                                                          focusNode: _model.textFieldFocusNode3,
                                                                                                          autofocus: false,
                                                                                                          readOnly: _model.editarformcese,
                                                                                                          obscureText: false,
                                                                                                          decoration: InputDecoration(
                                                                                                            isDense: true,
                                                                                                            labelText: 'Fundamentacion ',
                                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                  ),
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                ),
                                                                                                            hintText: 'Fundamentacion',
                                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                                  ),
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
                                                                                                                font: GoogleFonts.notoSansJp(
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                ),
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                          maxLines: null,
                                                                                                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          validator: _model.textController4Validator.asValidator(context),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ].divide(SizedBox(height: 10.0)).around(SizedBox(height: 10.0)),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ListView(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                          children: [
                                                                                            FlutterFlowIconButton(
                                                                                              borderRadius: 8.0,
                                                                                              buttonSize: 40.0,
                                                                                              fillColor: FlutterFlowTheme.of(context).primary,
                                                                                              icon: Icon(
                                                                                                Icons.refresh_sharp,
                                                                                                color: FlutterFlowTheme.of(context).info,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              onPressed: () async {
                                                                                                safeSetState(() => _model.requestCompleter3 = null);
                                                                                                await _model.waitForRequestCompleted3();
                                                                                              },
                                                                                            ),
                                                                                            FutureBuilder<List<DocumentosadjuntosRow>>(
                                                                                              future: DocumentosadjuntosTable().querySingleRow(
                                                                                                queryFn: (q) => q
                                                                                                    .eqOrNull(
                                                                                                      'idingresodoc',
                                                                                                      widget.idingreso,
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
                                                                                                List<DocumentosadjuntosRow> containerDocumentosadjuntosRowList = snapshot.data!;

                                                                                                final containerDocumentosadjuntosRow = containerDocumentosadjuntosRowList.isNotEmpty ? containerDocumentosadjuntosRowList.first : null;

                                                                                                return Container(
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                          child: FFButtonWidget(
                                                                                                            onPressed: () async {
                                                                                                              if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                                                return;
                                                                                                              }
                                                                                                              if (_model.dropDowncausaValue == null) {
                                                                                                                return;
                                                                                                              }
                                                                                                              await GuardarCeseCall.call(
                                                                                                                token: currentJwtToken,
                                                                                                                pIdIngreso: widget.idingreso,
                                                                                                                pIdExpediente: widget.idexp,
                                                                                                                payloadJson: <String, dynamic>{
                                                                                                                  'fecha': functions.datepickertostring(_model.datePicked1),
                                                                                                                  'causa': _model.dropDowncausaValue,
                                                                                                                  'observacioncese': _model.textFieldObsTextController.text,
                                                                                                                  'acciones': _model.textController1.text,
                                                                                                                  'agotadomedida': _model.radioButtoninscriptoagotadoValue,
                                                                                                                  'riesgovida': _model.radioButtoninscriptopermanenciafamiliaValue,
                                                                                                                  'fundamentacionsolicitud': _model.textController4.text,
                                                                                                                  'resena': _model.textController3.text,
                                                                                                                  'iduser': currentUserUid,
                                                                                                                },
                                                                                                              );

                                                                                                              safeSetState(() => _model.requestCompleter3 = null);
                                                                                                              await _model.waitForRequestCompleted3();
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
                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                    ),
                                                                                                                    color: Colors.white,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                  ),
                                                                                                              elevation: 2.0,
                                                                                                              borderSide: BorderSide(
                                                                                                                color: Colors.transparent,
                                                                                                                width: 1.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(20.0),
                                                                                                              hoverElevation: 4.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      if ((containerform9Formulario9Row?.idForm9 != null) && (containerform9Formulario9Row?.causa == 'Solicitud de medida excepcional al organismo provincial de protección de derechos (SENAF)'))
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                          child: FFButtonWidget(
                                                                                                            onPressed: () async {
                                                                                                              _model.recepciondemanda = await VistaRecepciondelademandaTable().queryRows(
                                                                                                                queryFn: (q) => q.eqOrNull(
                                                                                                                  'idIngreso_ingresos',
                                                                                                                  widget.idingreso,
                                                                                                                ),
                                                                                                              );
                                                                                                              _model.derechos = await ListaDerechosVulneradosexpedienteTable().queryRows(
                                                                                                                queryFn: (q) => q.eqOrNull(
                                                                                                                  'idingreso',
                                                                                                                  widget.idingreso,
                                                                                                                ),
                                                                                                              );
                                                                                                              _model.medidas = await Formulario6Table().queryRows(
                                                                                                                queryFn: (q) => q.eqOrNull(
                                                                                                                  'idIngresoform6',
                                                                                                                  widget.idingreso,
                                                                                                                ),
                                                                                                              );
                                                                                                              _model.apiResultznwinfsenaf1Copy = await CrearwordsolicitudCall.call(
                                                                                                                token: currentJwtToken,
                                                                                                                idingreso: widget.idingreso,
                                                                                                              );

                                                                                                              if ((_model.apiResultznwinfsenaf1Copy?.succeeded ?? true)) {
                                                                                                                await Future.delayed(
                                                                                                                  Duration(
                                                                                                                    milliseconds: 5000,
                                                                                                                  ),
                                                                                                                );
                                                                                                                await Formulario9Table().update(
                                                                                                                  data: {
                                                                                                                    'linksolicitudSENAF': CrearwordsolicitudCall.url(
                                                                                                                      (_model.apiResultznwinfsenaf1Copy?.jsonBody ?? ''),
                                                                                                                    ),
                                                                                                                  },
                                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                                    'idForm9',
                                                                                                                    containerform9Formulario9Row?.idForm9,
                                                                                                                  ),
                                                                                                                );
                                                                                                                await DocumentosadjuntosTable().update(
                                                                                                                  data: {
                                                                                                                    'idexpdoc': widget.idexp?.toDouble(),
                                                                                                                    'idingresodoc': widget.idingreso,
                                                                                                                    'documentopdf': CrearwordsolicitudCall.url(
                                                                                                                      (_model.apiResultznwinfsenaf1Copy?.jsonBody ?? ''),
                                                                                                                    ),
                                                                                                                  },
                                                                                                                  matchingRows: (rows) => rows
                                                                                                                      .eqOrNull(
                                                                                                                        'idingresodoc',
                                                                                                                        widget.idingreso,
                                                                                                                      )
                                                                                                                      .eqOrNull(
                                                                                                                        'tipodocumento',
                                                                                                                        'Formulario Solicitud de medida excepcional',
                                                                                                                      ),
                                                                                                                );
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

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                            text: 'Crear informe',
                                                                                                            options: FFButtonOptions(
                                                                                                              height: 40.0,
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                    ),
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                  ),
                                                                                                              elevation: 0.0,
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(25.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                    ].divide(SizedBox(width: 10.0)),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                if (containerform9Formulario9Row?.linksolicitudSENAF != null && containerform9Formulario9Row?.linksolicitudSENAF != '')
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: () async {
                                                                                                        await launchURL('https://view.officeapps.live.com/op/embed.aspx?src=${containerform9Formulario9Row?.linksolicitudSENAF}');
                                                                                                      },
                                                                                                      text: 'Ver informe',
                                                                                                      icon: Icon(
                                                                                                        Icons.remove_red_eye_sharp,
                                                                                                        size: 15.0,
                                                                                                      ),
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 40.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                            ),
                                                                                                        elevation: 0.0,
                                                                                                        borderSide: BorderSide(
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(25.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                if (containerform9Formulario9Row?.linksolicitudSENAF != null && containerform9Formulario9Row?.linksolicitudSENAF != '')
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: () async {
                                                                                                        await launchURL(containerform9Formulario9Row!.linksolicitudSENAF!);
                                                                                                      },
                                                                                                      text: 'Descargar informe',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 40.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
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
                                                                                      ],
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              1263.8,
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxWidth:
                                                                                800.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              FutureBuilder<List<VistaHistorialMovimientosSolicitudsenafRow>>(
                                                                            future: (_model.requestCompleter2 ??= Completer<List<VistaHistorialMovimientosSolicitudsenafRow>>()
                                                                                  ..complete(VistaHistorialMovimientosSolicitudsenafTable().queryRows(
                                                                                    queryFn: (q) => q
                                                                                        .eqOrNull(
                                                                                          'idingreso',
                                                                                          containeringresoIngresosRow?.id,
                                                                                        )
                                                                                        .order('created_at'),
                                                                                  )))
                                                                                .future,
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<VistaHistorialMovimientosSolicitudsenafRow> containerhistorialVistaHistorialMovimientosSolicitudsenafRowList = snapshot.data!;

                                                                              return Container(
                                                                                constraints: BoxConstraints(
                                                                                  maxWidth: 800.0,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Historial de Movimientos',
                                                                                        style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: double.infinity,
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Builder(
                                                                                              builder: (context) {
                                                                                                final historial = containerhistorialVistaHistorialMovimientosSolicitudsenafRowList.toList();

                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  children: List.generate(historial.length, (historialIndex) {
                                                                                                    final historialItem = historial[historialIndex];
                                                                                                    return Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                      child: FutureBuilder<List<DocumentosadjuntosRow>>(
                                                                                                        future: DocumentosadjuntosTable().queryRows(
                                                                                                          queryFn: (q) => q
                                                                                                              .eqOrNull(
                                                                                                                'idingresodoc',
                                                                                                                containeringresoIngresosRow?.id,
                                                                                                              )
                                                                                                              .order('created_at'),
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
                                                                                                          List<DocumentosadjuntosRow> containeradjuntosDocumentosadjuntosRowList = snapshot.data!;

                                                                                                          return Material(
                                                                                                            color: Colors.transparent,
                                                                                                            elevation: historialItem.estado == 'Enviado a Coordinacion SENAF' ? 10.0 : 2.0,
                                                                                                            shape: RoundedRectangleBorder(
                                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                                            ),
                                                                                                            child: Container(
                                                                                                              width: double.infinity,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                                                border: Border.all(
                                                                                                                  color: historialItem.estado == 'Enviado a Coordinacion SENAF' ? FlutterFlowTheme.of(context).secondary : Color(0x00000000),
                                                                                                                  width: 1.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsets.all(16.0),
                                                                                                                    child: Column(
                                                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                                                      children: [
                                                                                                                        Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                Column(
                                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                                  children: [
                                                                                                                                    if (!historialItem.leido!)
                                                                                                                                      Icon(
                                                                                                                                        Icons.sms_failed,
                                                                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                                                                        size: 24.0,
                                                                                                                                      ),
                                                                                                                                    if (historialItem.leido ?? true)
                                                                                                                                      Icon(
                                                                                                                                        Icons.mark_email_read,
                                                                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                                                                        size: 24.0,
                                                                                                                                      ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                                Align(
                                                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                                  child: Text(
                                                                                                                                    dateTimeFormat(
                                                                                                                                      "d/M/y",
                                                                                                                                      historialItem.fecha!,
                                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                                          font: GoogleFonts.notoSansJp(
                                                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                                                          ),
                                                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                if ((historialItem.reponsable == 'Coordinacion general') && (historialItem.enviado == false) && (widget.idrol == 1))
                                                                                                                                  Align(
                                                                                                                                    alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                                                    child: Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                      children: [
                                                                                                                                        FFButtonWidget(
                                                                                                                                          onPressed: () async {
                                                                                                                                            await showModalBottomSheet(
                                                                                                                                              isScrollControlled: true,
                                                                                                                                              backgroundColor: Colors.transparent,
                                                                                                                                              enableDrag: false,
                                                                                                                                              context: context,
                                                                                                                                              builder: (context) {
                                                                                                                                                return WebViewAware(
                                                                                                                                                  child: GestureDetector(
                                                                                                                                                    onTap: () {
                                                                                                                                                      FocusScope.of(context).unfocus();
                                                                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                                    },
                                                                                                                                                    child: Padding(
                                                                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                                      child: ComentariosolicitudsenafWidget(
                                                                                                                                                        idhistorial: historialItem.id!,
                                                                                                                                                        idform9: containerform9Formulario9Row!.idForm9,
                                                                                                                                                        responsable: 'SENAF',
                                                                                                                                                        estado: 'Enviado a SENAF',
                                                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                                                        idexp: widget.idexp!,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  ),
                                                                                                                                                );
                                                                                                                                              },
                                                                                                                                            ).then((value) => safeSetState(() => _model.comentarioCopy5 = value));

                                                                                                                                            if (_model.comentarioCopy5!) {
                                                                                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                                              await _model.waitForRequestCompleted2();
                                                                                                                                            }

                                                                                                                                            safeSetState(() {});
                                                                                                                                          },
                                                                                                                                          text: 'Medida enviada',
                                                                                                                                          options: FFButtonOptions(
                                                                                                                                            height: 35.0,
                                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                  ),
                                                                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                ),
                                                                                                                                            elevation: 0.0,
                                                                                                                                            borderSide: BorderSide(
                                                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                            ),
                                                                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        FFButtonWidget(
                                                                                                                                          onPressed: () async {
                                                                                                                                            await showModalBottomSheet(
                                                                                                                                              isScrollControlled: true,
                                                                                                                                              backgroundColor: Colors.transparent,
                                                                                                                                              enableDrag: false,
                                                                                                                                              context: context,
                                                                                                                                              builder: (context) {
                                                                                                                                                return WebViewAware(
                                                                                                                                                  child: GestureDetector(
                                                                                                                                                    onTap: () {
                                                                                                                                                      FocusScope.of(context).unfocus();
                                                                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                                    },
                                                                                                                                                    child: Padding(
                                                                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                                      child: ComentariosolicitudsenafWidget(
                                                                                                                                                        idhistorial: historialItem.id!,
                                                                                                                                                        idform9: containerform9Formulario9Row!.idForm9,
                                                                                                                                                        responsable: 'SPD',
                                                                                                                                                        estado: 'A revisar por SPD',
                                                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                                                        idexp: widget.idexp!,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  ),
                                                                                                                                                );
                                                                                                                                              },
                                                                                                                                            ).then((value) => safeSetState(() => _model.comentarioCopy3 = value));

                                                                                                                                            if (_model.comentarioCopy3!) {
                                                                                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                                              await _model.waitForRequestCompleted2();
                                                                                                                                            }

                                                                                                                                            safeSetState(() {});
                                                                                                                                          },
                                                                                                                                          text: 'Revisar',
                                                                                                                                          options: FFButtonOptions(
                                                                                                                                            height: 35.0,
                                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                  ),
                                                                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                ),
                                                                                                                                            elevation: 0.0,
                                                                                                                                            borderSide: BorderSide(
                                                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                            ),
                                                                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ].divide(SizedBox(width: 5.0)),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                if ((historialItem.reponsable == 'Coordinacion zonal') && (historialItem.enviado == false) && (widget.idrol == 2))
                                                                                                                                  Align(
                                                                                                                                    alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                                                    child: Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                      children: [
                                                                                                                                        FFButtonWidget(
                                                                                                                                          onPressed: () async {
                                                                                                                                            await showModalBottomSheet(
                                                                                                                                              isScrollControlled: true,
                                                                                                                                              backgroundColor: Colors.transparent,
                                                                                                                                              enableDrag: false,
                                                                                                                                              context: context,
                                                                                                                                              builder: (context) {
                                                                                                                                                return WebViewAware(
                                                                                                                                                  child: GestureDetector(
                                                                                                                                                    onTap: () {
                                                                                                                                                      FocusScope.of(context).unfocus();
                                                                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                                    },
                                                                                                                                                    child: Padding(
                                                                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                                      child: ComentariosolicitudsenafWidget(
                                                                                                                                                        idhistorial: historialItem.id!,
                                                                                                                                                        idform9: containerform9Formulario9Row!.idForm9,
                                                                                                                                                        responsable: 'Coordinacion general',
                                                                                                                                                        estado: 'Enviado a coordinacion general',
                                                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                                                        idexp: widget.idexp!,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  ),
                                                                                                                                                );
                                                                                                                                              },
                                                                                                                                            ).then((value) => safeSetState(() => _model.comentarioCopy = value));

                                                                                                                                            if (_model.comentarioCopy!) {
                                                                                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                                              await _model.waitForRequestCompleted2();
                                                                                                                                            }

                                                                                                                                            safeSetState(() {});
                                                                                                                                          },
                                                                                                                                          text: 'Enviar a coordinacion general',
                                                                                                                                          options: FFButtonOptions(
                                                                                                                                            height: 35.0,
                                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                  ),
                                                                                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                ),
                                                                                                                                            elevation: 0.0,
                                                                                                                                            borderSide: BorderSide(
                                                                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                                                                            ),
                                                                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        FFButtonWidget(
                                                                                                                                          onPressed: () async {
                                                                                                                                            await showModalBottomSheet(
                                                                                                                                              isScrollControlled: true,
                                                                                                                                              backgroundColor: Colors.transparent,
                                                                                                                                              enableDrag: false,
                                                                                                                                              context: context,
                                                                                                                                              builder: (context) {
                                                                                                                                                return WebViewAware(
                                                                                                                                                  child: GestureDetector(
                                                                                                                                                    onTap: () {
                                                                                                                                                      FocusScope.of(context).unfocus();
                                                                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                                    },
                                                                                                                                                    child: Padding(
                                                                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                                      child: ComentariosolicitudsenafWidget(
                                                                                                                                                        idhistorial: historialItem.id!,
                                                                                                                                                        idform9: containerform9Formulario9Row!.idForm9,
                                                                                                                                                        responsable: 'SPD',
                                                                                                                                                        estado: 'A revisar por SPD',
                                                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                                                        idexp: widget.idexp!,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  ),
                                                                                                                                                );
                                                                                                                                              },
                                                                                                                                            ).then((value) => safeSetState(() => _model.comentarioCopy2 = value));

                                                                                                                                            if (_model.comentarioCopy2!) {
                                                                                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                                              await _model.waitForRequestCompleted2();
                                                                                                                                            }

                                                                                                                                            safeSetState(() {});
                                                                                                                                          },
                                                                                                                                          text: 'Revisar',
                                                                                                                                          options: FFButtonOptions(
                                                                                                                                            height: 35.0,
                                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                  ),
                                                                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                ),
                                                                                                                                            elevation: 0.0,
                                                                                                                                            borderSide: BorderSide(
                                                                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                                            ),
                                                                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ].divide(SizedBox(width: 5.0)),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                Align(
                                                                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                                                  child: Row(
                                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                    children: [
                                                                                                                                      if ((historialItem.reponsable == 'SPD') && (historialItem.enviado == false) && (widget.idrol == 3))
                                                                                                                                        FFButtonWidget(
                                                                                                                                          onPressed: () async {
                                                                                                                                            await showModalBottomSheet(
                                                                                                                                              isScrollControlled: true,
                                                                                                                                              backgroundColor: Colors.transparent,
                                                                                                                                              enableDrag: false,
                                                                                                                                              context: context,
                                                                                                                                              builder: (context) {
                                                                                                                                                return WebViewAware(
                                                                                                                                                  child: GestureDetector(
                                                                                                                                                    onTap: () {
                                                                                                                                                      FocusScope.of(context).unfocus();
                                                                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                                    },
                                                                                                                                                    child: Padding(
                                                                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                                      child: ComentariosolicitudsenafWidget(
                                                                                                                                                        idhistorial: historialItem.id!,
                                                                                                                                                        idform9: containerform9Formulario9Row!.idForm9,
                                                                                                                                                        responsable: 'Coordinacion zonal',
                                                                                                                                                        estado: 'Enviado a coordinacion zonal',
                                                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                                                        idexp: widget.idexp!,
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  ),
                                                                                                                                                );
                                                                                                                                              },
                                                                                                                                            ).then((value) => safeSetState(() => _model.comentario = value));

                                                                                                                                            if (_model.comentario!) {
                                                                                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                                              await _model.waitForRequestCompleted2();
                                                                                                                                            }

                                                                                                                                            safeSetState(() {});
                                                                                                                                          },
                                                                                                                                          text: 'Enviar a revision de coordinacion',
                                                                                                                                          options: FFButtonOptions(
                                                                                                                                            height: 35.0,
                                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                  ),
                                                                                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                                ),
                                                                                                                                            elevation: 0.0,
                                                                                                                                            borderSide: BorderSide(
                                                                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                                                                            ),
                                                                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                    ].divide(SizedBox(width: 5.0)),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            Padding(
                                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 8.0, 4.0, 8.0),
                                                                                                                              child: Container(
                                                                                                                                decoration: BoxDecoration(
                                                                                                                                  color: Color(0xFFE6F7FF),
                                                                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                                                                ),
                                                                                                                                child: Padding(
                                                                                                                                  padding: EdgeInsets.all(8.0),
                                                                                                                                  child: Text(
                                                                                                                                    valueOrDefault<String>(
                                                                                                                                      historialItem.estado,
                                                                                                                                      'Sin dato',
                                                                                                                                    ),
                                                                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                                                          font: GoogleFonts.notoSansJp(
                                                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                                                                          ),
                                                                                                                                          color: Color(0xFF0066CC),
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        Align(
                                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            'Responsable: ${historialItem.reponsable}',
                                                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                                                  ),
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(),
                                                                                                                          child: Column(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            children: [
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                children: [
                                                                                                                                  Text(
                                                                                                                                    'Creado por: ${valueOrDefault<String>(
                                                                                                                                      historialItem.nombreUser,
                                                                                                                                      'Sin dato',
                                                                                                                                    )}',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          font: GoogleFonts.notoSansJp(
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                          ),
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                children: [
                                                                                                                                  Text(
                                                                                                                                    'Leido por: ${valueOrDefault<String>(
                                                                                                                                      historialItem.nombreUserLeido,
                                                                                                                                      'Sin dato',
                                                                                                                                    )}',
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          font: GoogleFonts.notoSansJp(
                                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                          ),
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                          fontWeight: FontWeight.w600,
                                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ],
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
                                                                                                                                  return WebViewAware(
                                                                                                                                    child: GestureDetector(
                                                                                                                                      onTap: () {
                                                                                                                                        FocusScope.of(context).unfocus();
                                                                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                      },
                                                                                                                                      child: Padding(
                                                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                        child: AdjuntasolicitudsenaffirmadaWidget(
                                                                                                                                          idform9: containerform9Formulario9Row?.idForm9,
                                                                                                                                          idexp: widget.idexp!,
                                                                                                                                          idingreso: widget.idingreso!,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  );
                                                                                                                                },
                                                                                                                              ).then((value) => safeSetState(() => _model.solicitudfirmada = value));

                                                                                                                              if (_model.solicitudfirmada!) {
                                                                                                                                safeSetState(() => _model.requestCompleter3 = null);
                                                                                                                                await _model.waitForRequestCompleted3();
                                                                                                                              }

                                                                                                                              safeSetState(() {});
                                                                                                                            },
                                                                                                                            text: 'adjuntar',
                                                                                                                            icon: FaIcon(
                                                                                                                              FontAwesomeIcons.signature,
                                                                                                                              size: 15.0,
                                                                                                                            ),
                                                                                                                            options: FFButtonOptions(
                                                                                                                              height: 40.0,
                                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: Colors.white,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                  ),
                                                                                                                              elevation: 0.0,
                                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                          children: [
                                                                                                                            if (containerform9Formulario9Row?.linksolicitud != null && containerform9Formulario9Row?.linksolicitud != '')
                                                                                                                              FFButtonWidget(
                                                                                                                                onPressed: () async {
                                                                                                                                  await showModalBottomSheet(
                                                                                                                                    isScrollControlled: true,
                                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                                    enableDrag: false,
                                                                                                                                    context: context,
                                                                                                                                    builder: (context) {
                                                                                                                                      return WebViewAware(
                                                                                                                                        child: GestureDetector(
                                                                                                                                          onTap: () {
                                                                                                                                            FocusScope.of(context).unfocus();
                                                                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                          },
                                                                                                                                          child: Padding(
                                                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                            child: ListadodeadjuntosWidget(
                                                                                                                                              idexp: widget.idexp!,
                                                                                                                                              idingreso: widget.idingreso!,
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      );
                                                                                                                                    },
                                                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                                                },
                                                                                                                                text: 'Ver listado de adjuntos',
                                                                                                                                options: FFButtonOptions(
                                                                                                                                  height: 40.0,
                                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                        font: GoogleFonts.notoSansJp(
                                                                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                        ),
                                                                                                                                        color: Colors.white,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                      ),
                                                                                                                                  elevation: 0.0,
                                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            if (containerform9Formulario9Row?.linksolicitud != null && containerform9Formulario9Row?.linksolicitud != '')
                                                                                                                              FFButtonWidget(
                                                                                                                                onPressed: () async {
                                                                                                                                  await launchURL(containerform9Formulario9Row!.linksolicitud!);
                                                                                                                                },
                                                                                                                                text: 'Ver solicitud firmamada',
                                                                                                                                options: FFButtonOptions(
                                                                                                                                  height: 40.0,
                                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                        font: GoogleFonts.notoSansJp(
                                                                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                        ),
                                                                                                                                        color: Colors.white,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                      ),
                                                                                                                                  elevation: 0.0,
                                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        Divider(
                                                                                                                          thickness: 2.0,
                                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                                        ),
                                                                                                                        Align(
                                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            'Comentario',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                  ),
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Align(
                                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              historialItem.comentario,
                                                                                                                              'Sin dato',
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                                                  ),
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Divider(
                                                                                                                          thickness: 2.0,
                                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                                        ),
                                                                                                                        Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                              children: [
                                                                                                                                if (widget.idrol == 1)
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
                                                                                                                                              child: GestureDetector(
                                                                                                                                                onTap: () {
                                                                                                                                                  FocusScope.of(context).unfocus();
                                                                                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                                },
                                                                                                                                                child: Padding(
                                                                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                                  child: EnviarmailWidget(
                                                                                                                                                    idingreso: widget.idingreso,
                                                                                                                                                    idexp: widget.idexp,
                                                                                                                                                    expediente: stackVistaExpedientesUltimoEstadoRow,
                                                                                                                                                  ),
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            );
                                                                                                                                          },
                                                                                                                                        ).then((value) => safeSetState(() {}));
                                                                                                                                      },
                                                                                                                                      text: 'Enviar email a senaf',
                                                                                                                                      icon: FaIcon(
                                                                                                                                        FontAwesomeIcons.dochub,
                                                                                                                                        size: 15.0,
                                                                                                                                      ),
                                                                                                                                      options: FFButtonOptions(
                                                                                                                                        width: 200.0,
                                                                                                                                        height: 40.0,
                                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                              ),
                                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                                            ),
                                                                                                                                        elevation: 0.0,
                                                                                                                                        borderSide: BorderSide(
                                                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                                                        ),
                                                                                                                                        borderRadius: BorderRadius.circular(25.0),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                              ].divide(SizedBox(width: 30.0)),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ].divide(SizedBox(height: 8.0)),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  if (valueOrDefault<bool>(
                                                                                                                    (historialItem.leido == false) &&
                                                                                                                        (widget.idrol == 3) &&
                                                                                                                        valueOrDefault<bool>(
                                                                                                                          historialItem.reponsable == 'SPD',
                                                                                                                          true,
                                                                                                                        ),
                                                                                                                    false,
                                                                                                                  ))
                                                                                                                    FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        await HistorialmovimientossolicitudsenafTable().update(
                                                                                                                          data: {
                                                                                                                            'leido': true,
                                                                                                                            'iduser leido': currentUserUid,
                                                                                                                          },
                                                                                                                          matchingRows: (rows) => rows.eqOrNull(
                                                                                                                            'id',
                                                                                                                            historialItem.id,
                                                                                                                          ),
                                                                                                                        );
                                                                                                                        safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                        await _model.waitForRequestCompleted2();
                                                                                                                      },
                                                                                                                      text: 'Leer',
                                                                                                                      options: FFButtonOptions(
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                              ),
                                                                                                                              color: Colors.white,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                            ),
                                                                                                                        elevation: 0.0,
                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  if (valueOrDefault<bool>(
                                                                                                                    (historialItem.leido == false) &&
                                                                                                                        (widget.idrol == 2) &&
                                                                                                                        valueOrDefault<bool>(
                                                                                                                          historialItem.reponsable == 'Coordinacion zonal',
                                                                                                                          true,
                                                                                                                        ),
                                                                                                                    false,
                                                                                                                  ))
                                                                                                                    FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        await HistorialmovimientossolicitudsenafTable().update(
                                                                                                                          data: {
                                                                                                                            'leido': true,
                                                                                                                            'iduser leido': currentUserUid,
                                                                                                                          },
                                                                                                                          matchingRows: (rows) => rows.eqOrNull(
                                                                                                                            'id',
                                                                                                                            historialItem.id,
                                                                                                                          ),
                                                                                                                        );
                                                                                                                        safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                        await _model.waitForRequestCompleted2();
                                                                                                                      },
                                                                                                                      text: 'Leer',
                                                                                                                      options: FFButtonOptions(
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                              ),
                                                                                                                              color: Colors.white,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                            ),
                                                                                                                        elevation: 0.0,
                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  if (valueOrDefault<bool>(
                                                                                                                    (historialItem.leido == false) &&
                                                                                                                        (widget.idrol == 1) &&
                                                                                                                        valueOrDefault<bool>(
                                                                                                                          historialItem.reponsable == 'Coordinacion general',
                                                                                                                          true,
                                                                                                                        ),
                                                                                                                    false,
                                                                                                                  ))
                                                                                                                    FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        await HistorialmovimientossolicitudsenafTable().update(
                                                                                                                          data: {
                                                                                                                            'leido': true,
                                                                                                                            'iduser leido': currentUserUid,
                                                                                                                          },
                                                                                                                          matchingRows: (rows) => rows.eqOrNull(
                                                                                                                            'id',
                                                                                                                            historialItem.id,
                                                                                                                          ),
                                                                                                                        );
                                                                                                                        safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                        await _model.waitForRequestCompleted2();
                                                                                                                      },
                                                                                                                      text: 'Leer',
                                                                                                                      options: FFButtonOptions(
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                              ),
                                                                                                                              color: Colors.white,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                            ),
                                                                                                                        elevation: 0.0,
                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  if (valueOrDefault<bool>(
                                                                                                                    (historialItem.leido == false) &&
                                                                                                                        (widget.idrol == 1) &&
                                                                                                                        valueOrDefault<bool>(
                                                                                                                          historialItem.reponsable == 'SENAF',
                                                                                                                          true,
                                                                                                                        ),
                                                                                                                    false,
                                                                                                                  ))
                                                                                                                    FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        await HistorialmovimientossolicitudsenafTable().update(
                                                                                                                          data: {
                                                                                                                            'leido': true,
                                                                                                                            'iduser leido': currentUserUid,
                                                                                                                          },
                                                                                                                          matchingRows: (rows) => rows.eqOrNull(
                                                                                                                            'id',
                                                                                                                            historialItem.id,
                                                                                                                          ),
                                                                                                                        );
                                                                                                                        safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                        await _model.waitForRequestCompleted2();
                                                                                                                      },
                                                                                                                      text: 'Leer',
                                                                                                                      options: FFButtonOptions(
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                              ),
                                                                                                                              color: Colors.white,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                                            ),
                                                                                                                        elevation: 0.0,
                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ),
                                                                                                    );
                                                                                                  }).divide(SizedBox(height: 12.0)),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 16.0)),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              <Widget>[].divide(SizedBox(width: 10.0)),
                                                                        ),
                                                                      ].divide(SizedBox(height: 10.0)).around(
                                                                              SizedBox(height: 10.0)),
                                                                    ),
                                                                  ),
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        if (widget.idrol ==
                                                                            1)
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                16.0,
                                                                                16.0,
                                                                                16.0),
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(10.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 237.55,
                                                                                          height: 55.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text(
                                                                                                  dateTimeFormat(
                                                                                                    "d/M/y",
                                                                                                    _model.datePicked2,
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.notoSansJp(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
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
                                                                                                                font: GoogleFonts.notoSansJp(
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                                                                                                                ),
                                                                                                                fontSize: 32.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).headlineLarge.fontStyle,
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
                                                                                                  text: 'Fecha',
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 40.0,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          font: GoogleFonts.notoSansJp(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                          ),
                                                                                                          color: Colors.white,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        FlutterFlowDropDown<String>(
                                                                                          controller: _model.dropDownValueController ??= FormFieldController<String>(null),
                                                                                          options: [
                                                                                            'Solicitud a Senaf',
                                                                                            'Reiteracion a Senaf',
                                                                                            'Adopcion de medida',
                                                                                            'Rechazo de medida'
                                                                                          ],
                                                                                          onChanged: (val) => safeSetState(() => _model.dropDownValue = val),
                                                                                          width: 300.0,
                                                                                          height: 40.0,
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.notoSansJp(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                          hintText: 'Seleccionar',
                                                                                          icon: Icon(
                                                                                            Icons.keyboard_arrow_down_rounded,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          elevation: 2.0,
                                                                                          borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                          borderWidth: 0.0,
                                                                                          borderRadius: 8.0,
                                                                                          margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                          hidesUnderline: true,
                                                                                          isOverButton: false,
                                                                                          isSearchable: false,
                                                                                          isMultiSelect: false,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    TextFormField(
                                                                                      controller: _model.textController5,
                                                                                      focusNode: _model.textFieldFocusNode4,
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: 'Observaciones',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
                                                                                            font: GoogleFonts.notoSansJp(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                      maxLines: null,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.textController5Validator.asValidator(context),
                                                                                    ),
                                                                                    FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        await SeguimientosolicitudTable().insert({
                                                                                          'fecha': supaSerialize<DateTime>(_model.datePicked2),
                                                                                          'estadosolicitud': _model.dropDownValue,
                                                                                          'Observacion': _model.textController5.text,
                                                                                          'iduser': currentUserUid,
                                                                                          'idform9': containerform9Formulario9Row?.idForm9,
                                                                                          'idingreso': widget.idingreso,
                                                                                          'idexpe': stackVistaExpedientesUltimoEstadoRow?.id,
                                                                                          'updateat': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                        });
                                                                                        safeSetState(() => _model.requestCompleter4 = null);
                                                                                        await _model.waitForRequestCompleted4();
                                                                                      },
                                                                                      text: 'Guardar',
                                                                                      options: FFButtonOptions(
                                                                                        height: 40.0,
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              font: GoogleFonts.notoSansJp(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                              ),
                                                                                              color: Colors.white,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                            ),
                                                                                        elevation: 0.0,
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 10.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        Container(
                                                                          width:
                                                                              854.7,
                                                                          height:
                                                                              471.35,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          child:
                                                                              FutureBuilder<List<SeguimientosolicitudRow>>(
                                                                            future: (_model.requestCompleter4 ??= Completer<List<SeguimientosolicitudRow>>()
                                                                                  ..complete(SeguimientosolicitudTable().queryRows(
                                                                                    queryFn: (q) => q
                                                                                        .eqOrNull(
                                                                                          'idingreso',
                                                                                          containeringresoIngresosRow?.id,
                                                                                        )
                                                                                        .order('fecha'),
                                                                                  )))
                                                                                .future,
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<SeguimientosolicitudRow> listViewSeguimientosolicitudRowList = snapshot.data!;

                                                                              return ListView.builder(
                                                                                padding: EdgeInsets.zero,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                itemCount: listViewSeguimientosolicitudRowList.length,
                                                                                itemBuilder: (context, listViewIndex) {
                                                                                  final listViewSeguimientosolicitudRow = listViewSeguimientosolicitudRowList[listViewIndex];
                                                                                  return Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      constraints: BoxConstraints(
                                                                                        maxWidth: 1270.0,
                                                                                      ),
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        boxShadow: [
                                                                                          BoxShadow(
                                                                                            blurRadius: 4.0,
                                                                                            color: Color(0x230E151B),
                                                                                            offset: Offset(
                                                                                              0.0,
                                                                                              2.0,
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFF1F4F8),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                listViewSeguimientosolicitudRow.estadosolicitud,
                                                                                                                'Sin dato',
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                    font: GoogleFonts.outfit(
                                                                                                                      fontWeight: FontWeight.w500,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                    ),
                                                                                                                    color: Color(0xFF14181B),
                                                                                                                    fontSize: 24.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        if (widget.idrol == 1)
                                                                                                          FlutterFlowIconButton(
                                                                                                            borderRadius: 8.0,
                                                                                                            buttonSize: 40.0,
                                                                                                            icon: Icon(
                                                                                                              Icons.delete,
                                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                                              size: 24.0,
                                                                                                            ),
                                                                                                            onPressed: () async {
                                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                                    context: context,
                                                                                                                    builder: (alertDialogContext) {
                                                                                                                      return WebViewAware(
                                                                                                                        child: AlertDialog(
                                                                                                                          title: Text('Esta por eliminar un registro! '),
                                                                                                                          content: Text('Estas seguro de eliminar el registro?'),
                                                                                                                          actions: [
                                                                                                                            TextButton(
                                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                              child: Text('Cancelar'),
                                                                                                                            ),
                                                                                                                            TextButton(
                                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                              child: Text('Confirmar'),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      );
                                                                                                                    },
                                                                                                                  ) ??
                                                                                                                  false;
                                                                                                              if (confirmDialogResponse) {
                                                                                                                await SeguimientosolicitudTable().delete(
                                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                                    'id',
                                                                                                                    listViewSeguimientosolicitudRow.id,
                                                                                                                  ),
                                                                                                                );
                                                                                                                safeSetState(() => _model.requestCompleter4 = null);
                                                                                                                await _model.waitForRequestCompleted4();
                                                                                                              }
                                                                                                            },
                                                                                                          ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                                    child: Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        listViewSeguimientosolicitudRow.observacion,
                                                                                                        'Sin dato',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                            font: GoogleFonts.readexPro(
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                            color: Color(0xFF57636C),
                                                                                                            fontSize: 16.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        if (responsiveVisibility(
                                                                                                          context: context,
                                                                                                          tabletLandscape: false,
                                                                                                          desktop: false,
                                                                                                        ))
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                                            child: ClipRRect(
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                              child: Image.network(
                                                                                                                'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Text(
                                                                                                            'Fecha:',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  font: GoogleFonts.readexPro(
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                  ),
                                                                                                                  color: Color(0xFF14181B),
                                                                                                                  fontSize: 14.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.normal,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            dateTimeFormat(
                                                                                                              "d/M/y",
                                                                                                              listViewSeguimientosolicitudRow.fecha,
                                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                                            ),
                                                                                                            'Sin dato',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                                font: GoogleFonts.readexPro(
                                                                                                                  fontWeight: FontWeight.normal,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                                                ),
                                                                                                                color: Color(0xFF57636C),
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.normal,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
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
                                                                ],
                                                              ),
                                                            ),
                                                          ],
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
                    ],
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
