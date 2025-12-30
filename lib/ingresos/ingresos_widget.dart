import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/barrade_navegacion_widget.dart';
import '/components/formcaratula_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'ingresos_model.dart';
export 'ingresos_model.dart';

class IngresosWidget extends StatefulWidget {
  const IngresosWidget({
    super.key,
    this.idexp,
    required this.idnnya,
    required this.idrol,
    required this.rol,
    required this.spd1,
  });

  final int? idexp;
  final int? idnnya;
  final int? idrol;
  final String? rol;
  final String? spd1;

  static String routeName = 'Ingresos';
  static String routePath = '/ingresos';

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
                'Ingresos',
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
              child: Container(
                decoration: BoxDecoration(),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Container(
                    decoration: BoxDecoration(),
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
                                  expediente: widget.idexp!,
                                  adjuntar: false,
                                  imprimir: true,
                                  ingreso: false,
                                  perfil: false,
                                  fechaExp: getCurrentTimestamp.toString(),
                                  idnnya: widget.idnnya,
                                  idrol: widget.idrol!,
                                  rol: widget.rol!,
                                  spd: widget.spd1!,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SafeArea(
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
                                                alignment: AlignmentDirectional(
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
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
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
                                                                TarjetaencabezadoWidget(
                                                              idexpediente:
                                                                  widget.idexp,
                                                              idnnya: widget
                                                                  .idnnya,
                                                              spd: widget.spd1,
                                                            ),
                                                          ),
                                                          Flex(
                                                            direction: (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    800.0)
                                                                ? Axis
                                                                    .horizontal
                                                                : Axis.vertical,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                FormcaratulaWidget(
                                                                              idexp: widget.idexp,
                                                                              editar: true,
                                                                              dniok: false,
                                                                              idrol: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(() =>
                                                                          _model.editocaratural =
                                                                              value));

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                text:
                                                                    'Editar caratula',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 35.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
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
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25.0),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        800.0)
                                                                    ? SizedBox(
                                                                        width:
                                                                            10.0)
                                                                    : SizedBox(
                                                                        height:
                                                                            10.0))
                                                                .around((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        800.0)
                                                                    ? SizedBox(
                                                                        width:
                                                                            10.0)
                                                                    : SizedBox(
                                                                        height:
                                                                            10.0)),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
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
                                                                            font:
                                                                                GoogleFonts.notoSansJp(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
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
                                                                            font:
                                                                                GoogleFonts.notoSansJp(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                if (ingresosVistaIngresosDiasRowList
                                                                            .where((e) =>
                                                                                e.estado ==
                                                                                'Abierto')
                                                                            .toList()
                                                                            .length >
                                                                        0
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
                                                                            widget.idexp,
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
                                                                            supaSerialize<DateTime>(getCurrentTimestamp),
                                                                        'iduser':
                                                                            currentUserUid,
                                                                        'Ampliacion':
                                                                            false,
                                                                        'Ampliacioncompleto':
                                                                            false,
                                                                      });
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
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
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
                                                                      borderSide:
                                                                          BorderSide(
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
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
                                                                      SafeArea(
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          MediaQuery.sizeOf(context).height *
                                                                              0.5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        boxShadow: [
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
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
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

                                                                            return ListView.separated(
                                                                              padding: EdgeInsets.symmetric(vertical: 10.0),
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: containerVar.length,
                                                                              separatorBuilder: (_, __) => SizedBox(height: 10.0),
                                                                              itemBuilder: (context, containerVarIndex) {
                                                                                final containerVarItem = containerVar[containerVarIndex];
                                                                                return Align(
                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
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
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                              child: Container(
                                                                                                width: 425.0,
                                                                                                decoration: BoxDecoration(),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 8.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                          children: [
                                                                                                            Container(
                                                                                                              width: 10.0,
                                                                                                              height: 50.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                  bottomRight: Radius.circular(0.0),
                                                                                                                  topLeft: Radius.circular(10.0),
                                                                                                                  topRight: Radius.circular(0.0),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(1.0, 0.0),
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
                                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                              bottomLeft: Radius.circular(0.0),
                                                                                                                              bottomRight: Radius.circular(20.0),
                                                                                                                              topLeft: Radius.circular(20.0),
                                                                                                                              topRight: Radius.circular(20.0),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          child: Align(
                                                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                            child: Text(
                                                                                                                              'Cerrado',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                                                                                                                            borderRadius: BorderRadius.only(
                                                                                                                              bottomLeft: Radius.circular(0.0),
                                                                                                                              bottomRight: Radius.circular(20.0),
                                                                                                                              topLeft: Radius.circular(20.0),
                                                                                                                              topRight: Radius.circular(20.0),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                          child: Align(
                                                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                            child: Text(
                                                                                                                              'Abierto',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ].divide(SizedBox(width: 16.0)),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Align(
                                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
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
                                                                                                                          font: GoogleFonts.notoSansJp(
                                                                                                                            fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                                          ),
                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                  Text(
                                                                                                                    'Fecha de carga: ${dateTimeFormat(
                                                                                                                      "d/M/y",
                                                                                                                      containerVarItem.createdAt,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    )}',
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
                                                                                                                    'Dias: ${containerVarItem.diasCierre?.toString()}',
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
                                                                                                                    'Dias de la ultima actualizacion: ${dateTimeFormat(
                                                                                                                      "relative",
                                                                                                                      containerVarItem.updatedAt,
                                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                                    )}',
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
                                                                                                                    'Motivo de cierre:  ${containerVarItem.motivocierre}',
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
                                                                                                                ].divide(SizedBox(height: 4.0)),
                                                                                                              ),
                                                                                                              Align(
                                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                                child: Text(
                                                                                                                  'Estado de avance',
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        font: GoogleFonts.notoSansJp(
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                                                child: Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                  children: [
                                                                                                                    if (containerVarItem.form1 ?? true)
                                                                                                                      Container(
                                                                                                                        width: 40.0,
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
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                                    fontSize: 18.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              width: 30.0,
                                                                                                                              height: 30.0,
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: () {
                                                                                                                                  if (!containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                                    return Color(0x34EE8B60);
                                                                                                                                  } else if (containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                                    return Color(0x334B39EF);
                                                                                                                                  } else if (containerVarItem.form1! && containerVarItem.form1completo!) {
                                                                                                                                    return FlutterFlowTheme.of(context).secondary;
                                                                                                                                  } else {
                                                                                                                                    return Color(0x00000000);
                                                                                                                                  }
                                                                                                                                }(),
                                                                                                                                shape: BoxShape.circle,
                                                                                                                                border: Border.all(
                                                                                                                                  color: () {
                                                                                                                                    if (!containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).tertiary;
                                                                                                                                    } else if (containerVarItem.form1! && !containerVarItem.form1completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).primary;
                                                                                                                                    } else if (containerVarItem.form1! && containerVarItem.form1completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).success;
                                                                                                                                    } else {
                                                                                                                                      return Color(0x00000000);
                                                                                                                                    }
                                                                                                                                  }(),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    if (containerVarItem.form2 ?? true)
                                                                                                                      Container(
                                                                                                                        width: 40.0,
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
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                                    fontSize: 18.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              width: 30.0,
                                                                                                                              height: 30.0,
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: () {
                                                                                                                                  if (!containerVarItem.form3completo! && !containerVarItem.form2completo! && !containerVarItem.form4completo!) {
                                                                                                                                    return Color(0x34EE8B60);
                                                                                                                                  } else if (containerVarItem.form2completo! || containerVarItem.form3completo! || containerVarItem.form4completo!) {
                                                                                                                                    return FlutterFlowTheme.of(context).secondary;
                                                                                                                                  } else {
                                                                                                                                    return Color(0x00000000);
                                                                                                                                  }
                                                                                                                                }(),
                                                                                                                                shape: BoxShape.circle,
                                                                                                                                border: Border.all(
                                                                                                                                  color: () {
                                                                                                                                    if (!containerVarItem.form2! && !containerVarItem.form2completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).tertiary;
                                                                                                                                    } else if (containerVarItem.form2! && !containerVarItem.form2completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).primary;
                                                                                                                                    } else if (containerVarItem.form2! && containerVarItem.form2completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).success;
                                                                                                                                    } else {
                                                                                                                                      return Color(0x00000000);
                                                                                                                                    }
                                                                                                                                  }(),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    if (containerVarItem.form5 ?? true)
                                                                                                                      Container(
                                                                                                                        width: 40.0,
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
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                                    fontSize: 18.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              width: 30.0,
                                                                                                                              height: 30.0,
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: () {
                                                                                                                                  if (!containerVarItem.form5completo!) {
                                                                                                                                    return Color(0x34EE8B60);
                                                                                                                                  } else if (containerVarItem.form5completo!) {
                                                                                                                                    return FlutterFlowTheme.of(context).secondary;
                                                                                                                                  } else {
                                                                                                                                    return Color(0x00000000);
                                                                                                                                  }
                                                                                                                                }(),
                                                                                                                                shape: BoxShape.circle,
                                                                                                                                border: Border.all(
                                                                                                                                  color: () {
                                                                                                                                    if (!containerVarItem.form3! && !containerVarItem.form3completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).tertiary;
                                                                                                                                    } else if (containerVarItem.form3! && !containerVarItem.form3completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).primary;
                                                                                                                                    } else if (containerVarItem.form3! && containerVarItem.form3completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).success;
                                                                                                                                    } else {
                                                                                                                                      return Color(0x00000000);
                                                                                                                                    }
                                                                                                                                  }(),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    if (containerVarItem.form6 ?? true)
                                                                                                                      Container(
                                                                                                                        width: 40.0,
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
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                                    fontSize: 18.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              width: 30.0,
                                                                                                                              height: 30.0,
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: () {
                                                                                                                                  if (!containerVarItem.form6completo!) {
                                                                                                                                    return FlutterFlowTheme.of(context).accent3;
                                                                                                                                  } else if (containerVarItem.form6completo!) {
                                                                                                                                    return FlutterFlowTheme.of(context).secondary;
                                                                                                                                  } else {
                                                                                                                                    return Color(0x00000000);
                                                                                                                                  }
                                                                                                                                }(),
                                                                                                                                shape: BoxShape.circle,
                                                                                                                                border: Border.all(
                                                                                                                                  color: () {
                                                                                                                                    if (!containerVarItem.form4! && !containerVarItem.form4completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).tertiary;
                                                                                                                                    } else if (containerVarItem.form4! && !containerVarItem.form4completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).primary;
                                                                                                                                    } else if (containerVarItem.form4! && containerVarItem.form4completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).success;
                                                                                                                                    } else {
                                                                                                                                      return Color(0x00000000);
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
                                                                                                                      decoration: BoxDecoration(
                                                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                                                      ),
                                                                                                                      child: Visibility(
                                                                                                                        visible: containerVarItem.form9 ?? true,
                                                                                                                        child: Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                          children: [
                                                                                                                            Text(
                                                                                                                              '5',
                                                                                                                              style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                                                                    font: GoogleFonts.notoSansJp(
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                      fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                    ),
                                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                                    fontSize: 18.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            Container(
                                                                                                                              width: 30.0,
                                                                                                                              height: 30.0,
                                                                                                                              decoration: BoxDecoration(
                                                                                                                                color: () {
                                                                                                                                  if (!containerVarItem.form9completo!) {
                                                                                                                                    return FlutterFlowTheme.of(context).accent3;
                                                                                                                                  } else if (containerVarItem.form9completo!) {
                                                                                                                                    return FlutterFlowTheme.of(context).secondary;
                                                                                                                                  } else {
                                                                                                                                    return Color(0x00000000);
                                                                                                                                  }
                                                                                                                                }(),
                                                                                                                                shape: BoxShape.circle,
                                                                                                                                border: Border.all(
                                                                                                                                  color: () {
                                                                                                                                    if (!containerVarItem.form5! && !containerVarItem.form5completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).tertiary;
                                                                                                                                    } else if (containerVarItem.form5! && !containerVarItem.form5completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).primary;
                                                                                                                                    } else if (containerVarItem.form5! && containerVarItem.form5completo!) {
                                                                                                                                      return FlutterFlowTheme.of(context).success;
                                                                                                                                    } else {
                                                                                                                                      return Color(0x00000000);
                                                                                                                                    }
                                                                                                                                  }(),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ].divide(SizedBox(width: 10.0)),
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
                                                                                            ),
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 1.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: () async {
                                                                                                      _model.expvista = await VistaExpedientesUltimoEstadoTable().queryRows(
                                                                                                        queryFn: (q) => q.eqOrNull(
                                                                                                          'id',
                                                                                                          widget.idexp,
                                                                                                        ),
                                                                                                      );

                                                                                                      context.pushNamed(
                                                                                                        PerfilWidget.routeName,
                                                                                                        queryParameters: {
                                                                                                          'idingreso': serializeParam(
                                                                                                            containerVarItem.id,
                                                                                                            ParamType.int,
                                                                                                          ),
                                                                                                          'idexp': serializeParam(
                                                                                                            widget.idexp,
                                                                                                            ParamType.int,
                                                                                                          ),
                                                                                                          'idnnya': serializeParam(
                                                                                                            widget.idnnya,
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

                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                                    text: 'Iniciar carga',
                                                                                                    options: FFButtonOptions(
                                                                                                      width: 150.0,
                                                                                                      height: 50.0,
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
                                                              ),
                                                            ],
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
                                              ),
                                            ],
                                          ),
                                        ),
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
              ),
            ),
          ),
        );
      },
    );
  }
}
