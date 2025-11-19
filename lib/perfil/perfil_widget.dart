import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
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
import '/formulario1/seccion3/seccion3_widget.dart';
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
    required this.rowexp,
    required this.usuariorow,
    this.spd,
    this.usuariorol,
  });

  final int? idingreso;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final UsuariosRow? usuariorow;
  final SpdRow? spd;
  final VistaUsuariosRolesRow? usuariorol;

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
                    (_model.requestCompleter1 ??= Completer<List<IngresosRow>>()
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
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
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                                0xFF606A85),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.usuariorol
                                                          ?.rolNombre,
                                                      'Sin dato',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .notoSansJp(
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
                                                spd: widget.spd,
                                                usuariorol: widget.usuariorol,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Container(
                                                height: 450.0,
                                                decoration: BoxDecoration(),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
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
                                                              editar: false,
                                                              usuariorol: widget
                                                                  .usuariorol,
                                                              spd: widget.spd!,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
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
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                BoxDecoration(),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final containerVar =
                                                                    containerGrupoConvivienteRowList
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
                                                                                              containerVarItem.edad?.toString(),
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
                                                                              if (containerVarItem.idexppropio == null)
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    _model.checkdnifuncion1 = await ExisteDNIexpedienteCall.call(
                                                                                      dni: containerVarItem.dni.toString(),
                                                                                    );

                                                                                    if (ExisteDNIexpedienteCall.check(
                                                                                      (_model.checkdnifuncion1?.jsonBody ?? ''),
                                                                                    )!) {
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return WebViewAware(
                                                                                            child: AlertDialog(
                                                                                              title: Text('NNyA con expediente'),
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
                                                                                    } else {
                                                                                      // werwer
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
                                                                                        'idgrupofamiliar': widget.rowexp?.idgrupofamiliarvista,
                                                                                        'idNNyA': containerVarItem.idnnya,
                                                                                      });
                                                                                      await ExpedienteTable().update(
                                                                                        data: {
                                                                                          'expediente': '${widget.usuariorow?.spd}/${_model.creaexpgrupoCopy?.id.toString()}/${dateTimeFormat(
                                                                                            "M",
                                                                                            getCurrentTimestamp,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          )}/${dateTimeFormat(
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
                                                                                        expediente: '${widget.usuariorow?.spd}/${_model.creaexpgrupoCopy?.id.toString()}/${dateTimeFormat(
                                                                                          "y",
                                                                                          getCurrentTimestamp,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        )}',
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
                                                                                              title: Text('Se creo un expediente nuevo!'),
                                                                                              content: Text('Se creo un expediente nuevo relacionado a:${widget.rowexp?.nombres}, ${widget.rowexp?.apellidos}'),
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
                                                                              if (containerVarItem.idexppropio != null)
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
                                                                                        containerVarItem.idexppropio,
                                                                                      ),
                                                                                    );

                                                                                    context.pushNamed(
                                                                                      IngresosWidget.routeName,
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
                                                                                        'spd': serializeParam(
                                                                                          widget.spd,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'usuariorol': serializeParam(
                                                                                          widget.usuariorol,
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
                                                      wrapWithModel(
                                                        model: _model
                                                            .ultimaactualizacionModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UltimaactualizacionWidget(
                                                          idusuario:
                                                              containeringresosIngresosRow
                                                                  ?.iduser,
                                                          updated:
                                                              dateTimeFormat(
                                                            "d/M/y",
                                                            containeringresosIngresosRow
                                                                ?.updatedAt,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                                  usuariorol:
                                                                      widget
                                                                          .usuariorol!,
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
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
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
                                                                  usuariorol:
                                                                      widget
                                                                          .usuariorol!,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));

                                                      context.pushNamed(
                                                          HomePageWidget
                                                              .routeName);
                                                    },
                                                    text: 'Derivar expediente',
                                                    options: FFButtonOptions(
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
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
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
                                                        ? SizedBox(width: 10.0)
                                                        : SizedBox(
                                                            height: 10.0))
                                                    .around((MediaQuery.sizeOf(
                                                                    context)
                                                                .width >
                                                            800.0)
                                                        ? SizedBox(width: 10.0)
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
                                                    if ((containeringresosIngresosRow
                                                                ?.form9 ==
                                                            true) &&
                                                        (containeringresosIngresosRow
                                                                ?.motivocierre !=
                                                            'Asesoramiento'))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
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
                                                              border:
                                                                  Border.all(
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
                                                                  padding: EdgeInsetsDirectional
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
                                                                          alignment: AlignmentDirectional(
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
                                                                                width: 15.0,
                                                                                height: 120.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: () {
                                                                                    if (containeringresosIngresosRow!.form9! && !containeringresosIngresosRow.form9completo!) {
                                                                                      return FlutterFlowTheme.of(context).alternate;
                                                                                    } else if (containeringresosIngresosRow.form9! && containeringresosIngresosRow.form9completo!) {
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
                                                                                              'Causa: ${containeringresosIngresosRow?.motivocierre}',
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
                                                                                              'Fecha: ${dateTimeFormat(
                                                                                                "d/M/y",
                                                                                                containeringresosIngresosRow?.fechacierre,
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
                                                                                              'Observacion: ${containeringresosIngresosRow?.observacioncierre}'.maybeHandleOverflow(
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
                                                                          width:
                                                                              200.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (!containeringresosIngresosRow!.form9completo!)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 1.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          context.pushNamed(
                                                                                            SenafWidget.routeName,
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
                                                                                              'usuariorol': serializeParam(
                                                                                                widget.usuariorol,
                                                                                                ParamType.SupabaseRow,
                                                                                              ),
                                                                                              'spdrow': serializeParam(
                                                                                                widget.spd,
                                                                                                ParamType.SupabaseRow,
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
                                                                                  if (containeringresosIngresosRow.form9completo ?? true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 1.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          context.pushNamed(
                                                                                            SenafWidget.routeName,
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
                                                                                              'usuariorol': serializeParam(
                                                                                                widget.usuariorol,
                                                                                                ParamType.SupabaseRow,
                                                                                              ),
                                                                                              'spdrow': serializeParam(
                                                                                                widget.spd,
                                                                                                ParamType.SupabaseRow,
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
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (containeringresosIngresosRow
                                                            ?.form6 ??
                                                        true)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
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
                                                              border:
                                                                  Border.all(
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
                                                                  padding: EdgeInsetsDirectional
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
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.0,
                                                                              height: 100.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (containeringresosIngresosRow!.form6! && !containeringresosIngresosRow.form6completo!) {
                                                                                    return FlutterFlowTheme.of(context).alternate;
                                                                                  } else if (containeringresosIngresosRow.form6! && containeringresosIngresosRow.form6completo!) {
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
                                                                          width:
                                                                              200.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 1.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    context.pushNamed(
                                                                                      DefiniciondemedidasWidget.routeName,
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
                                                                                        'usuariosrol': serializeParam(
                                                                                          widget.usuariorol,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'spd': serializeParam(
                                                                                          widget.spd,
                                                                                          ParamType.SupabaseRow,
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
                                                                                    color: !containeringresosIngresosRow!.form6completo! ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (containeringresosIngresosRow
                                                            ?.ampliacioncompleto ??
                                                        true)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
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
                                                              border:
                                                                  Border.all(
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
                                                                  padding: EdgeInsetsDirectional
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
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.0,
                                                                              height: 120.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (containeringresosIngresosRow!.form5! && !containeringresosIngresosRow.form5completo!) {
                                                                                    return FlutterFlowTheme.of(context).alternate;
                                                                                  } else if (containeringresosIngresosRow.form5! && containeringresosIngresosRow.form5completo!) {
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
                                                                          width:
                                                                              200.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              if ((containeringresosIngresosRow?.form5 == true) && (containeringresosIngresosRow?.form5completo == false))
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
                                                                                          'rowexpediente': serializeParam(
                                                                                            widget.rowexp,
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
                                                                                          'usuariorol': serializeParam(
                                                                                            widget.usuariorol,
                                                                                            ParamType.SupabaseRow,
                                                                                          ),
                                                                                          'spd': serializeParam(
                                                                                            widget.spd,
                                                                                            ParamType.SupabaseRow,
                                                                                          ),
                                                                                          'rowingreso': serializeParam(
                                                                                            containeringresosIngresosRow,
                                                                                            ParamType.SupabaseRow,
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
                                                                              if (containeringresosIngresosRow?.form5completo ?? true)
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
                                                                                          'usuariorol': serializeParam(
                                                                                            widget.usuariorol,
                                                                                            ParamType.SupabaseRow,
                                                                                          ),
                                                                                          'spd': serializeParam(
                                                                                            widget.spd,
                                                                                            ParamType.SupabaseRow,
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
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (containeringresosIngresosRow
                                                            ?.ampliacion ??
                                                        true)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
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
                                                              border:
                                                                  Border.all(
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
                                                                  padding: EdgeInsetsDirectional
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
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.0,
                                                                              height: 200.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (containeringresosIngresosRow!.ampliacion! && !containeringresosIngresosRow.ampliacioncompleto!) {
                                                                                    return FlutterFlowTheme.of(context).alternate;
                                                                                  } else if (containeringresosIngresosRow.ampliacion! && containeringresosIngresosRow.ampliacioncompleto!) {
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
                                                                          width:
                                                                              200.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 1.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    context.pushNamed(
                                                                                      EntrevistasCopyWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'ingresorow': serializeParam(
                                                                                          containeringresosIngresosRow.id,
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
                                                                                        'usuariorol': serializeParam(
                                                                                          widget.usuariorol,
                                                                                          ParamType.SupabaseRow,
                                                                                        ),
                                                                                        'spd': serializeParam(
                                                                                          widget.spd,
                                                                                          ParamType.SupabaseRow,
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
                                                                                    color: containeringresosIngresosRow!.ampliacioncompleto! ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).primary,
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
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (containeringresosIngresosRow
                                                            ?.form1 ??
                                                        true)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
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
                                                                    width: 15.0,
                                                                    height:
                                                                        750.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color:
                                                                          () {
                                                                        if (!containeringresosIngresosRow!.form1seccion1! &&
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
                                                                          return FlutterFlowTheme.of(context)
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
                                                                          return FlutterFlowTheme.of(context)
                                                                              .accent1;
                                                                        } else if (containeringresosIngresosRow.form1seccion1! &&
                                                                            containeringresosIngresosRow.form1seccion2! &&
                                                                            containeringresosIngresosRow.form1seccion3! &&
                                                                            containeringresosIngresosRow.form1seccion5! &&
                                                                            containeringresosIngresosRow.form1seccion7! &&
                                                                            containeringresosIngresosRow.form1seccion9!) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .success;
                                                                        } else {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .primary;
                                                                        }
                                                                      }(),
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
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
                                                                    child: FutureBuilder<
                                                                        List<
                                                                            AnexoAForm1Row>>(
                                                                      future: (_model
                                                                              .requestCompleter2 ??= Completer<List<AnexoAForm1Row>>()
                                                                            ..complete(AnexoAForm1Table().querySingleRow(
                                                                              queryFn: (q) => q.eqOrNull(
                                                                                'idingreso',
                                                                                widget.idingreso,
                                                                              ),
                                                                            )))
                                                                          .future,
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
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
                                                                        List<AnexoAForm1Row>
                                                                            containeranexoAnexoAForm1RowList =
                                                                            snapshot.data!;

                                                                        final containeranexoAnexoAForm1Row = containeranexoAnexoAForm1RowList.isNotEmpty
                                                                            ? containeranexoAnexoAForm1RowList.first
                                                                            : null;

                                                                        return Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.7,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, -1.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 10.0, 0.0),
                                                                              child: Column(
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
                                                                                    'Fecha de cierre por derivacion o asesoramiento : ${dateTimeFormat(
                                                                                      "d/M/y",
                                                                                      containeringresosIngresosRow?.fechacierre,
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
                                                                                  Container(
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
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
                                                                                                  color: containeringresosIngresosRow?.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                  if (!containeringresosIngresosRow!.form1seccion1!)
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                      child: FFButtonWidget(
                                                                                                        onPressed: !() {
                                                                                                          if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                            return true;
                                                                                                          } else if (widget.usuariorol?.rolId == 1) {
                                                                                                            return true;
                                                                                                          } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                            idingreso: containeringresosIngresosRow,
                                                                                                                            rowexp: widget.rowexp,
                                                                                                                            editar: false,
                                                                                                                            usuariorow: widget.usuariorow!,
                                                                                                                            usuariorol: widget.usuariorol!,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ).then((value) => safeSetState(() => _model.seccio1true = value));

                                                                                                                if (_model.seccio1true!) {
                                                                                                                  safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                  await _model.waitForRequestCompleted1();
                                                                                                                }

                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                        text: 'Sección 1',
                                                                                                        options: FFButtonOptions(
                                                                                                          height: 30.0,
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                          color: containeringresosIngresosRow.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                  if (containeringresosIngresosRow.form1seccion1 ?? true)
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                      child: FFButtonWidget(
                                                                                                        onPressed: !() {
                                                                                                          if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                            return true;
                                                                                                          } else if (widget.usuariorol?.rolId == 1) {
                                                                                                            return true;
                                                                                                          } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                            idingreso: containeringresosIngresosRow,
                                                                                                                            rowexp: widget.rowexp,
                                                                                                                            editar: true,
                                                                                                                            usuariorow: widget.usuariorow!,
                                                                                                                            usuariorol: widget.usuariorol!,
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
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                          color: containeringresosIngresosRow.form1seccion1 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                  color: containeringresosIngresosRow.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (!containeringresosIngresosRow.form1seccion2!)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                          rowingreso: containeringresosIngresosRow,
                                                                                                                          rowexp: widget.rowexp!,
                                                                                                                          editar: false,
                                                                                                                          usuariorow: widget.usuariorol!,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => safeSetState(() => _model.seccion2true = value));

                                                                                                              if (_model.seccion2true!) {
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Sección 2',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                if (containeringresosIngresosRow.form1seccion2 ?? true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                          rowingreso: containeringresosIngresosRow,
                                                                                                                          rowexp: widget.rowexp!,
                                                                                                                          editar: true,
                                                                                                                          usuariorow: widget.usuariorol!,
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
                                                                                                        color: containeringresosIngresosRow.form1seccion2 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                  color: containeringresosIngresosRow.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (!containeringresosIngresosRow.form1seccion3!)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                          userrol: widget.usuariorol!,
                                                                                                                          idseccion1: _model.seccion1!.firstOrNull!.idSec1,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => safeSetState(() => _model.seccion3true = value));

                                                                                                              if (_model.seccion3true!) {
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Sección 3',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                if (containeringresosIngresosRow.form1seccion3 ?? true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
                                                                                                          return true;
                                                                                                        } else {
                                                                                                          return false;
                                                                                                        }
                                                                                                      }()
                                                                                                          ? null
                                                                                                          : () async {
                                                                                                              _model.idseccion1edit = await Seccion1Table().queryRows(
                                                                                                                queryFn: (q) => q.eqOrNull(
                                                                                                                  'idIngreso',
                                                                                                                  widget.idingreso,
                                                                                                                ),
                                                                                                              );
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
                                                                                                                          userrol: widget.usuariorol!,
                                                                                                                          idseccion1: _model.idseccion1edit!.firstOrNull!.idSec1,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => safeSetState(() {}));

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Editar Sección 3',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion3 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                  color: containeringresosIngresosRow.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (containeringresosIngresosRow.form1seccion4 ?? true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Editar Sección 4',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (!containeringresosIngresosRow.form1seccion4!)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Sección 4',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion4 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                  color: containeringresosIngresosRow.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (containeringresosIngresosRow.form1seccion5 ?? true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (!containeringresosIngresosRow.form1seccion5!)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Sección 5',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion5 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                  color: containeringresosIngresosRow.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (containeringresosIngresosRow.form1seccion6 ?? true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                if (!containeringresosIngresosRow.form1seccion6!)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Agregar intervenciones ant.',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion6 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                  color: containeringresosIngresosRow.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                if (containeringresosIngresosRow.form1seccion7 ?? true)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondary,
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
                                                                                                if (!containeringresosIngresosRow.form1seccion7!)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: !() {
                                                                                                        if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 1) {
                                                                                                          return true;
                                                                                                        } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }

                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                      text: 'Sección 7',
                                                                                                      options: FFButtonOptions(
                                                                                                        height: 30.0,
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                        color: containeringresosIngresosRow.form1seccion7 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                  color: containeringresosIngresosRow.form1seccion8 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                  if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                    return true;
                                                                                                  } else if (widget.usuariorol?.rolId == 1) {
                                                                                                    return true;
                                                                                                  } else if (widget.usuariorol?.rolId == 2) {
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
                                                                                                                    idingreso: containeringresosIngresosRow,
                                                                                                                    idexp: widget.rowexp!,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => safeSetState(() => _model.seccion8guardada = value));

                                                                                                        if (_model.seccion8guardada!) {
                                                                                                          safeSetState(() => _model.requestCompleter1 = null);
                                                                                                          await _model.waitForRequestCompleted1();
                                                                                                        }

                                                                                                        safeSetState(() {});
                                                                                                      },
                                                                                                text: 'Sección 8',
                                                                                                options: FFButtonOptions(
                                                                                                  height: 30.0,
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: containeringresosIngresosRow.form1seccion8! ? FlutterFlowTheme.of(context).accent3 : FlutterFlowTheme.of(context).primary,
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
                                                                                        FutureBuilder<List<Seccion9Row>>(
                                                                                          future: Seccion9Table().querySingleRow(
                                                                                            queryFn: (q) => q.eqOrNull(
                                                                                              'idIngreso',
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
                                                                                            List<Seccion9Row> containerSeccion9RowList = snapshot.data!;

                                                                                            final containerSeccion9Row = containerSeccion9RowList.isNotEmpty ? containerSeccion9RowList.first : null;

                                                                                            return Container(
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
                                                                                                        color: containeringresosIngresosRow.form1seccion9 == false ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).success,
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
                                                                                                      if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                        return true;
                                                                                                      } else if (widget.usuariorol?.rolId == 1) {
                                                                                                        return true;
                                                                                                      } else if (widget.usuariorol?.rolId == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
                                                                                                            if (containerSeccion9Row?.idSec9 != null) {
                                                                                                              await Seccion9Table().update(
                                                                                                                data: {
                                                                                                                  'Desicion': 'Apertura',
                                                                                                                  'iduser': currentUserUid,
                                                                                                                },
                                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                                  'idIngreso',
                                                                                                                  widget.idingreso,
                                                                                                                ),
                                                                                                              );
                                                                                                              safeSetState(() => _model.requestCompleter1 = null);
                                                                                                              await _model.waitForRequestCompleted1();
                                                                                                            } else {
                                                                                                              _model.seccion9 = await Seccion9Table().insert({
                                                                                                                'idIngreso': containeringresosIngresosRow.id,
                                                                                                                'idExpediente': widget.rowexp?.id,
                                                                                                                'Desicion': 'Apertura',
                                                                                                                'iduser': currentUserUid,
                                                                                                              });
                                                                                                              await IngresosTable().update(
                                                                                                                data: {
                                                                                                                  'form1seccion9': true,
                                                                                                                  'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                                                },
                                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                                  'id',
                                                                                                                  containeringresosIngresosRow.id,
                                                                                                                ),
                                                                                                              );
                                                                                                              await showDialog(
                                                                                                                context: context,
                                                                                                                builder: (alertDialogContext) {
                                                                                                                  return WebViewAware(
                                                                                                                    child: AlertDialog(
                                                                                                                      title: Text('Carga correcta'),
                                                                                                                      content: Text('La informacion se guardo correctamente com \"Apertura de legajo\"!!'),
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

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Apertura de expediente',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 40.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: containerSeccion9Row?.desicion == 'Apertura' ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).primary,
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
                                                                                                      if ((widget.usuariorol?.rolId == 3) && (widget.usuariorol?.spd == widget.rowexp?.spd)) {
                                                                                                        return true;
                                                                                                      } else if (widget.usuariorol?.rolId == 1) {
                                                                                                        return true;
                                                                                                      } else if (widget.usuariorol?.rolId == 2) {
                                                                                                        return true;
                                                                                                      } else {
                                                                                                        return false;
                                                                                                      }
                                                                                                    }()
                                                                                                        ? null
                                                                                                        : () async {
                                                                                                            if (containerSeccion9Row?.idSec9 != null) {
                                                                                                              await Seccion9Table().update(
                                                                                                                data: {
                                                                                                                  'Desicion': 'Asesoramiento',
                                                                                                                },
                                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                                  'idIngreso',
                                                                                                                  widget.idingreso,
                                                                                                                ),
                                                                                                              );
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
                                                                                                                          rowingreso: containeringresosIngresosRow,
                                                                                                                          rowexpediente: widget.rowexp,
                                                                                                                          rowseccion9: containerSeccion9Row,
                                                                                                                          usuariorow: widget.usuariorow,
                                                                                                                          spd: widget.spd,
                                                                                                                          usuariorol: widget.usuariorol,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => safeSetState(() => _model.creoasesoramiento1 = value));

                                                                                                              if (_model.creoasesoramiento1!) {
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                                safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                await _model.waitForRequestCompleted2();
                                                                                                              }
                                                                                                            } else {
                                                                                                              _model.seccion9Copy = await Seccion9Table().insert({
                                                                                                                'idIngreso': containeringresosIngresosRow.id,
                                                                                                                'idExpediente': widget.rowexp?.id,
                                                                                                                'Desicion': 'Asesoramiento',
                                                                                                                'iduser': currentUserUid,
                                                                                                              });
                                                                                                              await IngresosTable().update(
                                                                                                                data: {
                                                                                                                  'form1seccion9': true,
                                                                                                                  'Estado': 'Cerrado',
                                                                                                                  'fechacierre': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                                                  'Motivocierre': 'Asesoramiento',
                                                                                                                  'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                                                },
                                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                                  'id',
                                                                                                                  containeringresosIngresosRow.id,
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
                                                                                                              safeSetState(() => _model.requestCompleter1 = null);
                                                                                                              await _model.waitForRequestCompleted1();
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
                                                                                                                          rowingreso: containeringresosIngresosRow,
                                                                                                                          rowexpediente: widget.rowexp,
                                                                                                                          rowseccion9: _model.seccion9Copy,
                                                                                                                          usuariorow: widget.usuariorow,
                                                                                                                          spd: widget.spd,
                                                                                                                          usuariorol: widget.usuariorol,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => safeSetState(() {}));

                                                                                                              if (_model.creoasesoramiento1!) {
                                                                                                                safeSetState(() => _model.requestCompleter2 = null);
                                                                                                                await _model.waitForRequestCompleted2();
                                                                                                                safeSetState(() => _model.requestCompleter1 = null);
                                                                                                                await _model.waitForRequestCompleted1();
                                                                                                              }
                                                                                                            }

                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                    text: 'Asesoramiento',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 40.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: containerSeccion9Row?.desicion == 'Asesoramiento' ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).primary,
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
                                                                                            );
                                                                                          },
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
                                                                                          if (containeranexoAnexoAForm1Row?.linkdoc != null && containeranexoAnexoAForm1Row?.linkdoc != '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await launchURL('https://view.officeapps.live.com/op/embed.aspx?src=${containeranexoAnexoAForm1Row?.linkdoc}');
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
                                                                                          if (containeranexoAnexoAForm1Row?.linkdoc != null && containeranexoAnexoAForm1Row?.linkdoc != '')
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await launchURL(containeranexoAnexoAForm1Row!.linkdoc!);
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
                                                                                  if (containeringresosIngresosRow.form1seccion1! && containeringresosIngresosRow.form1seccion2! && containeringresosIngresosRow.form1seccion5! && containeringresosIngresosRow.form1seccion7! && containeringresosIngresosRow.form1seccion9!)
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
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                              child: FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  if (containeringresosIngresosRow.emergencia == 'Si') {
                                                                                                    await IngresosTable().update(
                                                                                                      data: {
                                                                                                        'form1completo': true,
                                                                                                        'form9': true,
                                                                                                        'Ampliacion': true,
                                                                                                      },
                                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                                        'id',
                                                                                                        containeringresosIngresosRow.id,
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
                                                                                                        containeringresosIngresosRow.id,
                                                                                                      ),
                                                                                                    );
                                                                                                  }

                                                                                                  await showDialog(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return WebViewAware(
                                                                                                        child: AlertDialog(
                                                                                                          title: Text('Ok para avanzar!!'),
                                                                                                          content: Text('Se completaron los requisitos minimos para avanzar!!'),
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
                                                                                ].divide(SizedBox(height: 4.0)),
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
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 24.0)),
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
