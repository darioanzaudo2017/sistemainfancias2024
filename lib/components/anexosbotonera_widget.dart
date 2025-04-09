import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/adjuntardocumento_widget.dart';
import '/components/listareunioninterinstitucional_widget.dart';
import '/entrevistas/anexo5requerimientoacciones/anexo5requerimientoacciones_widget.dart';
import '/entrevistas/anexoeducacionsolicitud/anexoeducacionsolicitud_widget.dart';
import '/entrevistas/anexoinstitucionsalud/anexoinstitucionsalud_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'dart:async';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'anexosbotonera_model.dart';
export 'anexosbotonera_model.dart';

class AnexosbotoneraWidget extends StatefulWidget {
  const AnexosbotoneraWidget({
    super.key,
    this.ingresorow,
    required this.exorow,
    required this.idingreso,
    required this.usuariosrow,
    this.etapa,
    required this.reqacciones,
    required this.anexoeducacion,
    required this.reunioninter,
    required this.anexosalud,
    required this.entrevistannya,
    required this.entrevistaflia,
    required this.ampliacion,
    this.editar,
    this.usuariorol,
    required this.spd,
  });

  final IngresosRow? ingresorow;
  final VistaExpedientesUltimoEstadoRow? exorow;
  final int? idingreso;
  final UsuariosRow? usuariosrow;
  final String? etapa;
  final bool? reqacciones;
  final bool? anexoeducacion;
  final bool? reunioninter;
  final bool? anexosalud;
  final bool? entrevistannya;
  final bool? entrevistaflia;
  final bool? ampliacion;

  /// editar
  final bool? editar;

  final VistaUsuariosRolesRow? usuariorol;
  final SpdRow? spd;

  @override
  State<AnexosbotoneraWidget> createState() => _AnexosbotoneraWidgetState();
}

class _AnexosbotoneraWidgetState extends State<AnexosbotoneraWidget> {
  late AnexosbotoneraModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnexosbotoneraModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UsuariosRow>>(
      future: UsuariosTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'id',
          currentUserUid,
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
        List<UsuariosRow> containerUsuariosRowList = snapshot.data!;

        final containerUsuariosRow = containerUsuariosRowList.isNotEmpty
            ? containerUsuariosRowList.first
            : null;

        return Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: 350.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  controller: _model.expandableExpandableController,
                  child: ExpandablePanel(
                    header: Text(
                      'Anexos',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Noto Sans JP',
                            color: Colors.black,
                            letterSpacing: 0.0,
                          ),
                    ),
                    collapsed: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans JP',
                                    color: Color(0x8A000000),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    expanded: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Anexos',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Noto Sans JP',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FutureBuilder<
                                    List<Anexo5requerimientoaccionesRow>>(
                                  future: Anexo5requerimientoaccionesTable()
                                      .queryRows(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<Anexo5requerimientoaccionesRow>
                                        containerAnexo5requerimientoaccionesRowList =
                                        snapshot.data!;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // no va aca poner si osi en el form 6
                                          Flexible(
                                            child: FFButtonWidget(
                                              onPressed: !widget.reqacciones!
                                                  ? null
                                                  : () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  Anexo5requerimientoaccionesWidget(
                                                                rowingreso: widget
                                                                    .ingresorow!,
                                                                rowexp: widget
                                                                    .exorow!,
                                                                usuario: widget
                                                                    .usuariosrow!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                              text: 'Requerimiento de Acciones',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC5BFF8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  containerAnexo5requerimientoaccionesRowList
                                                      .length
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FutureBuilder<
                                    List<AnexoinstitucioneeducacionRow>>(
                                  future: (_model.requestCompleter2 ??= Completer<
                                          List<AnexoinstitucioneeducacionRow>>()
                                        ..complete(
                                            AnexoinstitucioneeducacionTable()
                                                .querySingleRow(
                                          queryFn: (q) => q.eqOrNull(
                                            'idingreso',
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<AnexoinstitucioneeducacionRow>
                                        containereducacionAnexoinstitucioneeducacionRowList =
                                        snapshot.data!;

                                    final containereducacionAnexoinstitucioneeducacionRow =
                                        containereducacionAnexoinstitucioneeducacionRowList
                                                .isNotEmpty
                                            ? containereducacionAnexoinstitucioneeducacionRowList
                                                .first
                                            : null;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: FFButtonWidget(
                                              onPressed: !widget
                                                      .anexoeducacion!
                                                  ? null
                                                  : () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  AnexoeducacionsolicitudWidget(
                                                                rowingreso: widget
                                                                    .ingresorow!,
                                                                rowexp: widget
                                                                    .exorow!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() =>
                                                              _model.creosolicitudeducacion =
                                                                  value));

                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  2000));
                                                      if (_model
                                                          .creosolicitudeducacion!) {
                                                        safeSetState(() => _model
                                                                .requestCompleter2 =
                                                            null);
                                                        await _model
                                                            .waitForRequestCompleted2();
                                                      }

                                                      safeSetState(() {});
                                                    },
                                              text:
                                                  'Solicitud informacion a educacion',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC5BFF8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                          ),
                                          if (containereducacionAnexoinstitucioneeducacionRow
                                                      ?.linkdoc !=
                                                  null &&
                                              containereducacionAnexoinstitucioneeducacionRow
                                                      ?.linkdoc !=
                                                  '')
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              icon: FaIcon(
                                                FontAwesomeIcons.googleDrive,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                await launchURL(
                                                    containereducacionAnexoinstitucioneeducacionRow!
                                                        .linkdoc!);
                                              },
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FutureBuilder<
                                    List<Anexo4RequerimientoaccionesRow>>(
                                  future: Anexo4RequerimientoaccionesTable()
                                      .queryRows(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<Anexo4RequerimientoaccionesRow>
                                        containerAnexo4RequerimientoaccionesRowList =
                                        snapshot.data!;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: FFButtonWidget(
                                              onPressed: !widget.reunioninter!
                                                  ? null
                                                  : () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  ListareunioninterinstitucionalWidget(
                                                                idingreso: widget
                                                                    .idingreso,
                                                                idingres: widget
                                                                    .ingresorow!,
                                                                idexprow: widget
                                                                    .exorow!,
                                                                formulario:
                                                                    widget
                                                                        .etapa!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                              text:
                                                  'Reunion insterinstitucional',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC5BFF8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  containerAnexo4RequerimientoaccionesRowList
                                                      .length
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FutureBuilder<
                                    List<AnexoinstitucionesaludRow>>(
                                  future:
                                      (_model.requestCompleter1 ??= Completer<
                                              List<AnexoinstitucionesaludRow>>()
                                            ..complete(
                                                AnexoinstitucionesaludTable()
                                                    .querySingleRow(
                                              queryFn: (q) => q.eqOrNull(
                                                'idingreso',
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<AnexoinstitucionesaludRow>
                                        containersaludAnexoinstitucionesaludRowList =
                                        snapshot.data!;

                                    final containersaludAnexoinstitucionesaludRow =
                                        containersaludAnexoinstitucionesaludRowList
                                                .isNotEmpty
                                            ? containersaludAnexoinstitucionesaludRowList
                                                .first
                                            : null;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: FFButtonWidget(
                                              onPressed: !widget.anexosalud!
                                                  ? null
                                                  : () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  AnexoinstitucionsaludWidget(
                                                                rowingreso: widget
                                                                    .ingresorow!,
                                                                rowexp: widget
                                                                    .exorow!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() =>
                                                              _model.creosolicitudsalud =
                                                                  value));

                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  2000));
                                                      if (_model
                                                          .creosolicitudsalud!) {
                                                        safeSetState(() => _model
                                                                .requestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForRequestCompleted1();
                                                      }

                                                      safeSetState(() {});
                                                    },
                                              text:
                                                  'Solicitud de informacion a Salud',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC5BFF8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                          ),
                                          if (containersaludAnexoinstitucionesaludRow
                                                      ?.linkdoc !=
                                                  null &&
                                              containersaludAnexoinstitucionesaludRow
                                                      ?.linkdoc !=
                                                  '')
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              icon: FaIcon(
                                                FontAwesomeIcons.googleDrive,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                await launchURL(
                                                    containersaludAnexoinstitucionesaludRow!
                                                        .linkdoc!);
                                              },
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FutureBuilder<
                                    List<AmpliaciondeinformacionRow>>(
                                  future:
                                      AmpliaciondeinformacionTable().queryRows(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<AmpliaciondeinformacionRow>
                                        containerAmpliaciondeinformacionRowList =
                                        snapshot.data!;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: FFButtonWidget(
                                              onPressed: !widget.ampliacion!
                                                  ? null
                                                  : () async {
                                                      context.pushNamed(
                                                        EntrevistasCopyWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'ingresorow':
                                                              serializeParam(
                                                            widget
                                                                .ingresorow?.id,
                                                            ParamType.int,
                                                          ),
                                                          'rowexp':
                                                              serializeParam(
                                                            widget.exorow,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                          'usuariorow':
                                                              serializeParam(
                                                            widget.usuariosrow,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                          'usuariorol':
                                                              serializeParam(
                                                            widget.usuariorol,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                          'spd': serializeParam(
                                                            widget.spd,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                              text: 'Ampliacion de info',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFC5BFF8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  containerAmpliaciondeinformacionRowList
                                                      .length
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: AdjuntardocumentoWidget(
                                              exprow: widget.exorow,
                                              ingrow: widget.ingresorow,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.easeInOut,
                                    width: double.infinity,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.upload_file,
                                            color: Color(0xFF15161E),
                                            size: 24.0,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Adjuntar documentos',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                            ].divide(SizedBox(height: 5.0)),
                          ),
                        ),
                      ),
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
