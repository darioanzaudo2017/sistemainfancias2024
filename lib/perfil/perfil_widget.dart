import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/asesoramiento_anexo_a_widget.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/cambiarexpe_widget.dart';
import '/components/formcaratula_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/components/ultimaactualizacion_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/formulario1/seccion2/seccion2_widget.dart';
import '/formulario1/seccion6/seccion6_widget.dart';
import '/formulario1/secciones_formulario1/seccion1/seccion1_widget.dart';
import '/formulario1/secciones_formulario1/seccion4/seccion4_widget.dart';
import '/formulario1/secciones_formulario1/seccion5/seccion5_widget.dart';
import '/formulario1/secciones_formulario1/seccion7/seccion7_widget.dart';
import '/formulario1/secciones_formulario1/seccion8/seccion8_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'perfil_model.dart';
export 'perfil_model.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({
    super.key,
    required this.idingreso,
    required this.idexp,
    required this.idnnya,
    required this.idrol,
    required this.rol,
    required this.spd1,
  });

  final int? idingreso;
  final int? idexp;
  final int? idnnya;
  final int? idrol;
  final String? rol;
  final String? spd1;

  static String routeName = 'perfil';
  static String routePath = '/perfil';

  @override
  State<PerfilWidget> createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  late PerfilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerfilModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(PerfilCompletoPaginaCall.call(
              token: currentJwtToken,
              pIdingreso: widget.idingreso,
            )))
          .future,
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
        final perfilPerfilCompletoPaginaResponse = snapshot.data!;

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
                'Etapas del proceso de intervencion',
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
              child: FutureBuilder<ApiCallResponse>(
                future: InfoDeContextoCall.call(
                  token: currentJwtToken,
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
                  final rowInfoDeContextoResponse = snapshot.data!;

                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SafeArea(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(0.0),
                                    border: Border.all(
                                      color: Color(0xFFE5E7EB),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFAppState().spd,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              font: GoogleFonts
                                                                  .plusJakartaSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF15161E),
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          currentUserEmail,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .plusJakartaSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF606A85),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          ContextoinicialStruct
                                                                  .maybeFromMap(
                                                                      rowInfoDeContextoResponse
                                                                          .jsonBody)
                                                              ?.usuario
                                                              .roles
                                                              .firstOrNull
                                                              ?.rol,
                                                          'Sin dato',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .notoSansJp(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 12.0,
                                          thickness: 2.0,
                                          color: Color(0xFFE5E7EB),
                                        ),
                                        Expanded(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .barradeNavegacionModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      BarradeNavegacionWidget(
                                                    idexp: widget.idexp,
                                                    idingreso:
                                                        widget.idingreso,
                                                    expediente:
                                                        PerfilcompletopaginaStruct
                                                                .maybeFromMap(
                                                                    perfilPerfilCompletoPaginaResponse
                                                                        .jsonBody)!
                                                            .perfilExpediente
                                                            .id,
                                                    fechaExp: PerfilcompletopaginaStruct
                                                            .maybeFromMap(
                                                                perfilPerfilCompletoPaginaResponse
                                                                    .jsonBody)
                                                        ?.perfilExpediente
                                                        .fecha,
                                                    adjuntar: true,
                                                    imprimir: true,
                                                    ingreso: true,
                                                    perfil: false,
                                                    idnnya: widget.idnnya,
                                                    idrol: widget.idrol!,
                                                    rol: widget.rol!,
                                                    spd: widget.spd1!,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Container(
                                                    height: 450.0,
                                                    decoration: BoxDecoration(),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Text(
                                                                'Listado de NNyA convivientes y no convivientes',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .notoSansJp(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final containerVar =
                                                                    PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)
                                                                            ?.perfilGrupoConviviente
                                                                            .toList() ??
                                                                        [];

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      containerVar
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          containerVarIndex) {
                                                                    final containerVarItem =
                                                                        containerVar[
                                                                            containerVarIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            65.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Colors.white,
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
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              8.0,
                                                                              12.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 8.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Flexible(
                                                                                        child: Text(
                                                                                          '${containerVarItem.nombre}, ${containerVarItem.apellido}',
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
                                                                                      ),
                                                                                      Flexible(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            valueOrDefault<String>(
                                                                                              containerVarItem.dni.toString(),
                                                                                              '0',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                                  ),
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {},
                                                                                text: 'crear exp',
                                                                                options: FFButtonOptions(
                                                                                  height: 20.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.notoSansJp(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: Colors.white,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                              FlutterFlowIconButton(
                                                                                borderColor: Color(0xFFE0E3E7),
                                                                                borderRadius: 8.0,
                                                                                borderWidth: 2.0,
                                                                                buttonSize: 40.0,
                                                                                icon: Icon(
                                                                                  Icons.remove_red_eye_outlined,
                                                                                  color: Color(0xFF57636C),
                                                                                  size: 20.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  _model.exp = await VistaExpedientesUltimoEstadoTable().queryRows(
                                                                                    queryFn: (q) => q.eqOrNull(
                                                                                      'id',
                                                                                      PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.id,
                                                                                    ),
                                                                                  );

                                                                                  context.pushNamed(
                                                                                    IngresosWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'idexp': serializeParam(
                                                                                        _model.exp?.firstOrNull?.id,
                                                                                        ParamType.int,
                                                                                      ),
                                                                                      'idnnya': serializeParam(
                                                                                        0,
                                                                                        ParamType.int,
                                                                                      ),
                                                                                      'idrol': serializeParam(
                                                                                        ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol,
                                                                                        ParamType.int,
                                                                                      ),
                                                                                      'rol': serializeParam(
                                                                                        ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.rol,
                                                                                        ParamType.String,
                                                                                      ),
                                                                                      'spd1': serializeParam(
                                                                                        ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd,
                                                                                        ParamType.String,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );

                                                                                  safeSetState(() {});
                                                                                },
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
                                                          wrapWithModel(
                                                            model: _model
                                                                .ultimaactualizacionModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                UltimaactualizacionWidget(
                                                              idusuario: PerfilcompletopaginaStruct
                                                                      .maybeFromMap(
                                                                          perfilPerfilCompletoPaginaResponse
                                                                              .jsonBody)
                                                                  ?.perfilIngreso
                                                                  .idusuario,
                                                              updated: PerfilcompletopaginaStruct
                                                                      .maybeFromMap(
                                                                          perfilPerfilCompletoPaginaResponse
                                                                              .jsonBody)
                                                                  ?.perfilIngreso
                                                                  .updatedAt,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 12.0,
                                          thickness: 2.0,
                                          color: Color(0xFFE5E7EB),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              Expanded(
                                child: SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.7,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 10.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .tarjetaencabezadoModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        TarjetaencabezadoWidget(
                                                      idexpediente:
                                                          widget.idexp,
                                                      idnnya: widget.idnnya,
                                                      spd: widget.spd1,
                                                    ),
                                                  ),
                                                  Flex(
                                                    direction:
                                                        (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                800.0)
                                                            ? Axis.horizontal
                                                            : Axis.vertical,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        FormcaratulaWidget(
                                                                      idexp: widget
                                                                          .idexp,
                                                                      editar:
                                                                          true,
                                                                      dniok:
                                                                          false,
                                                                      idrol: widget
                                                                          .idrol!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        },
                                                        text: 'Editar caratula',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 35.0,
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
                                                              .secondaryBackground,
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
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
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.0),
                                                        ),
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        CambiarexpeWidget(
                                                                      idexp: widget
                                                                          .idexp!,
                                                                      idrol: widget
                                                                          .idrol!,
                                                                      spd: widget
                                                                          .spd1!,
                                                                      rol: widget
                                                                          .rol!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        },
                                                        text:
                                                            'Derivar expediente',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 35.0,
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
                                                              .secondaryBackground,
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
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
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.0),
                                                        ),
                                                      ),
                                                    ]
                                                        .divide((MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                800.0)
                                                            ? SizedBox(
                                                                width: 10.0)
                                                            : SizedBox(
                                                                height: 10.0))
                                                        .around((MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >
                                                                800.0)
                                                            ? SizedBox(
                                                                width: 10.0)
                                                            : SizedBox(
                                                                height: 10.0)),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        if (PerfilcompletopaginaStruct
                                                                    .maybeFromMap(
                                                                        perfilPerfilCompletoPaginaResponse
                                                                            .jsonBody)
                                                                ?.perfilIngreso
                                                                .form9 ==
                                                            true)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(5.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Flexible(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 15.0,
                                                                                    height: 120.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: () {
                                                                                        if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form9 && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form9completo) {
                                                                                          return FlutterFlowTheme.of(context).alternate;
                                                                                        } else if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form9 && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form9completo) {
                                                                                          return FlutterFlowTheme.of(context).success;
                                                                                        } else {
                                                                                          return Color(0x00000000);
                                                                                        }
                                                                                      }(),
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(20.0),
                                                                                        bottomRight: Radius.circular(0.0),
                                                                                        topLeft: Radius.circular(20.0),
                                                                                        topRight: Radius.circular(0.0),
                                                                                      ),
                                                                                      shape: BoxShape.rectangle,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          '5. Cese de la intervención',
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
                                                                                        Container(
                                                                                          width: 450.0,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  'Causa: ${PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.motivocierre}',
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
                                                                                                Text(
                                                                                                  'Fecha: ${PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.fechacierre}',
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
                                                                                                Text(
                                                                                                  'Observacion: ${PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.observacioncierre}'.maybeHandleOverflow(
                                                                                                    maxChars: 40,
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
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 4.0)),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: 200.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form9completo)
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0.0, 1.0),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              context.pushNamed(
                                                                                                SenafWidget.routeName,
                                                                                                queryParameters: {
                                                                                                  'idnnya': serializeParam(
                                                                                                    widget.idnnya,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'idexp': serializeParam(
                                                                                                    widget.idexp,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'idingreso': serializeParam(
                                                                                                    widget.idingreso,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'idrol': serializeParam(
                                                                                                    widget.idrol,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'rol': serializeParam(
                                                                                                    widget.rol,
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                  'spd': serializeParam(
                                                                                                    widget.spd1,
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );
                                                                                            },
                                                                                            text: 'Completar',
                                                                                            options: FFButtonOptions(
                                                                                              width: 150.0,
                                                                                              height: 30.0,
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
                                                                                      if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form9completo ?? true)
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0.0, 1.0),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              context.pushNamed(
                                                                                                SenafWidget.routeName,
                                                                                                queryParameters: {
                                                                                                  'idnnya': serializeParam(
                                                                                                    widget.idnnya,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'idexp': serializeParam(
                                                                                                    widget.idexp,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'idingreso': serializeParam(
                                                                                                    widget.idingreso,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'idrol': serializeParam(
                                                                                                    widget.idrol,
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'rol': serializeParam(
                                                                                                    widget.rol,
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                  'spd': serializeParam(
                                                                                                    widget.spd1,
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );
                                                                                            },
                                                                                            text: 'Editar',
                                                                                            options: FFButtonOptions(
                                                                                              width: 150.0,
                                                                                              height: 30.0,
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                                                                                              elevation: 3.0,
                                                                                              borderSide: BorderSide(
                                                                                                color: Colors.transparent,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                    ].divide(SizedBox(height: 5.0)),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 16.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if (PerfilcompletopaginaStruct
                                                                    .maybeFromMap(
                                                                        perfilPerfilCompletoPaginaResponse
                                                                            .jsonBody)
                                                                ?.perfilIngreso
                                                                .form6 ??
                                                            true)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(5.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 15.0,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: () {
                                                                                      if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form6 && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form6completo) {
                                                                                        return FlutterFlowTheme.of(context).alternate;
                                                                                      } else if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form6 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form6completo) {
                                                                                        return FlutterFlowTheme.of(context).success;
                                                                                      } else {
                                                                                        return Color(0x00000000);
                                                                                      }
                                                                                    }(),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(20.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(20.0),
                                                                                      topRight: Radius.circular(0.0),
                                                                                    ),
                                                                                    shape: BoxShape.rectangle,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 500.0,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Text(
                                                                                          '4. Definicion, sustitucion y seguimiento  de la MPI',
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
                                                                                    ].divide(SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: 200.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        context.pushNamed(
                                                                                          DefiniciondemedidasWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'idnnya': serializeParam(
                                                                                              widget.idnnya,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'idingreso': serializeParam(
                                                                                              widget.idingreso,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'idexp': serializeParam(
                                                                                              widget.idexp,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'idrol': serializeParam(
                                                                                              widget.idrol,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'rol': serializeParam(
                                                                                              widget.rol,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'sp': serializeParam(
                                                                                              widget.spd1,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      },
                                                                                      text: 'Completar',
                                                                                      options: FFButtonOptions(
                                                                                        width: 150.0,
                                                                                        height: 30.0,
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form6completo ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                ].divide(SizedBox(height: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 16.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if (PerfilcompletopaginaStruct
                                                                    .maybeFromMap(
                                                                        perfilPerfilCompletoPaginaResponse
                                                                            .jsonBody)
                                                                ?.perfilIngreso
                                                                .form5 ??
                                                            true)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(5.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 15.0,
                                                                                  height: 120.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: () {
                                                                                      if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form5 && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form5completo) {
                                                                                        return FlutterFlowTheme.of(context).alternate;
                                                                                      } else if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form5 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form5completo) {
                                                                                        return FlutterFlowTheme.of(context).success;
                                                                                      } else {
                                                                                        return Color(0x00000000);
                                                                                      }
                                                                                    }(),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(20.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(20.0),
                                                                                      topRight: Radius.circular(0.0),
                                                                                    ),
                                                                                    shape: BoxShape.rectangle,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 300.0,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Text(
                                                                                          '3.  Informe síntesis de Valoracion Integral y propuestas de MPI',
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
                                                                                    ].divide(SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: 200.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  if ((PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form5 == true) && (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form5completo == false))
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 1.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          context.pushNamed(
                                                                                            Formulario5PaginaWidget.routeName,
                                                                                            queryParameters: {
                                                                                              'idingreso': serializeParam(
                                                                                                widget.idingreso,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'edit': serializeParam(
                                                                                                false,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'idnnya': serializeParam(
                                                                                                widget.idnnya,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'idexp': serializeParam(
                                                                                                widget.idexp,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'idrol': serializeParam(
                                                                                                widget.idrol,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'rol': serializeParam(
                                                                                                widget.rol,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'spd1': serializeParam(
                                                                                                widget.spd1,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                            }.withoutNulls,
                                                                                          );
                                                                                        },
                                                                                        text: 'Completar',
                                                                                        options: FFButtonOptions(
                                                                                          width: 150.0,
                                                                                          height: 30.0,
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
                                                                                  if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form5 ?? true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 1.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          context.pushNamed(
                                                                                            Formulario5PaginaWidget.routeName,
                                                                                            queryParameters: {
                                                                                              'idingreso': serializeParam(
                                                                                                widget.idingreso,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'edit': serializeParam(
                                                                                                true,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'idnnya': serializeParam(
                                                                                                widget.idnnya,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'idexp': serializeParam(
                                                                                                widget.idexp,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'idrol': serializeParam(
                                                                                                widget.idrol,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'rol': serializeParam(
                                                                                                widget.rol,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'spd1': serializeParam(
                                                                                                widget.spd1,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                            }.withoutNulls,
                                                                                          );
                                                                                        },
                                                                                        text: 'Editar',
                                                                                        options: FFButtonOptions(
                                                                                          width: 150.0,
                                                                                          height: 30.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                                                                                          elevation: 3.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                ].divide(SizedBox(height: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 16.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if (PerfilcompletopaginaStruct
                                                                    .maybeFromMap(
                                                                        perfilPerfilCompletoPaginaResponse
                                                                            .jsonBody)
                                                                ?.perfilIngreso
                                                                .ampliacion ??
                                                            true)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(5.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 15.0,
                                                                                  height: 200.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: () {
                                                                                      if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.ampliacion && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.ampliacioncompleto) {
                                                                                        return FlutterFlowTheme.of(context).alternate;
                                                                                      } else if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.ampliacion && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.ampliacioncompleto) {
                                                                                        return FlutterFlowTheme.of(context).success;
                                                                                      } else {
                                                                                        return FlutterFlowTheme.of(context).accent3;
                                                                                      }
                                                                                    }(),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(20.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(20.0),
                                                                                      topRight: Radius.circular(0.0),
                                                                                    ),
                                                                                    shape: BoxShape.rectangle,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 500.0,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Text(
                                                                                          '2. Verificacion y ampliacion de informacion.',
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
                                                                                    ].divide(SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: 200.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        context.pushNamed(
                                                                                          EntrevistasCopyWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'idingreso': serializeParam(
                                                                                              widget.idingreso,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'idnnya': serializeParam(
                                                                                              widget.idnnya,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'idexp': serializeParam(
                                                                                              widget.idexp,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'idrol': serializeParam(
                                                                                              widget.idrol,
                                                                                              ParamType.int,
                                                                                            ),
                                                                                            'rol': serializeParam(
                                                                                              widget.rol,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'spd': serializeParam(
                                                                                              widget.spd1,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      },
                                                                                      text: 'Ingresar',
                                                                                      options: FFButtonOptions(
                                                                                        width: 200.0,
                                                                                        height: 30.0,
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.ampliacioncompleto ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).primary,
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
                                                                                ].divide(SizedBox(height: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 16.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    5.0),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          15.0,
                                                                      height:
                                                                          750.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color:
                                                                            () {
                                                                          if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion1 &&
                                                                              !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion2 &&
                                                                              !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion3 &&
                                                                              !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion5 &&
                                                                              !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion7 &&
                                                                              !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion9) {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          } else if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion1 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion2 && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion3 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion5 && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion7 && !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion9) {
                                                                            return FlutterFlowTheme.of(context).accent1;
                                                                          } else if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion1 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion2 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion3 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion5 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion7 && PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion9) {
                                                                            return FlutterFlowTheme.of(context).success;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          }
                                                                        }(),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(20.0),
                                                                          bottomRight:
                                                                              Radius.circular(0.0),
                                                                          topLeft:
                                                                              Radius.circular(20.0),
                                                                          topRight:
                                                                              Radius.circular(0.0),
                                                                        ),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.65,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                10.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                              children: [
                                                                                Text(
                                                                                  '1. Recepcion de la demanda',
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
                                                                                Text(
                                                                                  'Fecha de cierre por derivacion o asesoramiento : ${PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.fechacierre}',
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
                                                                                Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Flex(
                                                                                        direction: (MediaQuery.sizeOf(context).width > 800.0) ? Axis.horizontal : Axis.vertical,
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Datos NNyA',
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
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion1)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                          return true;
                                                                                                        } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                          return true;
                                                                                                        } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                          return true;
                                                                                                        } else {
                                                                                                          return false;
                                                                                                        }
                                                                                                      }()
                                                                                                          ? null
                                                                                                          : () async {
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
                                                                                                                        child: Seccion1Widget(
                                                                                                                          editar: false,
                                                                                                                          idingreso2: widget.idingreso!,
                                                                                                                          idexp: widget.idexp!,
                                                                                                                          iduser: currentUserUid,
                                                                                                                          idrol: FFAppState().idrol,
                                                                                                                          spdexp: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilExpediente.spd,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => safeSetState(() => _model.seccio1true = value));

                                                                                                              if (_model.seccio1true!) {
                                                                                                                if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilPuedeAvanzar) {
                                                                                                                  await IngresosTable().update(
                                                                                                                    data: {
                                                                                                                      'form1completo': true,
                                                                                                                      'Ampliacioncompleto': false,
                                                                                                                      'Ampliacion': true,
                                                                                                                    },
                                                                                                                    matchingRows: (rows) => rows.eqOrNull(
                                                                                                                      'id',
                                                                                                                      PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                                    ),
                                                                                                                  );
                                                                                                                }
                                                                                                                safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                                await _model.waitForApiRequestCompleted();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Sección 1',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: !PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion1 ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                        disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion1 ?? true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                          return true;
                                                                                                        } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                          return true;
                                                                                                        } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                          return true;
                                                                                                        } else {
                                                                                                          return false;
                                                                                                        }
                                                                                                      }()
                                                                                                          ? null
                                                                                                          : () async {
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
                                                                                                                        child: Seccion1Widget(
                                                                                                                          editar: true,
                                                                                                                          idingreso2: widget.idingreso!,
                                                                                                                          idexp: widget.idexp!,
                                                                                                                          iduser: currentUserUid,
                                                                                                                          idrol: FFAppState().idrol,
                                                                                                                          spdexp: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilExpediente.spd,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => safeSetState(() {}));

                                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilPuedeAvanzar) {
                                                                                                                await IngresosTable().update(
                                                                                                                  data: {
                                                                                                                    'form1completo': true,
                                                                                                                    'Ampliacioncompleto': false,
                                                                                                                    'Ampliacion': true,
                                                                                                                  },
                                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                                    'id',
                                                                                                                    PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                                  ),
                                                                                                                );
                                                                                                              }
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                            },
                                                                                                      text: 'editar Sección 1',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                        disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Datos del o la  solicitante',
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
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion2)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion2Widget(
                                                                                                                        editar: false,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexp: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() => _model.seccion2true = value));

                                                                                                            if (_model.seccion2true!) {
                                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilPuedeAvanzar) {
                                                                                                                await IngresosTable().update(
                                                                                                                  data: {
                                                                                                                    'form1completo': true,
                                                                                                                    'Ampliacioncompleto': false,
                                                                                                                    'Ampliacion': true,
                                                                                                                  },
                                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                                    'id',
                                                                                                                    PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                                  ),
                                                                                                                );
                                                                                                              }
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                            }

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Sección 2',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion2 ?? true)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion2Widget(
                                                                                                                        editar: true,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexp: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() {}));
                                                                                                          },
                                                                                                    text: 'Editar Sección 2',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Grupo conviviente y no conviviente',
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
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion3)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
                                                                                                            _model.seccion111Copy = await Seccion1Table().queryRows(
                                                                                                              queryFn: (q) => q.eqOrNull(
                                                                                                                'idIngreso',
                                                                                                                widget.idingreso,
                                                                                                              ),
                                                                                                            );

                                                                                                            context.pushNamed(
                                                                                                              GrupoconvivientepaginaWidget.routeName,
                                                                                                              queryParameters: {
                                                                                                                'idingreso': serializeParam(
                                                                                                                  widget.idingreso,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                                'idexpediente': serializeParam(
                                                                                                                  widget.idexp,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                                'idseccion1': serializeParam(
                                                                                                                  _model.seccion111Copy?.firstOrNull?.idSec1,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                                'idnnya': serializeParam(
                                                                                                                  widget.idnnya,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                              }.withoutNulls,
                                                                                                            );

                                                                                                            if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilPuedeAvanzar) {
                                                                                                              await IngresosTable().update(
                                                                                                                data: {
                                                                                                                  'form1completo': true,
                                                                                                                  'Ampliacioncompleto': false,
                                                                                                                  'Ampliacion': true,
                                                                                                                },
                                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                                  'id',
                                                                                                                  PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                                ),
                                                                                                              );
                                                                                                            }
                                                                                                            safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                            await _model.waitForApiRequestCompleted();

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Sección 3',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion3 ?? true)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
                                                                                                            _model.seccion1 = await Seccion1Table().queryRows(
                                                                                                              queryFn: (q) => q.eqOrNull(
                                                                                                                'idIngreso',
                                                                                                                widget.idingreso,
                                                                                                              ),
                                                                                                            );

                                                                                                            context.pushNamed(
                                                                                                              GrupoconvivientepaginaWidget.routeName,
                                                                                                              queryParameters: {
                                                                                                                'idingreso': serializeParam(
                                                                                                                  widget.idingreso,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                                'idexpediente': serializeParam(
                                                                                                                  widget.idexp,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                                'idseccion1': serializeParam(
                                                                                                                  _model.seccion1?.firstOrNull?.idSec1,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                                'idnnya': serializeParam(
                                                                                                                  widget.idnnya,
                                                                                                                  ParamType.int,
                                                                                                                ),
                                                                                                              }.withoutNulls,
                                                                                                            );

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Editar Sección 3',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Situacion socio-economica',
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
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion4 ?? true)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion4Widget(
                                                                                                                        edit: true,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexpediente: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() => _model.seccion4 = value));

                                                                                                            if (_model.seccion4!) {
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                            }

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Editar Sección 4',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion4)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion4Widget(
                                                                                                                        edit: false,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexpediente: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() => _model.seccion4true = value));

                                                                                                            if (_model.seccion4true!) {
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                            }

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Sección 4',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Motivo',
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
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion5 ?? true)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion5Widget(
                                                                                                                        editar: true,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexp: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() {}));
                                                                                                          },
                                                                                                    text: 'Editar Sección 5',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion5)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion5Widget(
                                                                                                                        editar: false,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexp: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() => _model.seccion5true = value));

                                                                                                            if (_model.seccion5true!) {
                                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilPuedeAvanzar) {
                                                                                                                await IngresosTable().update(
                                                                                                                  data: {
                                                                                                                    'form1completo': true,
                                                                                                                    'Ampliacioncompleto': false,
                                                                                                                    'Ampliacion': true,
                                                                                                                  },
                                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                                    'id',
                                                                                                                    PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                                  ),
                                                                                                                );
                                                                                                              }
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                            }

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Sección 5',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Intervenciones',
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
                                                                                            ],
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion6)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion6Widget(
                                                                                                                        edit: true,
                                                                                                                        idingresi: widget.idingreso!,
                                                                                                                        idexpediente: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() {}));
                                                                                                          },
                                                                                                    text: 'Agregar intervenciones ant.',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion6 ?? true)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion6Widget(
                                                                                                                        edit: false,
                                                                                                                        idingresi: widget.idingreso!,
                                                                                                                        idexpediente: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() => _model.seccion6true = value));

                                                                                                            if (_model.seccion6true!) {
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                            }

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Agregar intervenciones ant.',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Derechos vulnerados  y/o amenazados',
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
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion7 ?? true)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion7Widget(
                                                                                                                        editar: true,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexp: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() {}));
                                                                                                          },
                                                                                                    text: 'Editar Sección 7',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (!PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion7)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: !() {
                                                                                                      if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                        return true;
                                                                                                      } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
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
                                                                                                                      child: Seccion7Widget(
                                                                                                                        editar: false,
                                                                                                                        idingreso: widget.idingreso!,
                                                                                                                        idexp: widget.idexp!,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() => _model.seccion7true = value));

                                                                                                            if (_model.seccion7true!) {
                                                                                                              if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilPuedeAvanzar) {
                                                                                                                await IngresosTable().update(
                                                                                                                  data: {
                                                                                                                    'form1completo': true,
                                                                                                                    'Ampliacioncompleto': false,
                                                                                                                    'Ampliacion': true,
                                                                                                                  },
                                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                                    'id',
                                                                                                                    PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                                  ),
                                                                                                                );
                                                                                                              }
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                              safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                              await _model.waitForApiRequestCompleted();
                                                                                                            }

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Sección 7',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                      disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.check_circle,
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion8 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                'Personas relacionadas',
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
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: FFButtonWidget(
                                                                                              onPressed: !() {
                                                                                                if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                  return true;
                                                                                                } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                  return true;
                                                                                                } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                  return true;
                                                                                                } else {
                                                                                                  return false;
                                                                                                }
                                                                                              }()
                                                                                                  ? null
                                                                                                  : () async {
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
                                                                                                                child: Seccion8Widget(
                                                                                                                  idingreso1: widget.idingreso!,
                                                                                                                  idexpediente: widget.idexp!,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() => _model.seccion8guardada = value));

                                                                                                      if (_model.seccion8guardada!) {
                                                                                                        safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                        await _model.waitForApiRequestCompleted();
                                                                                                      }

                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                              text: 'Sección 8',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilIngreso.form1seccion8 ? FlutterFlowTheme.of(context).accent3 : FlutterFlowTheme.of(context).primary,
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
                                                                                                disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Divider(
                                                                                        thickness: 2.0,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      Container(
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Icon(
                                                                                                  Icons.check_circle,
                                                                                                  color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.form1seccion9 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                                Text(
                                                                                                  'Apertura de expediente / Asesoramiento',
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
                                                                                              ],
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: !() {
                                                                                                if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                  return true;
                                                                                                } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                  return true;
                                                                                                } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                  return true;
                                                                                                } else {
                                                                                                  return false;
                                                                                                }
                                                                                              }()
                                                                                                  ? null
                                                                                                  : () async {
                                                                                                      _model.apiResulttym = await AperturaDemandaCall.call(
                                                                                                        token: currentJwtToken,
                                                                                                        pIdingreso: widget.idingreso,
                                                                                                        pIdexpediente: widget.idexp,
                                                                                                      );

                                                                                                      if ((_model.apiResulttym?.succeeded ?? true)) {
                                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                                          SnackBar(
                                                                                                            content: Text(
                                                                                                              'Carga correcta!',
                                                                                                              style: TextStyle(
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              ),
                                                                                                            ),
                                                                                                            duration: Duration(milliseconds: 4000),
                                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                          ),
                                                                                                        );
                                                                                                        safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                        await _model.waitForApiRequestCompleted();
                                                                                                      }

                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                              text: 'Apertura de expediente',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilSecciones.seccion9.desicion == 'Apertura' ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).primary,
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
                                                                                                disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                              ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: !() {
                                                                                                if ((ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 3) && (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.spd == PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilExpediente.spd)) {
                                                                                                  return true;
                                                                                                } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 1) {
                                                                                                  return true;
                                                                                                } else if (ContextoinicialStruct.maybeFromMap(rowInfoDeContextoResponse.jsonBody)?.usuario.roles.firstOrNull?.idrol == 2) {
                                                                                                  return true;
                                                                                                } else {
                                                                                                  return false;
                                                                                                }
                                                                                              }()
                                                                                                  ? null
                                                                                                  : () async {
                                                                                                      _model.apiResulttymCopy = await AsesoramientoDemandaCall.call(
                                                                                                        token: currentJwtToken,
                                                                                                        pIdingreso: widget.idingreso,
                                                                                                        pIdexpediente: widget.idexp,
                                                                                                      );

                                                                                                      if ((_model.apiResulttym?.succeeded ?? true)) {
                                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                                          SnackBar(
                                                                                                            content: Text(
                                                                                                              'Carga correcta!',
                                                                                                              style: TextStyle(
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              ),
                                                                                                            ),
                                                                                                            duration: Duration(milliseconds: 4000),
                                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                          ),
                                                                                                        );
                                                                                                        safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                        await _model.waitForApiRequestCompleted();
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
                                                                                                                  child: AsesoramientoAnexoAWidget(
                                                                                                                    idnnya: widget.idnnya!,
                                                                                                                    idingreso: widget.idingreso!,
                                                                                                                    idexp: widget.idexp!,
                                                                                                                    edit: false,
                                                                                                                    idseccion9: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilSecciones.seccion9.idSec9,
                                                                                                                    idrol: widget.idrol!,
                                                                                                                    rol: widget.rol!,
                                                                                                                    spd: widget.spd1!,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => safeSetState(() => _model.creoasesoramiento1 = value));
                                                                                                      }

                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                              text: 'Asesoramiento',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilSecciones.seccion9.desicion == 'Asesoramiento' ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).primary,
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
                                                                                                disabledColor: FlutterFlowTheme.of(context).alternate,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 3.0)),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            await launchURL('https://view.officeapps.live.com/op/embed.aspx?src=${PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilAnexoA}');
                                                                                          },
                                                                                          text: 'Asesoramiento',
                                                                                          icon: Icon(
                                                                                            Icons.remove_red_eye_sharp,
                                                                                            size: 15.0,
                                                                                          ),
                                                                                          options: FFButtonOptions(
                                                                                            height: 30.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                  ),
                                                                                                  color: Colors.white,
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            await launchURL(PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)!.perfilAnexoA);
                                                                                          },
                                                                                          text: 'Asesoramiento',
                                                                                          icon: Icon(
                                                                                            Icons.download_sharp,
                                                                                            size: 15.0,
                                                                                          ),
                                                                                          options: FFButtonOptions(
                                                                                            height: 30.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  font: GoogleFonts.notoSansJp(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                  ),
                                                                                                  color: Colors.white,
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(SizedBox(width: 3.0)),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                if (widget.spd1 == '1')
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(10.0),
                                                                                    child: Container(
                                                                                      height: 120.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                              child: FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  if (PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.emergencia == 'Si') {
                                                                                                    await IngresosTable().update(
                                                                                                      data: {
                                                                                                        'form1completo': true,
                                                                                                        'form9': true,
                                                                                                        'Ampliacion': true,
                                                                                                      },
                                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                                        'id',
                                                                                                        PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                      ),
                                                                                                    );
                                                                                                  } else {
                                                                                                    await IngresosTable().update(
                                                                                                      data: {
                                                                                                        'form1completo': true,
                                                                                                        'Ampliacioncompleto': false,
                                                                                                        'Ampliacion': true,
                                                                                                      },
                                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                                        'id',
                                                                                                        PerfilcompletopaginaStruct.maybeFromMap(perfilPerfilCompletoPaginaResponse.jsonBody)?.perfilIngreso.id,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                                text: 'Ok para avanzar',
                                                                                                icon: Icon(
                                                                                                  Icons.save,
                                                                                                  size: 15.0,
                                                                                                ),
                                                                                                options: FFButtonOptions(
                                                                                                  width: 300.0,
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
                                                                                          ].divide(SizedBox(height: 10.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                              ].divide(SizedBox(height: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 24.0)),
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
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
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
