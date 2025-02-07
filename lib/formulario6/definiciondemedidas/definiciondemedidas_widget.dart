import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/formcaratula_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/formulario1/formulario1/formulario1_widget.dart';
import '/formulario6/formulario6/formulario6_widget.dart';
import '/formulario7/formulario7/formulario7_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'definiciondemedidas_model.dart';
export 'definiciondemedidas_model.dart';

class DefiniciondemedidasWidget extends StatefulWidget {
  const DefiniciondemedidasWidget({
    super.key,
    required this.ingresorow,
    required this.rowexp,
    required this.usuariorow,
    required this.usuariosrol,
  });

  final IngresosRow? ingresorow;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final UsuariosRow? usuariorow;
  final VistaUsuariosRolesRow? usuariosrol;

  @override
  State<DefiniciondemedidasWidget> createState() =>
      _DefiniciondemedidasWidgetState();
}

class _DefiniciondemedidasWidgetState extends State<DefiniciondemedidasWidget> {
  late DefiniciondemedidasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DefiniciondemedidasModel());

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
            'Medidas',
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFAppState().spd,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF15161E),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          currentUserEmail,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF606A85),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.barradeNavegacionModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BarradeNavegacionWidget(
                                    exprow: widget.rowexp!,
                                    idexp: widget.rowexp?.id,
                                    usuariorow: widget.usuariorow!,
                                    parameter4: widget.rowexp?.spd,
                                    parameter5: widget.usuariorow?.spd,
                                    ingresorow: widget.ingresorow,
                                    idingreso: widget.ingresorow?.id,
                                    expediente: widget.rowexp?.expediente,
                                    fechaExp: widget.rowexp?.fecha,
                                    parameter10:
                                        widget.ingresorow?.carpetaDrive,
                                    urlcarpetadrive:
                                        widget.ingresorow?.linkcarpeta,
                                    adjuntar: true,
                                    imprimir: true,
                                    carpeta: true,
                                    ingreso: true,
                                    perfil: false,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.anexosbotoneraModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: AnexosbotoneraWidget(
                                    idingreso: widget.ingresorow!.id,
                                    etapa:
                                        'Definicion, sustitucion y seguimiento MPI',
                                    reqacciones: true,
                                    anexoeducacion: false,
                                    reunioninter: true,
                                    anexosalud: false,
                                    entrevistannya: true,
                                    entrevistaflia: true,
                                    ampliacion: true,
                                    ingresorow: widget.ingresorow,
                                    exorow: widget.rowexp!,
                                    usuariosrow: widget.usuariorow!,
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
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: FutureBuilder<List<IngresosRow>>(
                    future: IngresosTable().querySingleRow(
                      queryFn: (q) => q.eqOrNull(
                        'id',
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
                      List<IngresosRow> containerIngresosRowList =
                          snapshot.data!;

                      final containerIngresosRow =
                          containerIngresosRowList.isNotEmpty
                              ? containerIngresosRowList.first
                              : null;

                      return Container(
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.tarjetaencabezadoModel,
                                updateCallback: () => safeSetState(() {}),
                                child: TarjetaencabezadoWidget(
                                  editarcaratula: true,
                                  contactosref: true,
                                  cambia: true,
                                  exprow: widget.rowexp!,
                                  ingresorow: widget.ingresorow,
                                  usuariorow: widget.usuariorow!,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, -1.0),
                                child: Container(
                                  decoration: const BoxDecoration(),
                                  child: Flex(
                                    direction:
                                        (MediaQuery.sizeOf(context).width >
                                                1200.0)
                                            ? Axis.horizontal
                                            : Axis.vertical,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
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
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: FormcaratulaWidget(
                                                      usuariorow:
                                                          widget.usuariorow!,
                                                      idexp: widget.rowexp?.id,
                                                      editar: true,
                                                      dniok: false,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        text: 'Editar caratula',
                                        options: FFButtonOptions(
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Noto Sans JP',
                                                    color: const Color(0xFF39A9EF),
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Color(0xFF39A9EF),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
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
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: Formulario1Widget(
                                                      idingreso:
                                                          containerIngresosRow!,
                                                      rowexp: widget.rowexp!,
                                                      usuariorow:
                                                          widget.usuariorow!,
                                                      usuariosrol:
                                                          widget.usuariosrol!,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        text:
                                            'Completar Recepcion de la demanda',
                                        options: FFButtonOptions(
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Noto Sans JP',
                                                    color: const Color(0xFF39A9EF),
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Color(0xFF39A9EF),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                      ),
                                    ]
                                        .divide(
                                            (MediaQuery.sizeOf(context).width >
                                                    1200.0)
                                                ? const SizedBox(width: 10.0)
                                                : const SizedBox(height: 10.0))
                                        .around(
                                            (MediaQuery.sizeOf(context).width >
                                                    1200.0)
                                                ? const SizedBox(width: 10.0)
                                                : const SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 10.0, 0.0),
                                  child: FutureBuilder<
                                      List<GrupofamiliarexpedientesRow>>(
                                    future: GrupofamiliarexpedientesTable()
                                        .querySingleRow(
                                      queryFn: (q) => q.eqOrNull(
                                        'idexpediente',
                                        widget.rowexp?.id,
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
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<GrupofamiliarexpedientesRow>
                                          containerGrupofamiliarexpedientesRowList =
                                          snapshot.data!;

                                      final containerGrupofamiliarexpedientesRow =
                                          containerGrupofamiliarexpedientesRowList
                                                  .isNotEmpty
                                              ? containerGrupofamiliarexpedientesRowList
                                                  .first
                                              : null;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                title: const Text(
                                                                    'Copiar lista de medidas'),
                                                                content: const Text(
                                                                    'Estas por copiar la lista de medidas del NNyA principal'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: const Text(
                                                                        'Cancelar'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: const Text(
                                                                        'Confirmar'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ) ??
                                                        false;
                                                if (confirmDialogResponse) {
                                                  _model.expedienteprincipal =
                                                      await VistaExpedientesUltimoEstadoTable()
                                                          .queryRows(
                                                    queryFn: (q) => q.eqOrNull(
                                                      'idexpediente',
                                                      containerGrupofamiliarexpedientesRow
                                                          ?.expedienteprincipal,
                                                    ),
                                                  );
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title: const Text('1'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: const Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  _model.form6principal =
                                                      await Formulario6Table()
                                                          .queryRows(
                                                    queryFn: (q) => q.eqOrNull(
                                                      'idIngresoform6',
                                                      _model
                                                          .expedienteprincipal
                                                          ?.firstOrNull
                                                          ?.idIngreso,
                                                    ),
                                                  );
                                                  while (_model.contador! <=
                                                      _model.form6principal!
                                                          .length) {
                                                    _model.creaform60 =
                                                        await Formulario6Table()
                                                            .insert({
                                                      'propuestasDemedidas': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.propuestasDemedidas,
                                                      'DescripcionDeAcciones': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.descripcionDeAcciones,
                                                      'Responsables': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.responsables,
                                                      'plazos': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.plazos,
                                                      'AccionesDeSeguimiento': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.accionesDeSeguimiento,
                                                      'Fecha': supaSerialize<
                                                              DateTime>(
                                                          _model.form6principal
                                                              ?.elementAtOrNull(
                                                                  _model
                                                                      .contador!)
                                                              ?.fecha),
                                                      'idIngresoform6': widget
                                                          .ingresorow?.id,
                                                      'idExpform6':
                                                          widget.rowexp?.id,
                                                      'estado': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.estado,
                                                      'idmedidasustiuida': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.idmedidasustiuida,
                                                      'DerechoVul': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.derechoVul,
                                                      'subDerecho': _model
                                                          .form6principal
                                                          ?.elementAtOrNull(
                                                              _model.contador!)
                                                          ?.subDerecho,
                                                    });
                                                    await ResuestasForm6Table()
                                                        .insert({
                                                      'inform6':
                                                          _model.creaform60?.id,
                                                      'idingreso': widget
                                                          .ingresorow?.id,
                                                      'respuesta': true,
                                                      'reiteracion': false,
                                                      'elevacion': false,
                                                    });
                                                    await IngresosTable()
                                                        .update(
                                                      data: {
                                                        'Form7': true,
                                                        'form6completo': true,
                                                        'form9': true,
                                                        'updated_at': supaSerialize<
                                                                DateTime>(
                                                            getCurrentTimestamp),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        widget.ingresorow?.id,
                                                      ),
                                                    );
                                                    _model.contador =
                                                        _model.contador! + 1;
                                                    safeSetState(() {});
                                                  }
                                                  _model.contador = 0;
                                                  safeSetState(() {});
                                                }

                                                safeSetState(() {});
                                              },
                                              text:
                                                  'Cargar informacion de expediente principal',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 5.0))
                                              .around(const SizedBox(height: 5.0)),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child:
                                          FutureBuilder<List<Formulario6Row>>(
                                        future: (_model.requestCompleter1 ??=
                                                Completer<
                                                    List<Formulario6Row>>()
                                                  ..complete(Formulario6Table()
                                                      .queryRows(
                                                    queryFn: (q) => q.eqOrNull(
                                                      'idIngresoform6',
                                                      widget.ingresorow?.id,
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
                                                child:
                                                    CircularProgressIndicator(
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
                                          List<Formulario6Row>
                                              containermedidasFormulario6RowList =
                                              snapshot.data!;

                                          return Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 603.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
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
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Text(
                                                            '4. Definicion, sustitucion y seguimiento  de la MPI',
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
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                1.0, -1.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
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
                                                                          Formulario6Widget(
                                                                        idingreso:
                                                                            widget.ingresorow,
                                                                        rowexp:
                                                                            widget.rowexp,
                                                                        editar:
                                                                            false,
                                                                        idform6:
                                                                            0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(() =>
                                                                    _model.form6 =
                                                                        value));

                                                            if (_model.form6 ==
                                                                'creado') {
                                                              safeSetState(() =>
                                                                  _model.requestCompleter1 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted1();
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                          text:
                                                              'Agregar Medida',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
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
                                                            elevation: 3.0,
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 16.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x2B202529),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final listdefiniciondemedidas =
                                                              containermedidasFormulario6RowList
                                                                  .toList();

                                                          return FlutterFlowDataTable<
                                                              Formulario6Row>(
                                                            controller: _model
                                                                .paginatedDataTableController,
                                                            data:
                                                                listdefiniciondemedidas,
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
                                                                    'Propuesta',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
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
                                                                    'Descripcion de acciones',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                fixedWidth:
                                                                    400.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Responsable',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                fixedWidth:
                                                                    110.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Fecha',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans JP',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                fixedWidth:
                                                                    100.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Derecho Vulnerado',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans JP',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
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
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Seguimiento',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans JP',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            dataRowBuilder:
                                                                (listdefiniciondemedidasItem,
                                                                        listdefiniciondemedidasIndex,
                                                                        selected,
                                                                        onSelectChanged) =>
                                                                    DataRow(
                                                              color:
                                                                  WidgetStateProperty
                                                                      .all(
                                                                listdefiniciondemedidasIndex %
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
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      SizedBox(
                                                                        height:
                                                                            100.0,
                                                                        child:
                                                                            VerticalDivider(
                                                                          thickness:
                                                                              5.0,
                                                                          color: listdefiniciondemedidasItem.estado == 'Activa'
                                                                              ? FlutterFlowTheme.of(context).secondary
                                                                              : FlutterFlowTheme.of(context).tertiary,
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listdefiniciondemedidasItem.propuestasDemedidas,
                                                                            'Sin dato',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listdefiniciondemedidasItem
                                                                          .descripcionDeAcciones,
                                                                      'Sin dato',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listdefiniciondemedidasItem
                                                                          .responsables,
                                                                      'Sin dato',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            dateTimeFormat(
                                                                              "d/M/y",
                                                                              listdefiniciondemedidasItem.fecha,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            'Sin dato',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                FutureBuilder<
                                                                    List<
                                                                        ListaDerechosVulneradosexpedienteRow>>(
                                                                  future: ListaDerechosVulneradosexpedienteTable()
                                                                      .querySingleRow(
                                                                    queryFn: (q) =>
                                                                        q.eqOrNull(
                                                                      'id',
                                                                      listdefiniciondemedidasItem
                                                                          .idlistaderechos,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<ListaDerechosVulneradosexpedienteRow>
                                                                        containerListaDerechosVulneradosexpedienteRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    final containerListaDerechosVulneradosexpedienteRow = containerListaDerechosVulneradosexpedienteRowList
                                                                            .isNotEmpty
                                                                        ? containerListaDerechosVulneradosexpedienteRowList
                                                                            .first
                                                                        : null;

                                                                    return Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  containerListaDerechosVulneradosexpedienteRow?.derecho,
                                                                                  'Derecho',
                                                                                ).maybeHandleOverflow(
                                                                                  maxChars: 15,
                                                                                  replacement: '…',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  containerListaDerechosVulneradosexpedienteRow?.subcategoria,
                                                                                  'Subcategoria',
                                                                                ).maybeHandleOverflow(
                                                                                  maxChars: 20,
                                                                                  replacement: '…',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'Respuestaform6page',
                                                                            queryParameters:
                                                                                {
                                                                              'idingreso': serializeParam(
                                                                                widget.ingresorow,
                                                                                ParamType.SupabaseRow,
                                                                              ),
                                                                              'expedienterow': serializeParam(
                                                                                widget.rowexp,
                                                                                ParamType.SupabaseRow,
                                                                              ),
                                                                              'idform6': serializeParam(
                                                                                listdefiniciondemedidasItem.id,
                                                                                ParamType.int,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        text:
                                                                            'Ver respuestas',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          height:
                                                                              30.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          elevation:
                                                                              3.0,
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
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
                                                                                      child: Formulario6Widget(
                                                                                        idingreso: widget.ingresorow,
                                                                                        rowexp: widget.rowexp,
                                                                                        editar: true,
                                                                                        idform6: listdefiniciondemedidasItem.id,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() => _model.form6edit = value));

                                                                            if (_model.form6edit ==
                                                                                'sustituida') {
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
                                                                                        child: Formulario6Widget(
                                                                                          idingreso: widget.ingresorow,
                                                                                          rowexp: widget.rowexp,
                                                                                          editar: false,
                                                                                          idform6: listdefiniciondemedidasItem.id,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));

                                                                              safeSetState(() => _model.requestCompleter1 = null);
                                                                              await _model.waitForRequestCompleted1();
                                                                            } else {
                                                                              safeSetState(() => _model.requestCompleter1 = null);
                                                                              await _model.waitForRequestCompleted1();
                                                                            }

                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              'Ver y editar',
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.remove_red_eye_outlined,
                                                                            size:
                                                                                15.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                130.0,
                                                                            height:
                                                                                30.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                const Color(0x4C4B39EF),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  color: const Color(0xFF14181B),
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0xFF4B39EF),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            5.0)),
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
                                                                true,
                                                            headingRowHeight:
                                                                56.0,
                                                            dataRowHeight:
                                                                120.0,
                                                            columnSpacing: 10.0,
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
                                                                    .primary,
                                                            horizontalDividerThickness:
                                                                0.5,
                                                            addVerticalDivider:
                                                                true,
                                                            verticalDividerColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            verticalDividerThickness:
                                                                0.5,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 5.0)),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    if (containerIngresosRow?.form7 ?? true)
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child:
                                            FutureBuilder<List<Formulario7Row>>(
                                          future: (_model.requestCompleter2 ??=
                                                  Completer<
                                                      List<Formulario7Row>>()
                                                    ..complete(
                                                        Formulario7Table()
                                                            .querySingleRow(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'idIngreso',
                                                        widget.ingresorow?.id,
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
                                            List<Formulario7Row>
                                                containerform7Formulario7RowList =
                                                snapshot.data!;

                                            final containerform7Formulario7Row =
                                                containerform7Formulario7RowList
                                                        .isNotEmpty
                                                    ? containerform7Formulario7RowList
                                                        .first
                                                    : null;

                                            return Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Container(
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Padding(
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
                                                                          .min,
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
                                                                          if (containerIngresosRow!.form7! &&
                                                                              !containerIngresosRow
                                                                                  .form7completo!) {
                                                                            return FlutterFlowTheme.of(context).alternate;
                                                                          } else if (containerIngresosRow.form7! &&
                                                                              containerIngresosRow.form7completo!) {
                                                                            return FlutterFlowTheme.of(context).accent2;
                                                                          } else {
                                                                            return const Color(0x00000000);
                                                                          }
                                                                        }(),
                                                                        borderRadius:
                                                                            const BorderRadius.only(
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
                                                                          Text(
                                                                            '5. Acta de la medida',
                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                  fontFamily: 'Noto Sans JP',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Fecha de acta: ${dateTimeFormat(
                                                                              "d/M/y",
                                                                              containerform7Formulario7Row?.fecha,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )}',
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  fontFamily: 'Noto Sans JP',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          if (widget.rowexp?.spd ==
                                                                              widget.usuariorow?.spd)
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    if (containerform7Formulario7Row?.linkDocs == null || containerform7Formulario7Row?.linkDocs == '') {
                                                                                      await ActaCall.call(
                                                                                        idingreso: widget.ingresorow?.id,
                                                                                        edit: 0,
                                                                                        carpeta: widget.ingresorow?.idcarpeta,
                                                                                      );

                                                                                      await Future.delayed(const Duration(milliseconds: 3500));
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return WebViewAware(
                                                                                            child: AlertDialog(
                                                                                              title: const Text('Carga correcta'),
                                                                                              content: const Text('EL acta se genero un tu drive correctamente!!'),
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
                                                                                      safeSetState(() => _model.requestCompleter2 = null);
                                                                                      await _model.waitForRequestCompleted2();
                                                                                    } else {
                                                                                      await ActaCall.call(
                                                                                        idingreso: widget.ingresorow?.id,
                                                                                        edit: 1,
                                                                                        carpeta: widget.ingresorow?.idcarpeta,
                                                                                      );

                                                                                      await Future.delayed(const Duration(milliseconds: 3500));
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return WebViewAware(
                                                                                            child: AlertDialog(
                                                                                              title: const Text('Carga correcta'),
                                                                                              content: const Text('EL acta se genero un tu drive correctamente!!'),
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
                                                                                      safeSetState(() => _model.requestCompleter2 = null);
                                                                                      await _model.waitForRequestCompleted2();
                                                                                    }
                                                                                  },
                                                                                  text: 'Imprimir acta',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: () {
                                                                                      if (containerform7Formulario7Row?.linkDocs == null || containerform7Formulario7Row?.linkDocs == '') {
                                                                                        return FlutterFlowTheme.of(context).tertiary;
                                                                                      } else if (containerform7Formulario7Row?.linkDocs != null && containerform7Formulario7Row?.linkDocs != '') {
                                                                                        return FlutterFlowTheme.of(context).secondary;
                                                                                      } else {
                                                                                        return const Color(0x00000000);
                                                                                      }
                                                                                    }(),
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
                                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                                  ),
                                                                                ),
                                                                                if (containerform7Formulario7Row?.linkDocs != null && containerform7Formulario7Row?.linkDocs != '')
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: FlutterFlowTheme.of(context).primary,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                    icon: FaIcon(
                                                                                      FontAwesomeIcons.googleDrive,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      await launchURL(containerform7Formulario7Row!.linkDocs!);
                                                                                    },
                                                                                  ),
                                                                              ].divide(const SizedBox(width: 10.0)),
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
                                                                  width: 200.0,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if (widget
                                                                              .rowexp
                                                                              ?.spd ==
                                                                          widget
                                                                              .usuariorow
                                                                              ?.spd)
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            if (!containerIngresosRow!.form7completo!)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 1.0),
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
                                                                                              child: Formulario7Widget(
                                                                                                idingreso: widget.ingresorow,
                                                                                                rowexp: widget.rowexp,
                                                                                                editar: false,
                                                                                                usuariorow: widget.usuariorow!,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() => _model.creoacta = value));

                                                                                    if (_model.creoacta!) {
                                                                                      safeSetState(() => _model.requestCompleter2 = null);
                                                                                      await _model.waitForRequestCompleted2();
                                                                                      safeSetState(() => _model.requestCompleter2 = null);
                                                                                      await _model.waitForRequestCompleted2();
                                                                                    }

                                                                                    safeSetState(() {});
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
                                                                            if (containerIngresosRow.form7completo ??
                                                                                true)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 1.0),
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
                                                                                              child: Formulario7Widget(
                                                                                                idingreso: widget.ingresorow,
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
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            5.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ]
                                .divide(const SizedBox(height: 10.0))
                                .around(const SizedBox(height: 10.0)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
