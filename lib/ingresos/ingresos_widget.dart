import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'ingresos_model.dart';
export 'ingresos_model.dart';

class IngresosWidget extends StatefulWidget {
  const IngresosWidget({
    super.key,
    this.idexpediente,
    this.idexp,
    required this.usuariorow,
    this.spd,
    this.idcarpeta,
  });

  final VistaExpedientesUltimoEstadoRow? idexpediente;
  final int? idexp;
  final UsuariosRow? usuariorow;
  final SpdRow? spd;
  final String? idcarpeta;

  @override
  State<IngresosWidget> createState() => _IngresosWidgetState();
}

class _IngresosWidgetState extends State<IngresosWidget> {
  late IngresosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IngresosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VistaIngresosDiasRow>>(
      future:
          (_model.requestCompleter ??= Completer<List<VistaIngresosDiasRow>>()
                ..complete(VistaIngresosDiasTable().queryRows(
                  queryFn: (q) => q
                      .eqOrNull(
                        'idexpediente',
                        widget.idexp,
                      )
                      .order('created_at'),
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
        List<VistaIngresosDiasRow> ingresosVistaIngresosDiasRowList =
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
                'Ingresos',
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
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.barradeNavegacionModel,
                            updateCallback: () => safeSetState(() {}),
                            child: BarradeNavegacionWidget(
                              idexp: widget.idexp,
                              parameter10: false,
                              adjuntar: false,
                              imprimir: false,
                              carpeta: false,
                              ingreso: false,
                              perfil: false,
                              exprow: widget.idexpediente!,
                              usuariorow: widget.usuariorow!,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<
                                    List<VistaExpedientesUltimoEstadoRow>>(
                                  future: VistaExpedientesUltimoEstadoTable()
                                      .querySingleRow(
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VistaExpedientesUltimoEstadoRow>
                                        containerVistaExpedientesUltimoEstadoRowList =
                                        snapshot.data!;

                                    final containerVistaExpedientesUltimoEstadoRow =
                                        containerVistaExpedientesUltimoEstadoRowList
                                                .isNotEmpty
                                            ? containerVistaExpedientesUltimoEstadoRowList
                                                .first
                                            : null;

                                    return SafeArea(
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.918,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x49F1F4F8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
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
                                                                const TarjetaencabezadoWidget(),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Cantidad de ingresos: ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    ingresosVistaIngresosDiasRowList
                                                                        .length
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              if (ingresosVistaIngresosDiasRowList
                                                                          .where((e) =>
                                                                              e.estado ==
                                                                              'Abierto')
                                                                          .toList().isNotEmpty
                                                                  ? false
                                                                  : true)
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    _model.caprtetaexp =
                                                                        await ImpresionesExpedientesTable()
                                                                            .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eqOrNull(
                                                                        'idexpediente',
                                                                        widget
                                                                            .idexp,
                                                                      ),
                                                                    );
                                                                    _model.crearingreso =
                                                                        await IngresosTable()
                                                                            .insert({
                                                                      'form1':
                                                                          true,
                                                                      'Form2':
                                                                          false,
                                                                      'Form3':
                                                                          false,
                                                                      'form4':
                                                                          false,
                                                                      'form5':
                                                                          false,
                                                                      'Form7':
                                                                          false,
                                                                      'form8':
                                                                          false,
                                                                      'form9':
                                                                          false,
                                                                      'idexpediente':
                                                                          widget
                                                                              .idexp,
                                                                      'Estado':
                                                                          'Abierto',
                                                                      'form6':
                                                                          false,
                                                                      'form1seccion1':
                                                                          false,
                                                                      'form1seccion2':
                                                                          false,
                                                                      'form1seccion3':
                                                                          false,
                                                                      'form1seccion4':
                                                                          false,
                                                                      'form1seccion5':
                                                                          false,
                                                                      'form1seccion6':
                                                                          false,
                                                                      'form1completo':
                                                                          false,
                                                                      'form2completo':
                                                                          false,
                                                                      'form3completo':
                                                                          false,
                                                                      'form4completo':
                                                                          false,
                                                                      'form5completo':
                                                                          false,
                                                                      'form6completo':
                                                                          false,
                                                                      'form7completo':
                                                                          false,
                                                                      'form8completo':
                                                                          false,
                                                                      'form9completo':
                                                                          false,
                                                                      'form1seccion7':
                                                                          false,
                                                                      'form1seccion8':
                                                                          false,
                                                                      'form1seccion9':
                                                                          false,
                                                                      'emergencia':
                                                                          '',
                                                                      'carpetaDrive':
                                                                          true,
                                                                      'listadoimpresiones':
                                                                          false,
                                                                      'updated_at':
                                                                          supaSerialize<DateTime>(
                                                                              getCurrentTimestamp),
                                                                      'iduser':
                                                                          currentUserUid,
                                                                    });
                                                                    _model.apiResultz88 =
                                                                        await CrearCarpetaIngresoCall
                                                                            .call(
                                                                      expediente:
                                                                          containerVistaExpedientesUltimoEstadoRow
                                                                              ?.expediente,
                                                                      idingreso: _model
                                                                          .crearingreso
                                                                          ?.id,
                                                                      fecha:
                                                                          dateTimeFormat(
                                                                        "d/M/y",
                                                                        _model
                                                                            .crearingreso
                                                                            ?.createdAt,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      carpeta: _model
                                                                          .caprtetaexp
                                                                          ?.firstOrNull
                                                                          ?.idcarpeta,
                                                                    );

                                                                    _model.apiResultgyy =
                                                                        await CrearlistadocumentosadjuntosCall
                                                                            .call(
                                                                      idexpe: widget
                                                                          .idexp,
                                                                      idingreso: _model
                                                                          .crearingreso
                                                                          ?.id,
                                                                    );

                                                                    await IngresosTable()
                                                                        .update(
                                                                      data: {
                                                                        'listadoimpresiones':
                                                                            true,
                                                                      },
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eqOrNull(
                                                                        'id',
                                                                        _model
                                                                            .crearingreso
                                                                            ?.id,
                                                                      ),
                                                                    );
                                                                    safeSetState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Agregar ingreso',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        230.0,
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
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
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      2.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        450.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0x33000000),
                                                                          offset:
                                                                              Offset(
                                                                            2.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          20.0),
                                                                      child:
                                                                          Builder(
                                                                        builder:
                                                                            (context) {
                                                                          final containerVar =
                                                                              ingresosVistaIngresosDiasRowList.toList();

                                                                          return ListView
                                                                              .separated(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 10.0),
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            itemCount:
                                                                                containerVar.length,
                                                                            separatorBuilder: (_, __) =>
                                                                                const SizedBox(height: 10.0),
                                                                            itemBuilder:
                                                                                (context, containerVarIndex) {
                                                                              final containerVarItem = containerVar[containerVarIndex];
                                                                              return Align(
                                                                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                child: Material(
                                                                                  color: Colors.transparent,
                                                                                  elevation: 5.0,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 425.0,
                                                                                            decoration: const BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 8.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 10.0,
                                                                                                        height: 50.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          borderRadius: const BorderRadius.only(
                                                                                                            bottomLeft: Radius.circular(0.0),
                                                                                                            bottomRight: Radius.circular(0.0),
                                                                                                            topLeft: Radius.circular(10.0),
                                                                                                            topRight: Radius.circular(0.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Align(
                                                                                                        alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                                              children: [
                                                                                                                if (containerVarItem.estado == 'Cerrado')
                                                                                                                  Container(
                                                                                                                    width: 100.0,
                                                                                                                    height: 30.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                                        bottomLeft: Radius.circular(0.0),
                                                                                                                        bottomRight: Radius.circular(20.0),
                                                                                                                        topLeft: Radius.circular(20.0),
                                                                                                                        topRight: Radius.circular(20.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    child: Align(
                                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        'Cerrado',
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (containerVarItem.estado == 'Abierto')
                                                                                                                  Container(
                                                                                                                    width: 100.0,
                                                                                                                    height: 30.0,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).success,
                                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                                        bottomLeft: Radius.circular(0.0),
                                                                                                                        bottomRight: Radius.circular(20.0),
                                                                                                                        topLeft: Radius.circular(20.0),
                                                                                                                        topRight: Radius.circular(20.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    child: Align(
                                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        'Abierto',
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Noto Sans JP',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(width: 16.0)),
                                                                                                  ),
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              'Datos del Ingreso',
                                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Text(
                                                                                                              'Fecha de Creación: ${dateTimeFormat(
                                                                                                                "d/M/y",
                                                                                                                containerVarItem.createdAt,
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              )}',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Text(
                                                                                                              'Dias: ${containerVarItem.diasCierre?.toString()}',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Text(
                                                                                                              'Dias de la ultima actualizacion: ${dateTimeFormat(
                                                                                                                "relative",
                                                                                                                containerVarItem.updatedAt,
                                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                                              )}',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ].divide(const SizedBox(height: 4.0)),
                                                                                                        ),
                                                                                                        Align(
                                                                                                          alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                                          child: Text(
                                                                                                            'Estado de avance',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '1',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form1! && containerVarItem.form1completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form1! && containerVarItem.form1completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '2',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form2! && !containerVarItem.form2completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form2! && !containerVarItem.form2completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form2! && containerVarItem.form2completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form2! && !containerVarItem.form2completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form2! && !containerVarItem.form2completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form2! && containerVarItem.form2completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '3',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form3! && !containerVarItem.form3completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form3! && !containerVarItem.form3completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form3! && containerVarItem.form3completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form3! && !containerVarItem.form3completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form3! && !containerVarItem.form3completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form3! && containerVarItem.form3completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '4',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form4! && !containerVarItem.form4completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form4! && !containerVarItem.form4completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form4! && containerVarItem.form4completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form4! && !containerVarItem.form4completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form4! && !containerVarItem.form4completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form4! && containerVarItem.form4completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '5',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form5! && !containerVarItem.form5completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form5! && !containerVarItem.form5completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form5! && containerVarItem.form5completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form5! && !containerVarItem.form5completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form5! && !containerVarItem.form5completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form5! && containerVarItem.form5completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '6 y 8',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form6! && !containerVarItem.form6completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form6! && !containerVarItem.form6completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form6! && containerVarItem.form6completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form6! && !containerVarItem.form6completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form6! && !containerVarItem.form6completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form6! && containerVarItem.form6completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '7',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form7! && !containerVarItem.form7completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form7! && containerVarItem.form7completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form7! && !containerVarItem.form7completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form7! && containerVarItem.form7completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                              Container(
                                                                                                                width: 40.0,
                                                                                                                height: 40.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                ),
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Text(
                                                                                                                      '9',
                                                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            fontSize: 18.0,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w600,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                    Container(
                                                                                                                      width: 50.0,
                                                                                                                      height: 10.0,
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        color: () {
                                                                                                                          if (!containerVarItem.form9! && !containerVarItem.form9completo!) {
                                                                                                                            return const Color(0x34EE8B60);
                                                                                                                          } else if (containerVarItem.form9! && !containerVarItem.form9completo!) {
                                                                                                                            return const Color(0x334B39EF);
                                                                                                                          } else if (containerVarItem.form9! && containerVarItem.form9completo!) {
                                                                                                                            return const Color(0x32249689);
                                                                                                                          } else {
                                                                                                                            return const Color(0x00000000);
                                                                                                                          }
                                                                                                                        }(),
                                                                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                                                                        border: Border.all(
                                                                                                                          color: () {
                                                                                                                            if (!containerVarItem.form9! && !containerVarItem.form9completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).tertiary;
                                                                                                                            } else if (containerVarItem.form9! && !containerVarItem.form9completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                                                            } else if (containerVarItem.form9! && containerVarItem.form9completo!) {
                                                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                                                            } else {
                                                                                                                              return const Color(0x00000000);
                                                                                                                            }
                                                                                                                          }(),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ].divide(const SizedBox(width: 5.0)),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                                child: FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    context.pushNamed(
                                                                                                      'perfil',
                                                                                                      queryParameters: {
                                                                                                        'idingreso': serializeParam(
                                                                                                          containerVarItem.id,
                                                                                                          ParamType.int,
                                                                                                        ),
                                                                                                        'rowexp': serializeParam(
                                                                                                          widget.idexpediente,
                                                                                                          ParamType.SupabaseRow,
                                                                                                        ),
                                                                                                        'usuariorow': serializeParam(
                                                                                                          widget.usuariorow,
                                                                                                          ParamType.SupabaseRow,
                                                                                                        ),
                                                                                                        'spd': serializeParam(
                                                                                                          widget.spd,
                                                                                                          ParamType.SupabaseRow,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                    );
                                                                                                  },
                                                                                                  text: 'Ver ingreso',
                                                                                                  options: FFButtonOptions(
                                                                                                    width: 150.0,
                                                                                                    height: 50.0,
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
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ]
                                                            .divide(const SizedBox(
                                                                height: 10.0))
                                                            .around(const SizedBox(
                                                                height: 10.0)),
                                                      ),
                                                    ),
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
          ),
        );
      },
    );
  }
}
