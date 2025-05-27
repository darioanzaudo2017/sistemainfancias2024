import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'imprimir_model.dart';
export 'imprimir_model.dart';

class ImprimirWidget extends StatefulWidget {
  const ImprimirWidget({
    super.key,
    this.idexpediente,
    this.idigreso,
    this.exp,
    this.fechaexp,
    this.exprow,
  });

  final int? idexpediente;
  final int? idigreso;
  final String? exp;
  final DateTime? fechaexp;
  final VistaExpedientesUltimoEstadoRow? exprow;

  static String routeName = 'Imprimir';
  static String routePath = '/imprimir';

  @override
  State<ImprimirWidget> createState() => _ImprimirWidgetState();
}

class _ImprimirWidgetState extends State<ImprimirWidget> {
  late ImprimirModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImprimirModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              context.pop();
            },
          ),
          title: Text(
            'Impresiones',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.notoSansJp(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<List<IngresosRow>>(
            future: IngresosTable().querySingleRow(
              queryFn: (q) => q.eqOrNull(
                'id',
                widget.idigreso,
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
              List<IngresosRow> containerIngresosRowList = snapshot.data!;

              final containerIngresosRow = containerIngresosRowList.isNotEmpty
                  ? containerIngresosRowList.first
                  : null;

              return Container(
                decoration: BoxDecoration(),
                child: FutureBuilder<List<IngresosRow>>(
                  future: IngresosTable().querySingleRow(
                    queryFn: (q) => q.eqOrNull(
                      'id',
                      widget.idigreso,
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
                    List<IngresosRow> containerIngresosRowList = snapshot.data!;

                    final containerIngresosRow =
                        containerIngresosRowList.isNotEmpty
                            ? containerIngresosRowList.first
                            : null;

                    return Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FutureBuilder<List<DocumentosadjuntosRow>>(
                          future: (_model.requestCompleter ??= Completer<
                                  List<DocumentosadjuntosRow>>()
                                ..complete(DocumentosadjuntosTable().queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'idingresodoc',
                                        widget.idigreso,
                                      )
                                      .order('orden', ascending: true),
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
                            List<DocumentosadjuntosRow>
                                containeradjuntosDocumentosadjuntosRowList =
                                snapshot.data!;

                            return Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.93,
                              constraints: BoxConstraints(
                                maxWidth: 800.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Imprimir expediente',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.notoSansJp(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: FutureBuilder<
                                        List<ImpresionesExpedientesRow>>(
                                      future: ImpresionesExpedientesTable()
                                          .querySingleRow(
                                        queryFn: (q) => q.eqOrNull(
                                          'idexpediente',
                                          widget.idexpediente,
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<ImpresionesExpedientesRow>
                                            containerImpresionesExpedientesRowList =
                                            snapshot.data!;

                                        final containerImpresionesExpedientesRow =
                                            containerImpresionesExpedientesRowList
                                                    .isNotEmpty
                                                ? containerImpresionesExpedientesRowList
                                                    .first
                                                : null;

                                        return Material(
                                          color: Colors.transparent,
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Carpeta en google drive',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .notoSansJp(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          await launchURL(
                                                              containerIngresosRow!
                                                                  .linkcarpeta!);
                                                        },
                                                        text: 'Ir carpeta',
                                                        options:
                                                            FFButtonOptions(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .notoSansJp(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Divider(
                                                    thickness: 2.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Crear Listado de documentos imprimibles ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .notoSansJp(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      if (!containerIngresosRow!
                                                          .listadoimpresiones!)
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.apiResultgyy =
                                                                await CrearlistadocumentosadjuntosCall
                                                                    .call(
                                                              idexpe: widget
                                                                  .idexpediente,
                                                              idingreso: widget
                                                                  .idigreso,
                                                            );

                                                            await IngresosTable()
                                                                .update(
                                                              data: {
                                                                'listadoimpresiones':
                                                                    true,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                widget
                                                                    .idigreso,
                                                              ),
                                                            );
                                                            safeSetState(() =>
                                                                _model.requestCompleter =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted();

                                                            safeSetState(() {});
                                                          },
                                                          text: 'Crear listado',
                                                          icon: Icon(
                                                            Icons.list_alt,
                                                            size: 15.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .notoSansJp(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ].divide(SizedBox(height: 5.0)),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 700.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Refrescar base de datos',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.notoSansJp(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                safeSetState(() => _model
                                                    .requestCompleter = null);
                                                await _model
                                                    .waitForRequestCompleted();
                                              },
                                              text: 'Refrescar ',
                                              icon: Icon(
                                                Icons.update_sharp,
                                                size: 15.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 650.0,
                                          decoration: BoxDecoration(),
                                          child: Builder(
                                            builder: (context) {
                                              final containerVar =
                                                  containeradjuntosDocumentosadjuntosRowList
                                                      .toList();

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: containerVar.length,
                                                itemBuilder: (context,
                                                    containerVarIndex) {
                                                  final containerVarItem =
                                                      containerVar[
                                                          containerVarIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                12.0,
                                                                20.0,
                                                                0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 5.0,
                                                            color: Color(
                                                                0x3416202A),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        containerVarItem
                                                                            .tipodocumento,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.plusJakartaSans(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        containerVarItem
                                                                            .updatedAt
                                                                            ?.toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.plusJakartaSans(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF57636C),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        containerVarItem
                                                                            .documentopdf,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.plusJakartaSans(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF57636C),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      if (containerVarItem.documento !=
                                                                              null &&
                                                                          containerVarItem.documento !=
                                                                              '')
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: FlutterFlowTheme.of(context).primary,
                                                                              borderRadius: 8.0,
                                                                              buttonSize: 40.0,
                                                                              icon: FaIcon(
                                                                                FontAwesomeIcons.googleDrive,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await launchURL(containerVarItem.documento!);
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (containerVarItem.documentopdf !=
                                                                              null &&
                                                                          containerVarItem.documentopdf !=
                                                                              '')
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            borderRadius:
                                                                                8.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.picture_as_pdf_outlined,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              await launchURL(containerVarItem.documentopdf!);
                                                                            },
                                                                          ),
                                                                        ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                  Text(
                                                                    'Hello World',
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
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                if ((containerVarItem.documentopdf ==
                                                                            null ||
                                                                        containerVarItem.documentopdf ==
                                                                            '') &&
                                                                    (containerVarItem
                                                                            .orden !=
                                                                        null))
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if (containerVarItem
                                                                              .tipodocumento ==
                                                                          'Caratula') {
                                                                        _model.apiResultznw =
                                                                            await CrearCaratulaCall.call(
                                                                          idexp:
                                                                              widget.idexpediente,
                                                                          tipo:
                                                                              containerVarItem.tipodocumento,
                                                                          editar:
                                                                              0,
                                                                          idigreso:
                                                                              widget.idigreso,
                                                                          carpeta:
                                                                              containerIngresosRow?.idcarpeta,
                                                                          iddocumentoadjunto: containerVarItem
                                                                              .id
                                                                              .toString(),
                                                                          token:
                                                                              currentJwtToken,
                                                                        );

                                                                        if ((_model.apiResultznw?.succeeded ??
                                                                            true)) {
                                                                          await Future.delayed(
                                                                              const Duration(milliseconds: 5000));
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text('Se ejecuto correctamente!'),
                                                                                content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                          safeSetState(() =>
                                                                              _model.requestCompleter = null);
                                                                          await _model
                                                                              .waitForRequestCompleted();
                                                                        }
                                                                      } else {
                                                                        if (containerVarItem.tipodocumento ==
                                                                            'Recepcion de la demanda') {
                                                                          _model.apiResultznwrecepcion =
                                                                              await CrearCaratulaCall.call(
                                                                            idexp:
                                                                                widget.idexpediente,
                                                                            tipo:
                                                                                containerVarItem.tipodocumento,
                                                                            editar:
                                                                                0,
                                                                            idigreso:
                                                                                widget.idigreso,
                                                                            carpeta:
                                                                                containerIngresosRow?.idcarpeta,
                                                                            iddocumentoadjunto:
                                                                                containerVarItem.id.toString(),
                                                                            token:
                                                                                currentJwtToken,
                                                                          );

                                                                          if ((_model.apiResultznwrecepcion?.succeeded ??
                                                                              true)) {
                                                                            await Future.delayed(const Duration(milliseconds: 5000));
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Se ejecuto correctamente!'),
                                                                                  content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                            safeSetState(() =>
                                                                                _model.requestCompleter = null);
                                                                            await _model.waitForRequestCompleted();
                                                                          }
                                                                        } else {
                                                                          if (containerVarItem.tipodocumento ==
                                                                              'Informe sintesis') {
                                                                            _model.apiResultznwinfsintesiscreate =
                                                                                await CrearCaratulaCall.call(
                                                                              idexp: widget.idexpediente,
                                                                              tipo: containerVarItem.tipodocumento,
                                                                              editar: 0,
                                                                              idigreso: widget.idigreso,
                                                                              carpeta: containerIngresosRow?.idcarpeta,
                                                                              iddocumentoadjunto: containerVarItem.id.toString(),
                                                                              token: currentJwtToken,
                                                                            );

                                                                            if ((_model.apiResultznwinfsintesiscreate?.succeeded ??
                                                                                true)) {
                                                                              await Future.delayed(const Duration(milliseconds: 5000));
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Se ejecuto correctamente!'),
                                                                                    content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                              await _model.waitForRequestCompleted();
                                                                            }
                                                                          } else {
                                                                            if (containerVarItem.tipodocumento ==
                                                                                'Medidas implementadas') {
                                                                              _model.apiResultznwinfmedidas = await CrearCaratulaCall.call(
                                                                                idexp: widget.idexpediente,
                                                                                tipo: containerVarItem.tipodocumento,
                                                                                editar: 0,
                                                                                idigreso: widget.idigreso,
                                                                                carpeta: containerIngresosRow?.idcarpeta,
                                                                                iddocumentoadjunto: containerVarItem.id.toString(),
                                                                                token: currentJwtToken,
                                                                              );

                                                                              if ((_model.apiResultznwinfmedidas?.succeeded ?? true)) {
                                                                                await Future.delayed(const Duration(milliseconds: 5000));
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Se ejecuto correctamente!'),
                                                                                      content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                                safeSetState(() => _model.requestCompleter = null);
                                                                                await _model.waitForRequestCompleted();
                                                                              }
                                                                            } else {
                                                                              if (containerVarItem.tipodocumento == 'Formulario Solicitud de medida excepcional') {
                                                                                _model.apiResultznwinfsenaf = await CrearCaratulaCall.call(
                                                                                  idexp: widget.idexpediente,
                                                                                  tipo: containerVarItem.tipodocumento,
                                                                                  editar: 0,
                                                                                  idigreso: widget.idigreso,
                                                                                  carpeta: containerIngresosRow?.idcarpeta,
                                                                                  iddocumentoadjunto: containerVarItem.id.toString(),
                                                                                  token: currentJwtToken,
                                                                                );

                                                                                if ((_model.apiResultznwinfsenaf?.succeeded ?? true)) {
                                                                                  await Future.delayed(const Duration(milliseconds: 5000));
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Se ejecuto correctamente!'),
                                                                                        content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                  await _model.waitForRequestCompleted();
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Se enviara un mail a la cordinacion!'),
                                                                                        content: Text('Se envio el mail!!'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Imprimir',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                if ((containerVarItem.documentopdf !=
                                                                            null &&
                                                                        containerVarItem.documentopdf !=
                                                                            '') &&
                                                                    (containerVarItem
                                                                            .orden !=
                                                                        null))
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if (containerVarItem
                                                                              .tipodocumento ==
                                                                          'Caratula') {
                                                                        _model.apiResultznwCopy =
                                                                            await CrearCaratulaCall.call(
                                                                          idexp:
                                                                              widget.idexpediente,
                                                                          tipo:
                                                                              containerVarItem.tipodocumento,
                                                                          editar:
                                                                              1,
                                                                          idigreso:
                                                                              widget.idigreso,
                                                                          carpeta:
                                                                              containerIngresosRow?.idcarpeta,
                                                                          iddocumentoadjunto: containerVarItem
                                                                              .id
                                                                              .toString(),
                                                                          idDocedit:
                                                                              containerVarItem.iddocdrive,
                                                                          token:
                                                                              currentJwtToken,
                                                                        );

                                                                        if ((_model.apiResultznwCopy?.succeeded ??
                                                                            true)) {
                                                                          await Future.delayed(
                                                                              const Duration(milliseconds: 5000));
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text('Se ejecuto correctamente!'),
                                                                                content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                          safeSetState(() =>
                                                                              _model.requestCompleter = null);
                                                                          await _model
                                                                              .waitForRequestCompleted();
                                                                        }
                                                                      } else {
                                                                        if (containerVarItem.tipodocumento ==
                                                                            'Recepcion de la demanda') {
                                                                          _model.apiResultznwCopyrecepcion =
                                                                              await CrearCaratulaCall.call(
                                                                            idexp:
                                                                                widget.idexpediente,
                                                                            tipo:
                                                                                containerVarItem.tipodocumento,
                                                                            editar:
                                                                                1,
                                                                            idigreso:
                                                                                widget.idigreso,
                                                                            carpeta:
                                                                                containerIngresosRow?.idcarpeta,
                                                                            iddocumentoadjunto:
                                                                                containerVarItem.id.toString(),
                                                                            idDocedit:
                                                                                containerVarItem.iddocdrive,
                                                                            token:
                                                                                currentJwtToken,
                                                                          );

                                                                          if ((_model.apiResultznwCopyrecepcion?.succeeded ??
                                                                              true)) {
                                                                            await Future.delayed(const Duration(milliseconds: 5000));
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Se ejecuto correctamente!'),
                                                                                  content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                            safeSetState(() =>
                                                                                _model.requestCompleter = null);
                                                                            await _model.waitForRequestCompleted();
                                                                          }
                                                                        } else {
                                                                          if (containerVarItem.tipodocumento ==
                                                                              'Informe sintesis') {
                                                                            _model.apiResultznwCopyinfsintesis =
                                                                                await CrearCaratulaCall.call(
                                                                              idexp: widget.idexpediente,
                                                                              tipo: containerVarItem.tipodocumento,
                                                                              editar: 1,
                                                                              idigreso: widget.idigreso,
                                                                              carpeta: containerIngresosRow?.idcarpeta,
                                                                              iddocumentoadjunto: containerVarItem.id.toString(),
                                                                              idDocedit: containerVarItem.iddocdrive,
                                                                              token: currentJwtToken,
                                                                            );

                                                                            if ((_model.apiResultznwCopyinfsintesis?.succeeded ??
                                                                                true)) {
                                                                              await Future.delayed(const Duration(milliseconds: 5000));
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Se ejecuto correctamente!'),
                                                                                    content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                              await _model.waitForRequestCompleted();
                                                                            }
                                                                          } else {
                                                                            if (containerVarItem.tipodocumento ==
                                                                                'Medidas implementadas') {
                                                                              _model.apiResultznwCopyMedidas = await CrearCaratulaCall.call(
                                                                                idexp: widget.idexpediente,
                                                                                tipo: containerVarItem.tipodocumento,
                                                                                editar: 1,
                                                                                idigreso: widget.idigreso,
                                                                                carpeta: containerIngresosRow?.idcarpeta,
                                                                                iddocumentoadjunto: containerVarItem.id.toString(),
                                                                                idDocedit: containerVarItem.iddocdrive,
                                                                                token: currentJwtToken,
                                                                              );

                                                                              if ((_model.apiResultznwinfmedidas?.succeeded ?? true)) {
                                                                                await Future.delayed(const Duration(milliseconds: 5000));
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Se ejecuto correctamente!'),
                                                                                      content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                                safeSetState(() => _model.requestCompleter = null);
                                                                                await _model.waitForRequestCompleted();
                                                                              }
                                                                            } else {
                                                                              if (containerVarItem.tipodocumento == 'Formulario Solicitud de medida excepcional') {
                                                                                _model.apiResultznwCopyFormularioSolicituddemedidaexcepcional = await CrearCaratulaCall.call(
                                                                                  idexp: widget.idexpediente,
                                                                                  tipo: containerVarItem.tipodocumento,
                                                                                  editar: 1,
                                                                                  idigreso: widget.idigreso,
                                                                                  carpeta: containerIngresosRow?.idcarpeta,
                                                                                  iddocumentoadjunto: containerVarItem.id.toString(),
                                                                                  idDocedit: containerVarItem.iddocdrive,
                                                                                  token: currentJwtToken,
                                                                                );

                                                                                if ((_model.apiResultznwCopyFormularioSolicituddemedidaexcepcional?.succeeded ?? true)) {
                                                                                  await Future.delayed(const Duration(milliseconds: 5000));
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Se ejecuto correctamente!'),
                                                                                        content: Text('La informacion se solicito y se generara un archivo en google drive!!'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                  await _model.waitForRequestCompleted();
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Se enviara una mail a la coordinacion'),
                                                                                        content: Text('Se envio un mail!!!'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Imprimir',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.notoSansJp(
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
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
                            );
                          },
                        ),
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
  }
}
