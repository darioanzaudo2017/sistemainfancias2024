import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
import '/components/barrade_navegacion_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'perfil_copy_model.dart';
export 'perfil_copy_model.dart';

class PerfilCopyWidget extends StatefulWidget {
  const PerfilCopyWidget({
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
  State<PerfilCopyWidget> createState() => _PerfilCopyWidgetState();
}

class _PerfilCopyWidgetState extends State<PerfilCopyWidget> {
  late PerfilCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerfilCopyModel());

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
          child: Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FutureBuilder<List<IngresosRow>>(
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
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Container(
                              width: 300.0,
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
                                                      wrapWithModel(
                                                        model: _model
                                                            .anexosbotoneraModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            AnexosbotoneraWidget(
                                                          ingresorow:
                                                              containeringresosIngresosRow,
                                                          exorow:
                                                              widget.rowexp!,
                                                          idingreso: widget
                                                              .idingreso!,
                                                          usuariosrow: widget
                                                              .usuariorow!,
                                                          reqacciones: true,
                                                          anexoeducacion: true,
                                                          reunioninter: true,
                                                          anexosalud: true,
                                                          entrevistannya: true,
                                                          entrevistaflia: true,
                                                          ampliacion: true,
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
                                                              listViewGrupoConvivienteRowList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewGrupoConvivienteRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewGrupoConvivienteRow =
                                                                  listViewGrupoConvivienteRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        16.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 65.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            7.0,
                                                                        color: Color(
                                                                            0x2F1D2429),
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
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      listViewGrupoConvivienteRow.nombre,
                                                                                      '0',
                                                                                    ),
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
                                                                                        listViewGrupoConvivienteRow.edad?.toString(),
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
                                                                        if (listViewGrupoConvivienteRow.idexppropio ==
                                                                            null)
                                                                          FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              _model.creaexpgrupoCopy = await ExpedienteTable().insert({
                                                                                'expediente': '',
                                                                                'fecha': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                'nombres': listViewGrupoConvivienteRow.nombre,
                                                                                'apellidos': listViewGrupoConvivienteRow.apellido,
                                                                                'dni': listViewGrupoConvivienteRow.dni,
                                                                                'spd': widget.rowexp?.spd,
                                                                                'derivacion': widget.rowexp?.derivacion,
                                                                                'canalIngr': widget.rowexp?.canalIngr,
                                                                                'epecificar': widget.rowexp?.epecificar,
                                                                                'actuacion': widget.rowexp?.actuacion,
                                                                                'profesional': widget.rowexp?.profesional,
                                                                                'fechaNac': supaSerialize<DateTime>(listViewGrupoConvivienteRow.fechaNacimiento),
                                                                                'edad': listViewGrupoConvivienteRow.edad,
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
                                                                                  listViewGrupoConvivienteRow.id,
                                                                                ),
                                                                              );
                                                                              await NNyATable().update(
                                                                                data: {
                                                                                  'idexppropio': _model.creaexpgrupoCopy?.id,
                                                                                },
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'id',
                                                                                  listViewGrupoConvivienteRow.idnnya,
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
                                                                                  return AlertDialog(
                                                                                    title: const Text('Se creo un expediente nuevo!'),
                                                                                    content: Text('Se creo un expediente nuevo relacionado a:${widget.rowexp?.nombres}, ${widget.rowexp?.apellidos}'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: const Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );

                                                                              safeSetState(() {});
                                                                            },
                                                                            text:
                                                                                'crear exp',
                                                                            options:
                                                                                FFButtonOptions(
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
                                                                        if (listViewGrupoConvivienteRow.idexppropio !=
                                                                            null)
                                                                          FlutterFlowIconButton(
                                                                            borderColor:
                                                                                const Color(0xFFE0E3E7),
                                                                            borderRadius:
                                                                                8.0,
                                                                            borderWidth:
                                                                                2.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.remove_red_eye_outlined,
                                                                              color: Color(0xFF57636C),
                                                                              size: 20.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              _model.exp = await VistaExpedientesUltimoEstadoTable().queryRows(
                                                                                queryFn: (q) => q.eqOrNull(
                                                                                  'id',
                                                                                  listViewGrupoConvivienteRow.idexppropio,
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
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
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
