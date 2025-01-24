import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/cambiarexpe_widget.dart';
import '/components/formcaratula_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/formulario1/seccion2/seccion2_widget.dart';
import '/formulario1/seccion3/seccion3_widget.dart';
import '/formulario1/seccion6/seccion6_widget.dart';
import '/formulario1/secciones_formulario1/seccion1/seccion1_widget.dart';
import '/formulario1/secciones_formulario1/seccion4/seccion4_widget.dart';
import '/formulario1/secciones_formulario1/seccion5/seccion5_widget.dart';
import '/formulario1/secciones_formulario1/seccion7/seccion7_widget.dart';
import '/formulario1/secciones_formulario1/seccion8/seccion8_widget.dart';
import '/formulario1/secciones_formulario1/seccion9/seccion9_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'perfil_model.dart';
export 'perfil_model.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({
    super.key,
    required this.idingreso,
    required this.rowexp,
    required this.usuariorow,
    this.spd,
  });

  final int? idingreso;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final UsuariosRow? usuariorow;
  final SpdRow? spd;

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
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Perfil de ingreso',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Noto Sans JP',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<List<IngresosRow>>(
                future:
                    (_model.requestCompleter ??= Completer<List<IngresosRow>>()
                          ..complete(IngresosTable().querySingleRow(
                            queryFn: (q) => q.eqOrNull(
                              'id',
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
                  List<IngresosRow> containeringresosIngresosRowList =
                      snapshot.data!;

                  final containeringresosIngresosRow =
                      containeringresosIngresosRowList.isNotEmpty
                          ? containeringresosIngresosRowList.first
                          : null;

                  return SafeArea(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                              width: MediaQuery.sizeOf(context).width * 0.25,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1F4F8),
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: const Color(0xFFE5E7EB),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFAppState().spd,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              const Color(0xFF15161E),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      currentUserEmail,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: const Color(
                                                                0xFF606A85),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                    const Divider(
                                      height: 12.0,
                                      thickness: 2.0,
                                      color: Color(0xFFE5E7EB),
                                    ),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.barradeNavegacionModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: BarradeNavegacionWidget(
                                                exprow: widget.rowexp!,
                                                idexp: widget.rowexp?.id,
                                                usuariorow: widget.usuariorow!,
                                                parameter4: widget.rowexp?.spd,
                                                parameter5:
                                                    widget.usuariorow?.spd,
                                                ingresorow:
                                                    containeringresosIngresosRow,
                                                idingreso: widget.idingreso,
                                                expediente:
                                                    widget.rowexp?.expediente,
                                                fechaExp: widget.rowexp?.fecha,
                                                parameter10:
                                                    containeringresosIngresosRow
                                                        ?.carpetaDrive,
                                                urlcarpetadrive:
                                                    containeringresosIngresosRow
                                                        ?.linkcarpeta,
                                                adjuntar: true,
                                                imprimir: true,
                                                carpeta: true,
                                                ingreso: true,
                                                perfil: false,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Container(
                                                height: 450.0,
                                                decoration: const BoxDecoration(),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  5.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .anexosbotoneraModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                AnexosbotoneraWidget(
                                                              ingresorow:
                                                                  containeringresosIngresosRow,
                                                              exorow: widget
                                                                  .rowexp!,
                                                              idingreso: widget
                                                                  .idingreso!,
                                                              usuariosrow: widget
                                                                  .usuariorow!,
                                                              etapa:
                                                                  'Perfil de ingreso',
                                                              reqacciones: true,
                                                              anexoeducacion:
                                                                  true,
                                                              reunioninter:
                                                                  true,
                                                              anexosalud: true,
                                                              entrevistannya:
                                                                  true,
                                                              entrevistaflia:
                                                                  true,
                                                              ampliacion: true,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Text(
                                                            'Listado de NNyA convivientes y no convivientes',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      FutureBuilder<
                                                          List<
                                                              GrupoConvivienteRow>>(
                                                        future:
                                                            GrupoConvivienteTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .lteOrNull(
                                                                'edad',
                                                                18,
                                                              )
                                                              .eqOrNull(
                                                                'idingreso',
                                                                widget
                                                                    .idingreso,
                                                              ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<GrupoConvivienteRow>
                                                              containerGrupoConvivienteRowList =
                                                              snapshot.data!;

                                                          return Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final containerVar =
                                                                    containerGrupoConvivienteRowList
                                                                        .unique((e) =>
                                                                            e.dni)
                                                                        .toList();

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
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
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
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
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
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 8.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Flexible(
                                                                                        child: Text(
                                                                                          '${containerVarItem.nombre}, ${containerVarItem.apellido}',
                                                                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                color: const Color(0xFF14181B),
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Flexible(
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            valueOrDefault<String>(
                                                                                              containerVarItem.edad?.toString(),
                                                                                              '0',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: const Color(0xFF57636C),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (containerVarItem.idexppropio == null)
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    _model.creaexpgrupoCopy = await ExpedienteTable().insert({
                                                                                      'expediente': '',
                                                                                      'fecha': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                      'nombres': containerVarItem.nombre,
                                                                                      'apellidos': containerVarItem.apellido,
                                                                                      'dni': containerVarItem.dni,
                                                                                      'spd': widget.rowexp?.spd,
                                                                                      'derivacion': widget.rowexp?.derivacion,
                                                                                      'canalIngr': widget.rowexp?.canalIngr,
                                                                                      'epecificar': widget.rowexp?.epecificar,
                                                                                      'actuacion': widget.rowexp?.actuacion,
                                                                                      'profesional': widget.rowexp?.profesional,
                                                                                      'fechaNac': supaSerialize<DateTime>(containerVarItem.fechaNacimiento),
                                                                                      'edad': containerVarItem.edad,
                                                                                      'estado': false,
                                                                                      'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                      'iduser': currentUserUid,
                                                                                    });
                                                                                    await ExpedienteTable().update(
                                                                                      data: {
                                                                                        'expediente': '${widget.usuariorow?.spd}/${_model.creaexpgrupoCopy?.id.toString()}/${dateTimeFormat(
                                                                                          "y",
                                                                                          getCurrentTimestamp,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        )}',
                                                                                      },
                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                        'id',
                                                                                        _model.creaexpgrupoCopy?.id,
                                                                                      ),
                                                                                    );
                                                                                    await GrupofamiliarexpedientesTable().insert({
                                                                                      'idgrupofamliar': widget.rowexp?.idgrupofamiliarvista,
                                                                                      'idexpediente': _model.creaexpgrupoCopy?.id,
                                                                                      'expedienteprincipal': widget.rowexp?.id,
                                                                                    });
                                                                                    await GrupoConvivienteTable().update(
                                                                                      data: {
                                                                                        'idexppropio': _model.creaexpgrupoCopy?.id,
                                                                                      },
                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                        'id',
                                                                                        containerVarItem.id,
                                                                                      ),
                                                                                    );
                                                                                    await NNyATable().update(
                                                                                      data: {
                                                                                        'idexppropio': _model.creaexpgrupoCopy?.id,
                                                                                      },
                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                        'id',
                                                                                        containerVarItem.idnnya,
                                                                                      ),
                                                                                    );
                                                                                    _model.apiResult42yCopy = await CarpetaDelExpedienteCall.call(
                                                                                      expediente: _model.expedienteCopy?.firstOrNull?.expediente,
                                                                                      id: _model.creaexpgrupoCopy?.id,
                                                                                      fecha: dateTimeFormat(
                                                                                        "d/M/y",
                                                                                        getCurrentTimestamp,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      ),
                                                                                      nombresDNI: '${_model.creaexpgrupoCopy?.nombres}, ${_model.creaexpgrupoCopy?.apellidos}, DNI ${_model.creaexpgrupoCopy?.dni?.toString()}',
                                                                                      idcarpetaspd: widget.spd?.idcarpetaspd,
                                                                                    );

                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: const Text('Se creo un expediente nuevo!'),
                                                                                            content: Text('Se creo un expediente nuevo relacionado a:${widget.rowexp?.nombres}, ${widget.rowexp?.apellidos}'),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                child: const Text('Ok'),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );

                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  text: 'crear exp',
                                                                                  options: FFButtonOptions(
                                                                                    height: 20.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              if (containerVarItem.idexppropio != null)
                                                                                FlutterFlowIconButton(
                                                                                  borderColor: const Color(0xFFE0E3E7),
                                                                                  borderRadius: 8.0,
                                                                                  borderWidth: 2.0,
                                                                                  buttonSize: 40.0,
                                                                                  icon: const Icon(
                                                                                    Icons.remove_red_eye_outlined,
                                                                                    color: Color(0xFF57636C),
                                                                                    size: 20.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    _model.exp = await VistaExpedientesUltimoEstadoTable().queryRows(
                                                                                      queryFn: (q) => q.eqOrNull(
                                                                                        'id',
                                                                                        containerVarItem.idexppropio,
                                                                                      ),
                                                                                    );

                                                                                    context.pushNamed(
                                                                                      'Ingresos',
                                                                                      queryParameters: {
                                                                                        'idexpediente': serializeParam(
                                                                                          _model.exp?.firstOrNull,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'idexp': serializeParam(
                                                                                          _model.exp?.firstOrNull?.id,
                                                                                          ParamType.int,
                                                                                        ),
                                                                                        'usuariorow': serializeParam(
                                                                                          widget.usuariorow,
                                                                                          ParamType.SupabaseRow,
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
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                    const Divider(
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 10.0, 0.0),
                                        child: SingleChildScrollView(
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
                                                child: TarjetaencabezadoWidget(
                                                  exprow: widget.rowexp!,
                                                  ingresorow:
                                                      containeringresosIngresosRow,
                                                  usuariorow:
                                                      widget.usuariorow!,
                                                  editarcaratula: true,
                                                  contactosref: true,
                                                  cambia: true,
                                                ),
                                              ),
                                              Flex(
                                                direction:
                                                    (MediaQuery.sizeOf(context)
                                                                .width >
                                                            800.0)
                                                        ? Axis.horizontal
                                                        : Axis.vertical,
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
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
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    FormcaratulaWidget(
                                                                  usuariorow:
                                                                      widget
                                                                          .usuariorow!,
                                                                  idexp: widget
                                                                      .rowexp
                                                                      ?.id,
                                                                  editar: true,
                                                                  dniok: false,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    text: 'Editar caratula',
                                                    options: FFButtonOptions(
                                                      height: 35.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
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
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                color: const Color(
                                                                    0xFF39A9EF),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF39A9EF),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
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
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    CambiarexpeWidget(
                                                                  expe: widget
                                                                      .rowexp,
                                                                  ingreso:
                                                                      containeringresosIngresosRow,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    text: 'Cambiar exp de SPD',
                                                    options: FFButtonOptions(
                                                      height: 35.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
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
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                color: const Color(
                                                                    0xFF39A9EF),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0xFF39A9EF),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                    ),
                                                  ),
                                                ]
                                                    .divide((MediaQuery.sizeOf(
                                                                    context)
                                                                .width >
                                                            800.0)
                                                        ? const SizedBox(width: 10.0)
                                                        : const SizedBox(
                                                            height: 10.0))
                                                    .around((MediaQuery.sizeOf(
                                                                    context)
                                                                .width >
                                                            800.0)
                                                        ? const SizedBox(width: 10.0)
                                                        : const SizedBox(
                                                            height: 10.0)),
                                              ),
                                              if (containeringresosIngresosRow
                                                      ?.form9 ??
                                                  true)
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Align(
                                                                      alignment: const AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                15.0,
                                                                            height:
                                                                                120.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: () {
                                                                                if (containeringresosIngresosRow!.form9! && !containeringresosIngresosRow.form9completo!) {
                                                                                  return FlutterFlowTheme.of(context).alternate;
                                                                                } else if (containeringresosIngresosRow.form9! && containeringresosIngresosRow.form9completo!) {
                                                                                  return FlutterFlowTheme.of(context).accent2;
                                                                                } else {
                                                                                  return const Color(0x00000000);
                                                                                }
                                                                              }(),
                                                                              borderRadius: const BorderRadius.only(
                                                                                bottomLeft: Radius.circular(20.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(20.0),
                                                                                topRight: Radius.circular(0.0),
                                                                              ),
                                                                              shape: BoxShape.rectangle,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  '5. Cese de la intervención',
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: 'Noto Sans JP',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                Container(
                                                                                  width: 450.0,
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Causa: ${containeringresosIngresosRow?.motivocierre}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                        Text(
                                                                                          'Fecha: ${dateTimeFormat(
                                                                                            "d/M/y",
                                                                                            containeringresosIngresosRow?.fechacierre,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                        Text(
                                                                                          'Observacion: ${containeringresosIngresosRow?.observacioncierre}'.maybeHandleOverflow(
                                                                                            maxChars: 40,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          200.0,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          if (widget.rowexp?.spd ==
                                                                              widget.usuariorow?.spd)
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                if (!containeringresosIngresosRow!.form9completo!)
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        context.pushNamed(
                                                                                          'Senaf',
                                                                                          queryParameters: {
                                                                                            'ingrow': serializeParam(
                                                                                              containeringresosIngresosRow,
                                                                                              ParamType.SupabaseRow,
                                                                                            ),
                                                                                            'expediente': serializeParam(
                                                                                              widget.rowexp,
                                                                                              ParamType.SupabaseRow,
                                                                                            ),
                                                                                            'usuariorow': serializeParam(
                                                                                              widget.usuariorow,
                                                                                              ParamType.SupabaseRow,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      },
                                                                                      text: 'Completar',
                                                                                      options: FFButtonOptions(
                                                                                        width: 150.0,
                                                                                        height: 30.0,
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              color: Colors.white,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: const BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                if (containeringresosIngresosRow.form9completo ?? true)
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        context.pushNamed(
                                                                                          'Senaf',
                                                                                          queryParameters: {
                                                                                            'ingrow': serializeParam(
                                                                                              containeringresosIngresosRow,
                                                                                              ParamType.SupabaseRow,
                                                                                            ),
                                                                                            'expediente': serializeParam(
                                                                                              widget.rowexp,
                                                                                              ParamType.SupabaseRow,
                                                                                            ),
                                                                                            'usuariorow': serializeParam(
                                                                                              widget.usuariorow,
                                                                                              ParamType.SupabaseRow,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      },
                                                                                      text: 'Editar',
                                                                                      options: FFButtonOptions(
                                                                                        width: 150.0,
                                                                                        height: 30.0,
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              color: Colors.white,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: const BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                              ].divide(const SizedBox(height: 5.0)),
                                                                            ),
                                                                        ].divide(const SizedBox(height: 5.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (containeringresosIngresosRow
                                                      ?.form6 ??
                                                  true)
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              15.0,
                                                                          height:
                                                                              100.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                () {
                                                                              if (containeringresosIngresosRow!.form6! && !containeringresosIngresosRow.form6completo!) {
                                                                                return FlutterFlowTheme.of(context).alternate;
                                                                              } else if (containeringresosIngresosRow.form6! && containeringresosIngresosRow.form6completo!) {
                                                                                return FlutterFlowTheme.of(context).accent2;
                                                                              } else {
                                                                                return const Color(0x00000000);
                                                                              }
                                                                            }(),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(0.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 500.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Text(
                                                                                  '4. Definicion, sustitucion y seguimiento  de la MPI',
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: 'Noto Sans JP',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 4.0)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          200.0,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          if (widget.rowexp?.spd ==
                                                                              widget.usuariorow?.spd)
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 1.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  context.pushNamed(
                                                                                    'Definiciondemedidas',
                                                                                    queryParameters: {
                                                                                      'ingresorow': serializeParam(
                                                                                        containeringresosIngresosRow,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                      'rowexp': serializeParam(
                                                                                        widget.rowexp,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                      'usuariorow': serializeParam(
                                                                                        widget.usuariorow,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                text: 'Completar',
                                                                                options: FFButtonOptions(
                                                                                  width: 150.0,
                                                                                  height: 30.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: !containeringresosIngresosRow!.form6completo! ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Noto Sans JP',
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ].divide(const SizedBox(height: 5.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (containeringresosIngresosRow!.form2completo! ||
                                                  containeringresosIngresosRow
                                                      .form3completo! ||
                                                  containeringresosIngresosRow
                                                      .form4completo!)
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              15.0,
                                                                          height:
                                                                              120.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                () {
                                                                              if (containeringresosIngresosRow.form5! && !containeringresosIngresosRow.form5completo!) {
                                                                                return FlutterFlowTheme.of(context).alternate;
                                                                              } else if (containeringresosIngresosRow.form5! && containeringresosIngresosRow.form5completo!) {
                                                                                return FlutterFlowTheme.of(context).accent2;
                                                                              } else {
                                                                                return const Color(0x00000000);
                                                                              }
                                                                            }(),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(0.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 300.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Text(
                                                                                  '3.  Informe síntesis de Valoracion Integral y propuestas de MPI',
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: 'Noto Sans JP',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 4.0)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          200.0,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Visibility(
                                                                        visible:
                                                                            widget.rowexp?.spd ==
                                                                                widget.usuariorow?.spd,
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            if (containeringresosIngresosRow.form5! &&
                                                                                !containeringresosIngresosRow.form5completo!)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    context.pushNamed(
                                                                                      'formulario5Pagina',
                                                                                      queryParameters: {
                                                                                        'idingreso': serializeParam(
                                                                                          widget.idingreso,
                                                                                          ParamType.int,
                                                                                        ),
                                                                                        'rowexpediente': serializeParam(
                                                                                          widget.rowexp,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'rowingreso': serializeParam(
                                                                                          containeringresosIngresosRow,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'edit': serializeParam(
                                                                                          false,
                                                                                          ParamType.bool,
                                                                                        ),
                                                                                        'usuariorow': serializeParam(
                                                                                          widget.usuariorow,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  text: 'Completar',
                                                                                  options: FFButtonOptions(
                                                                                    width: 150.0,
                                                                                    height: 30.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (containeringresosIngresosRow.form5! &&
                                                                                containeringresosIngresosRow.form5completo!)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    context.pushNamed(
                                                                                      'formulario5Pagina',
                                                                                      queryParameters: {
                                                                                        'idingreso': serializeParam(
                                                                                          widget.idingreso,
                                                                                          ParamType.int,
                                                                                        ),
                                                                                        'rowexpediente': serializeParam(
                                                                                          widget.rowexp,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'rowingreso': serializeParam(
                                                                                          containeringresosIngresosRow,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'edit': serializeParam(
                                                                                          true,
                                                                                          ParamType.bool,
                                                                                        ),
                                                                                        'usuariorow': serializeParam(
                                                                                          widget.usuariorow,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  text: 'Editar',
                                                                                  options: FFButtonOptions(
                                                                                    width: 150.0,
                                                                                    height: 30.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ].divide(const SizedBox(height: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (containeringresosIngresosRow
                                                      .form2 ??
                                                  true)
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              15.0,
                                                                          height:
                                                                              200.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                () {
                                                                              if (containeringresosIngresosRow.form2! && containeringresosIngresosRow.form3! && !containeringresosIngresosRow.form2completo!) {
                                                                                return FlutterFlowTheme.of(context).alternate;
                                                                              } else if (containeringresosIngresosRow.form2! && containeringresosIngresosRow.form3! && containeringresosIngresosRow.form2completo!) {
                                                                                return FlutterFlowTheme.of(context).accent2;
                                                                              } else {
                                                                                return FlutterFlowTheme.of(context).accent3;
                                                                              }
                                                                            }(),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              bottomLeft: Radius.circular(20.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(0.0),
                                                                            ),
                                                                            shape:
                                                                                BoxShape.rectangle,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 500.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Text(
                                                                                  '2. Verificacion y ampliacion de informacion. Entrevistas ',
                                                                                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                        fontFamily: 'Noto Sans JP',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Theme(
                                                                                    data: ThemeData(
                                                                                      checkboxTheme: CheckboxThemeData(
                                                                                        visualDensity: VisualDensity.compact,
                                                                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                      ),
                                                                                      unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                    child: Checkbox(
                                                                                      value: _model.checkboxValue1 ??= containeringresosIngresosRow.form3completo!,
                                                                                      onChanged: (newValue) async {
                                                                                        safeSetState(() => _model.checkboxValue1 = newValue!);
                                                                                      },
                                                                                      side: BorderSide(
                                                                                        width: 2,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      activeColor: FlutterFlowTheme.of(context).secondary,
                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Entrevista al NNyA',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Theme(
                                                                                    data: ThemeData(
                                                                                      checkboxTheme: CheckboxThemeData(
                                                                                        visualDensity: VisualDensity.compact,
                                                                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                      ),
                                                                                      unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                    child: Checkbox(
                                                                                      value: _model.checkboxValue2 ??= containeringresosIngresosRow.form2completo!,
                                                                                      onChanged: (newValue) async {
                                                                                        safeSetState(() => _model.checkboxValue2 = newValue!);
                                                                                      },
                                                                                      side: BorderSide(
                                                                                        width: 2,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      activeColor: FlutterFlowTheme.of(context).secondary,
                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Entrevista a la familia',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Theme(
                                                                                    data: ThemeData(
                                                                                      checkboxTheme: CheckboxThemeData(
                                                                                        visualDensity: VisualDensity.compact,
                                                                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(4.0),
                                                                                        ),
                                                                                      ),
                                                                                      unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                    child: Checkbox(
                                                                                      value: _model.checkboxValue3 ??= containeringresosIngresosRow.form4completo!,
                                                                                      onChanged: (newValue) async {
                                                                                        safeSetState(() => _model.checkboxValue3 = newValue!);
                                                                                      },
                                                                                      side: BorderSide(
                                                                                        width: 2,
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                      ),
                                                                                      activeColor: FlutterFlowTheme.of(context).secondary,
                                                                                      checkColor: FlutterFlowTheme.of(context).info,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Ampliacion de informacion',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].divide(const SizedBox(height: 4.0)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          200.0,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          if (widget.rowexp?.spd ==
                                                                              widget.usuariorow?.spd)
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 1.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  context.pushNamed(
                                                                                    'Entrevistas',
                                                                                    queryParameters: {
                                                                                      'ingresorow': serializeParam(
                                                                                        widget.idingreso,
                                                                                        ParamType.int,
                                                                                      ),
                                                                                      'rowexp': serializeParam(
                                                                                        widget.rowexp,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                      'usuariorow': serializeParam(
                                                                                        widget.usuariorow,
                                                                                        ParamType.SupabaseRow,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                text: 'Entrevistas',
                                                                                options: FFButtonOptions(
                                                                                  width: 200.0,
                                                                                  height: 30.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: containeringresosIngresosRow.form3completo! || containeringresosIngresosRow.form2completo! || containeringresosIngresosRow.form4completo! ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Noto Sans JP',
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ].divide(const SizedBox(height: 5.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (containeringresosIngresosRow
                                                      .form1 ??
                                                  true)
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 15.0,
                                                                height: 750.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: () {
                                                                    if (!containeringresosIngresosRow.form1seccion1! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion2! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion3! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion5! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion7! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion9!) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    } else if (containeringresosIngresosRow.form1seccion1! &&
                                                                        containeringresosIngresosRow
                                                                            .form1seccion2! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion3! &&
                                                                        containeringresosIngresosRow
                                                                            .form1seccion5! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion7! &&
                                                                        !containeringresosIngresosRow
                                                                            .form1seccion9!) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent1;
                                                                    } else if (containeringresosIngresosRow.form1seccion1! &&
                                                                        containeringresosIngresosRow
                                                                            .form1seccion2! &&
                                                                        containeringresosIngresosRow
                                                                            .form1seccion3! &&
                                                                        containeringresosIngresosRow
                                                                            .form1seccion5! &&
                                                                        containeringresosIngresosRow
                                                                            .form1seccion7! &&
                                                                        containeringresosIngresosRow
                                                                            .form1seccion9!) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    }
                                                                  }(),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0.0),
                                                                  ),
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.7,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          10.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.stretch,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            '1. Recepcion de la demanda',
                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                  fontFamily: 'Noto Sans JP',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Fecha de cierre por derivacion o asesoramiento : ${dateTimeFormat(
                                                                              "d/M/y",
                                                                              containeringresosIngresosRow.fechacierre,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Noto Sans JP',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              containeringresosIngresosRow.motivocierre,
                                                                              'Caso abierto',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  fontFamily: 'Noto Sans JP',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Flex(
                                                                                  direction: (MediaQuery.sizeOf(context).width > 800.0) ? Axis.horizontal : Axis.vertical,
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Icon(
                                                                                          Icons.check_circle,
                                                                                          color: containeringresosIngresosRow.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Datos NNyA',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          if (!containeringresosIngresosRow.form1seccion1!)
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                            child: Seccion1Widget(
                                                                                                              idingreso: containeringresosIngresosRow,
                                                                                                              rowexp: widget.rowexp,
                                                                                                              editar: false,
                                                                                                              usuariorow: widget.usuariorow!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() => _model.seccio1true = value));

                                                                                                  if (_model.seccio1true!) {
                                                                                                    safeSetState(() => _model.requestCompleter = null);
                                                                                                    await _model.waitForRequestCompleted();
                                                                                                  }

                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                text: 'Sección 1',
                                                                                                options: FFButtonOptions(
                                                                                                  height: 30.0,
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: containeringresosIngresosRow.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Noto Sans JP',
                                                                                                        color: Colors.white,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                  elevation: 3.0,
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Colors.transparent,
                                                                                                    width: 1.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (containeringresosIngresosRow.form1seccion1 ?? true)
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                            child: Seccion1Widget(
                                                                                                              idingreso: containeringresosIngresosRow,
                                                                                                              rowexp: widget.rowexp,
                                                                                                              editar: true,
                                                                                                              usuariorow: widget.usuariorow!,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                },
                                                                                                text: 'editar Sección 1',
                                                                                                options: FFButtonOptions(
                                                                                                  height: 30.0,
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: containeringresosIngresosRow.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Noto Sans JP',
                                                                                                        color: Colors.white,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                  elevation: 3.0,
                                                                                                  borderSide: const BorderSide(
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
                                                                                          color: containeringresosIngresosRow.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Datos del solicitante',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (!containeringresosIngresosRow.form1seccion2!)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion2Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: false,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion2true = value));

                                                                                                if (_model.seccion2true!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Sección 2',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (containeringresosIngresosRow.form1seccion2 ?? true)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion2Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: true,
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
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                                          color: containeringresosIngresosRow.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Grupo conviviente y no conviviente',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (!containeringresosIngresosRow.form1seccion3!)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion3Widget(
                                                                                                            idingreso: containeringresosIngresosRow,
                                                                                                            idexp: widget.rowexp!,
                                                                                                            editar: false,
                                                                                                            titulo: 'Grupo conviente y No conviviente',
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion3true = value));

                                                                                                if (_model.seccion3true!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Sección 3',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (containeringresosIngresosRow.form1seccion3 ?? true)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion3Widget(
                                                                                                            idingreso: containeringresosIngresosRow,
                                                                                                            idexp: widget.rowexp!,
                                                                                                            editar: false,
                                                                                                            titulo: '3. Grupo conviente',
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                              text: 'Editar Sección 3',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                                          color: containeringresosIngresosRow.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Datos socioeconomicos',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (containeringresosIngresosRow.form1seccion4 ?? true)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion4Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            edit: true,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion4 = value));

                                                                                                if (_model.seccion4!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Editar Sección 4',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (!containeringresosIngresosRow.form1seccion4!)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion4Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            edit: false,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion4true = value));

                                                                                                if (_model.seccion4true!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Sección 4',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                                          color: containeringresosIngresosRow.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Motivo',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (containeringresosIngresosRow.form1seccion5 ?? true)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion5Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: true,
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
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (!containeringresosIngresosRow.form1seccion5!)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion5Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: false,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion5true = value));

                                                                                                if (_model.seccion5true!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Sección 5',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                                          color: containeringresosIngresosRow.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Intervenciones',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (containeringresosIngresosRow.form1seccion6 ?? true)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion6Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp,
                                                                                                            edit: true,
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
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (!containeringresosIngresosRow.form1seccion6!)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion6Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp,
                                                                                                            edit: false,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion6true = value));

                                                                                                if (_model.seccion6true!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Agregar intervenciones ant.',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                                          color: containeringresosIngresosRow.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Derechos',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (containeringresosIngresosRow.form1seccion7 ?? true)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion7Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: true,
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
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (!containeringresosIngresosRow.form1seccion7!)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion7Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: false,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion7true = value));

                                                                                                if (_model.seccion7true!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Sección 7',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                                          color: containeringresosIngresosRow.form1seccion8 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Ampliacion informacion',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                    child: Seccion8Widget(
                                                                                                      idingreso: containeringresosIngresosRow,
                                                                                                      idexp: widget.rowexp!,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        },
                                                                                        text: 'Sección 8',
                                                                                        options: FFButtonOptions(
                                                                                          height: 30.0,
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: containeringresosIngresosRow.form1seccion8! ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                color: Colors.white,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          elevation: 3.0,
                                                                                          borderSide: const BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
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
                                                                                          color: containeringresosIngresosRow.form1seccion9 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        Text(
                                                                                          'Desicion',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (containeringresosIngresosRow.form1seccion9 ?? true)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion9Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: true,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                              text: 'Editar Sección 9',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion9 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (!containeringresosIngresosRow.form1seccion9!)
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                          child: Seccion9Widget(
                                                                                                            rowingreso: containeringresosIngresosRow,
                                                                                                            rowexp: widget.rowexp!,
                                                                                                            editar: false,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() => _model.seccion9true = value));

                                                                                                if (_model.seccion9true!) {
                                                                                                  safeSetState(() => _model.requestCompleter = null);
                                                                                                  await _model.waitForRequestCompleted();
                                                                                                }

                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              text: 'Sección 9',
                                                                                              options: FFButtonOptions(
                                                                                                height: 30.0,
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: containeringresosIngresosRow.form1seccion9 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(const SizedBox(height: 3.0)),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FutureBuilder<List<AnexosForm1Row>>(
                                                                              future: AnexosForm1Table().querySingleRow(
                                                                                queryFn: (q) => q.eqOrNull(
                                                                                  'idingreso',
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
                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                          FlutterFlowTheme.of(context).primary,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                List<AnexosForm1Row> containerAnexosForm1RowList = snapshot.data!;

                                                                                final containerAnexosForm1Row = containerAnexosForm1RowList.isNotEmpty ? containerAnexosForm1RowList.first : null;

                                                                                return Container(
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: Visibility(
                                                                                    visible: widget.rowexp?.spd == widget.usuariorow?.spd,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (containerAnexosForm1Row?.aaLinkdoc != null && containerAnexosForm1Row?.aaLinkdoc != '')
                                                                                          FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              await launchURL(containerAnexosForm1Row!.aaLinkdoc!);
                                                                                            },
                                                                                            text: 'Asesoramiento',
                                                                                            icon: const FaIcon(
                                                                                              FontAwesomeIcons.googleDrive,
                                                                                              size: 15.0,
                                                                                            ),
                                                                                            options: FFButtonOptions(
                                                                                              height: 30.0,
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: Colors.white,
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              elevation: 0.0,
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                          ),
                                                                                        if (containerAnexosForm1Row?.a1Linkdoc != null && containerAnexosForm1Row?.a1Linkdoc != '')
                                                                                          FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              await launchURL(containerAnexosForm1Row!.a1Linkdoc!);
                                                                                            },
                                                                                            text: 'Derivacion',
                                                                                            icon: const FaIcon(
                                                                                              FontAwesomeIcons.googleDrive,
                                                                                              size: 15.0,
                                                                                            ),
                                                                                            options: FFButtonOptions(
                                                                                              height: 30.0,
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: Colors.white,
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              elevation: 0.0,
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                          ),
                                                                                      ].divide(const SizedBox(width: 3.0)),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                          if (containeringresosIngresosRow.form1seccion1! &&
                                                                              containeringresosIngresosRow.form1seccion2! &&
                                                                              containeringresosIngresosRow.form1seccion5! &&
                                                                              containeringresosIngresosRow.form1seccion7! &&
                                                                              containeringresosIngresosRow.form1seccion9!)
                                                                            Padding(
                                                                              padding: const EdgeInsets.all(10.0),
                                                                              child: Container(
                                                                                height: 120.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Flexible(
                                                                                            child: Text(
                                                                                              'Caso de emergencia / Habiltar formulario 9',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    fontSize: 18.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          FlutterFlowRadioButton(
                                                                                            options: ['Si', 'No'].toList(),
                                                                                            onChanged: (val) async {
                                                                                              safeSetState(() {});
                                                                                              await IngresosTable().update(
                                                                                                data: {
                                                                                                  'emergencia': _model.radioButtonValue,
                                                                                                },
                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                  'id',
                                                                                                  containeringresosIngresosRow.id,
                                                                                                ),
                                                                                              );
                                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                                              await _model.waitForRequestCompleted();
                                                                                            },
                                                                                            controller: _model.radioButtonValueController ??= FormFieldController<String>(containeringresosIngresosRow.emergencia!),
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
                                                                                            direction: Axis.horizontal,
                                                                                            radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                            inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            toggleable: false,
                                                                                            horizontalAlignment: WrapAlignment.start,
                                                                                            verticalAlignment: WrapCrossAlignment.start,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    if (containeringresosIngresosRow.emergencia != null && containeringresosIngresosRow.emergencia != '')
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                        child: FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            if (containeringresosIngresosRow.emergencia == 'Si') {
                                                                                              await IngresosTable().update(
                                                                                                data: {
                                                                                                  'Form2': true,
                                                                                                  'Form3': true,
                                                                                                  'form1completo': true,
                                                                                                  'form4': true,
                                                                                                  'form9': true,
                                                                                                },
                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                  'id',
                                                                                                  containeringresosIngresosRow.id,
                                                                                                ),
                                                                                              );
                                                                                            } else {
                                                                                              await IngresosTable().update(
                                                                                                data: {
                                                                                                  'Form2': true,
                                                                                                  'Form3': true,
                                                                                                  'form1completo': true,
                                                                                                  'form4': true,
                                                                                                  'form9': false,
                                                                                                },
                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                  'id',
                                                                                                  containeringresosIngresosRow.id,
                                                                                                ),
                                                                                              );
                                                                                            }

                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return WebViewAware(
                                                                                                  child: AlertDialog(
                                                                                                    title: const Text('Ok para avanzar!!'),
                                                                                                    content: const Text('Se completaron los requisitos minimos para avanzar!!'),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                        child: const Text('Ok'),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                            safeSetState(() => _model.requestCompleter = null);
                                                                                            await _model.waitForRequestCompleted();
                                                                                          },
                                                                                          text: 'Ok para avanzar',
                                                                                          icon: const Icon(
                                                                                            Icons.save,
                                                                                            size: 15.0,
                                                                                          ),
                                                                                          options: FFButtonOptions(
                                                                                            width: 300.0,
                                                                                            height: 40.0,
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).success,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  color: Colors.white,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            elevation: 2.0,
                                                                                            borderSide: const BorderSide(
                                                                                              color: Colors.transparent,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                            hoverElevation: 4.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ].divide(const SizedBox(height: 10.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ].divide(const SizedBox(height: 4.0)),
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
                                                ),
                                            ].divide(const SizedBox(height: 24.0)),
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
          ),
        ),
      ),
    );
  }
}
