import '/backend/supabase/supabase.dart';
import '/components/anexosbotonera_widget.dart';
import '/components/otrasactividades_widget.dart';
import '/components/tarjetaencabezado_widget.dart';
import '/entrevistas/aviso_visita/aviso_visita_widget.dart';
import '/entrevistas/avisoconcurrenciaadulto/avisoconcurrenciaadulto_widget.dart';
import '/entrevistas/formulario2/formulario2_widget.dart';
import '/entrevistas/formulario3/formulario3_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/formulario4/formulario4/formulario4_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'entrevistas_model.dart';
export 'entrevistas_model.dart';

class EntrevistasWidget extends StatefulWidget {
  const EntrevistasWidget({
    super.key,
    required this.ingresorow,
    required this.rowexp,
    required this.usuariorow,
    required this.usuariorol,
  });

  final int? ingresorow;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final UsuariosRow? usuariorow;
  final VistaUsuariosRolesRow? usuariorol;

  static String routeName = 'Entrevistas';
  static String routePath = '/entrevistas';

  @override
  State<EntrevistasWidget> createState() => _EntrevistasWidgetState();
}

class _EntrevistasWidgetState extends State<EntrevistasWidget> {
  late EntrevistasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntrevistasModel());

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
              context.pushNamed(
                PerfilWidget.routeName,
                queryParameters: {
                  'idingreso': serializeParam(
                    widget.ingresorow,
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
          ),
          title: Text(
            'Verificacion y ampliacion de informacion. Entrevistas ',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Noto Sans JP',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<List<IngresosRow>>(
            future: IngresosTable().querySingleRow(
              queryFn: (q) => q.eqOrNull(
                'id',
                widget.ingresorow,
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
                width: MediaQuery.sizeOf(context).width * 0.99,
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        wrapWithModel(
                                          model: _model.tarjetaencabezadoModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TarjetaencabezadoWidget(
                                            editarcaratula: false,
                                            contactosref: false,
                                            cambia: false,
                                            exprow: widget.rowexp!,
                                            ingresorow: containerIngresosRow,
                                            usuariorow: widget.usuariorow!,
                                          ),
                                        ),
                                        FutureBuilder<List<Formulario2Row>>(
                                          future: Formulario2Table().queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'idIngreso',
                                              widget.ingresorow,
                                            ),
                                          ),
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
                                            List<Formulario2Row>
                                                containerFormulario2RowList =
                                                snapshot.data!;

                                            return Container(
                                              decoration: BoxDecoration(),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(),
                                                child: FutureBuilder<
                                                    List<Formulario3Row>>(
                                                  future: Formulario3Table()
                                                      .queryRows(
                                                    queryFn: (q) => q.eqOrNull(
                                                      'idIngreso',
                                                      widget.ingresorow,
                                                    ),
                                                  ),
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
                                                    List<Formulario3Row>
                                                        containerFormulario3RowList =
                                                        snapshot.data!;

                                                    return Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 300.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .anexosbotoneraModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  AnexosbotoneraWidget(
                                                                idingreso:
                                                                    containerIngresosRow!
                                                                        .id,
                                                                etapa:
                                                                    'Entrevistas y Ampliacion de informacion',
                                                                reqacciones:
                                                                    false,
                                                                anexoeducacion:
                                                                    true,
                                                                reunioninter:
                                                                    true,
                                                                anexosalud:
                                                                    true,
                                                                entrevistannya:
                                                                    false,
                                                                entrevistaflia:
                                                                    false,
                                                                ampliacion:
                                                                    false,
                                                                ingresorow:
                                                                    containerIngresosRow,
                                                                exorow: widget
                                                                    .rowexp!,
                                                                usuariosrow: widget
                                                                    .usuariorow!,
                                                              ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child:
                                                                      Container(
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          800.0,
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Entrevistas al NNyA',
                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                            fontFamily: 'Noto Sans JP',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, -1.0),
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
                                                                                                    child: Formulario3Widget(
                                                                                                      idingreso: containerIngresosRow,
                                                                                                      rowexp: widget.rowexp,
                                                                                                      editar: false,
                                                                                                      usuariosrow: widget.usuariorow!,
                                                                                                      formulario: _model.nombrepagina,
                                                                                                      identrevista: 0,
                                                                                                      usuariorol: widget.usuariorol!,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        },
                                                                                        text: 'Agregar entrevista al NNyA',
                                                                                        options: FFButtonOptions(
                                                                                          height: 40.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                color: Colors.white,
                                                                                                letterSpacing: 0.0,
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
                                                                                  ].divide(SizedBox(height: 8.0)),
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
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
                                                                                                      child: AvisoVisitaWidget(
                                                                                                        rowingreso: containerIngresosRow,
                                                                                                        rowexp: widget.rowexp!,
                                                                                                        editar: false,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() => _model.crearconvocatoria = value));

                                                                                            if (_model.crearconvocatoria!) {
                                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                                              await _model.waitForRequestCompleted();
                                                                                            }

                                                                                            safeSetState(() {});
                                                                                          },
                                                                                          text: 'Convocatoria entrevista',
                                                                                          options: FFButtonOptions(
                                                                                            height: 40.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(25.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 5.0)),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
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
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Convocatoria entrevista',
                                                                                          style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                fontFamily: 'Noto Sans JP',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      FutureBuilder<List<AvisovisitaNNyARow>>(
                                                                                        future: (_model.requestCompleter ??= Completer<List<AvisovisitaNNyARow>>()
                                                                                              ..complete(AvisovisitaNNyATable().querySingleRow(
                                                                                                queryFn: (q) => q.eqOrNull(
                                                                                                  'idIngreso',
                                                                                                  widget.ingresorow,
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
                                                                                          List<AvisovisitaNNyARow> containerdriveAvisovisitaNNyARowList = snapshot.data!;

                                                                                          final containerdriveAvisovisitaNNyARow = containerdriveAvisovisitaNNyARowList.isNotEmpty ? containerdriveAvisovisitaNNyARowList.first : null;

                                                                                          return Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Visibility(
                                                                                              visible: containerdriveAvisovisitaNNyARow?.id != null,
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderRadius: 8.0,
                                                                                                    buttonSize: 40.0,
                                                                                                    fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                    icon: FaIcon(
                                                                                                      FontAwesomeIcons.googleDrive,
                                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      _model.link = await AvisovisitaNNyATable().queryRows(
                                                                                                        queryFn: (q) => q.eqOrNull(
                                                                                                          'idIngreso',
                                                                                                          widget.ingresorow,
                                                                                                        ),
                                                                                                      );
                                                                                                      await launchURL(_model.link!.firstOrNull!.linkdoc!);

                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Container(
                                                                                    height: 300.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final listaentrevistasalNNya = containerFormulario3RowList.toList();

                                                                                        return FlutterFlowDataTable<Formulario3Row>(
                                                                                          controller: _model.paginatedDataTableController1,
                                                                                          data: listaentrevistasalNNya,
                                                                                          columnsBuilder: (onSortChanged) => [
                                                                                            DataColumn2(
                                                                                              label: DefaultTextStyle.merge(
                                                                                                softWrap: true,
                                                                                                child: Text(
                                                                                                  'Fecha',
                                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                        fontFamily: 'Noto Sans JP',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            DataColumn2(
                                                                                              label: DefaultTextStyle.merge(
                                                                                                softWrap: true,
                                                                                                child: Text(
                                                                                                  'Objetivos',
                                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                        fontFamily: 'Noto Sans JP',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            DataColumn2(
                                                                                              label: DefaultTextStyle.merge(
                                                                                                softWrap: true,
                                                                                                child: Text(
                                                                                                  'Profesional',
                                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                        fontFamily: 'Noto Sans JP',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            DataColumn2(
                                                                                              label: DefaultTextStyle.merge(
                                                                                                softWrap: true,
                                                                                                child: Text(
                                                                                                  'Etapa',
                                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                        fontFamily: 'Noto Sans JP',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            DataColumn2(
                                                                                              label: DefaultTextStyle.merge(
                                                                                                softWrap: true,
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Acciones',
                                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                          fontFamily: 'Noto Sans JP',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                          dataRowBuilder: (listaentrevistasalNNyaItem, listaentrevistasalNNyaIndex, selected, onSelectChanged) => DataRow(
                                                                                            color: WidgetStateProperty.all(
                                                                                              listaentrevistasalNNyaIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                            cells: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  dateTimeFormat(
                                                                                                    "d/M/y",
                                                                                                    listaentrevistasalNNyaItem.fecha,
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  ),
                                                                                                  'Sin dato',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listaentrevistasalNNyaItem.objetivosdeentrevista,
                                                                                                  'Sin dato',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listaentrevistasalNNyaItem.profesionales,
                                                                                                  'Sin dato',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listaentrevistasalNNyaItem.formulario,
                                                                                                  'Sin dato',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                              Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                                                                child: Formulario3Widget(
                                                                                                                  idingreso: containerIngresosRow,
                                                                                                                  rowexp: widget.rowexp,
                                                                                                                  editar: true,
                                                                                                                  identrevista: listaentrevistasalNNyaItem.idForm3,
                                                                                                                  usuariosrow: widget.usuariorow!,
                                                                                                                  formulario: 'Entrevistas y Ampliacion de informacion',
                                                                                                                  usuariorol: widget.usuariorol!,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                    },
                                                                                                    text: 'Editar',
                                                                                                    icon: Icon(
                                                                                                      Icons.edit,
                                                                                                      size: 15.0,
                                                                                                    ),
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: Color(0x4C4B39EF),
                                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                          ),
                                                                                                      elevation: 0.0,
                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  FFButtonWidget(
                                                                                                    onPressed: () async {
                                                                                                      await launchURL('https://docs.google.com/document/d/1tbLUUmQXV4OcYOctrikT2Rk6h7duMHTIByBgJvUcUdo/edit?tab=t.0');
                                                                                                    },
                                                                                                    text: 'Constancia de entrevista',
                                                                                                    options: FFButtonOptions(
                                                                                                      height: 30.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      color: Color(0x4C4B39EF),
                                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                            fontFamily: 'Noto Sans JP',
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                          ),
                                                                                                      elevation: 0.0,
                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  FlutterFlowIconButton(
                                                                                                    borderRadius: 8.0,
                                                                                                    buttonSize: 40.0,
                                                                                                    icon: Icon(
                                                                                                      Icons.delete_rounded,
                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return WebViewAware(
                                                                                                                child: AlertDialog(
                                                                                                                  title: Text('Borrar entrevista'),
                                                                                                                  content: Text('Estas por borrar la entrevista. Estas seguro?'),
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
                                                                                                        await Formulario3Table().delete(
                                                                                                          matchingRows: (rows) => rows.eqOrNull(
                                                                                                            'idForm3',
                                                                                                            listaentrevistasalNNyaItem.idForm3,
                                                                                                          ),
                                                                                                        );
                                                                                                      }
                                                                                                    },
                                                                                                  ),
                                                                                                ].divide(SizedBox(height: 3.0)),
                                                                                              ),
                                                                                            ].map((c) => DataCell(c)).toList(),
                                                                                          ),
                                                                                          paginated: true,
                                                                                          selectable: false,
                                                                                          hidePaginator: false,
                                                                                          showFirstLastButtons: false,
                                                                                          headingRowHeight: 56.0,
                                                                                          dataRowHeight: 110.0,
                                                                                          columnSpacing: 20.0,
                                                                                          headingRowColor: FlutterFlowTheme.of(context).primary,
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          addHorizontalDivider: true,
                                                                                          addTopAndBottomDivider: false,
                                                                                          hideDefaultHorizontalDivider: true,
                                                                                          horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          horizontalDividerThickness: 1.0,
                                                                                          addVerticalDivider: false,
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 5.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          800.0,
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Entrevistas a la Familia',
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          FutureBuilder<
                                                                              List<AvisovisitaadultosRow>>(
                                                                            future:
                                                                                AvisovisitaadultosTable().querySingleRow(
                                                                              queryFn: (q) => q.eqOrNull(
                                                                                'idIngreso',
                                                                                widget.ingresorow,
                                                                              ),
                                                                            ),
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
                                                                              List<AvisovisitaadultosRow> containerAvisovisitaadultosRowList = snapshot.data!;

                                                                              final containerAvisovisitaadultosRow = containerAvisovisitaadultosRowList.isNotEmpty ? containerAvisovisitaadultosRowList.first : null;

                                                                              return Container(
                                                                                decoration: BoxDecoration(),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1.0, -1.0),
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
                                                                                                      child: Formulario2Widget(
                                                                                                        idingreso: containerIngresosRow,
                                                                                                        rowexp: widget.rowexp!,
                                                                                                        editar: false,
                                                                                                        usuariorow: widget.usuariorow!,
                                                                                                        formulario: 'Entrevistas y Ampliacion de informacion',
                                                                                                        identrevista: 0,
                                                                                                        usuariorol: widget.usuariorol!,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          text: 'Agregar entrevista al la flia',
                                                                                          options: FFButtonOptions(
                                                                                            height: 40.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  color: Colors.white,
                                                                                                  letterSpacing: 0.0,
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
                                                                                                      child: AvisoconcurrenciaadultoWidget(
                                                                                                        rowingreso: containerIngresosRow,
                                                                                                        rowexp: widget.rowexp!,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          text: 'CONVOCATORIA DE ENTREVISTA AL ADULTO',
                                                                                          options: FFButtonOptions(
                                                                                            height: 40.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(25.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(SizedBox(width: 3.0)),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
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
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Container(
                                                                                height: 300.0,
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final listaentrevistasalaflia = containerFormulario2RowList.toList();

                                                                                    return FlutterFlowDataTable<Formulario2Row>(
                                                                                      controller: _model.paginatedDataTableController2,
                                                                                      data: listaentrevistasalaflia,
                                                                                      columnsBuilder: (onSortChanged) => [
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Nombres',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Apellidos',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Tel',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Etapa',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Acciones',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                      dataRowBuilder: (listaentrevistasalafliaItem, listaentrevistasalafliaIndex, selected, onSelectChanged) => DataRow(
                                                                                        color: WidgetStateProperty.all(
                                                                                          listaentrevistasalafliaIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                        cells: [
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listaentrevistasalafliaItem.nomEnt,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listaentrevistasalafliaItem.apeEnt,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listaentrevistasalafliaItem.telEnt,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children: [
                                                                                              Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listaentrevistasalafliaItem.formulario,
                                                                                                  'Sin dato',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 3.0)),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
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
                                                                                                              child: Formulario2Widget(
                                                                                                                idingreso: containerIngresosRow,
                                                                                                                rowexp: widget.rowexp!,
                                                                                                                identrevista: listaentrevistasalafliaItem.idForm2,
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
                                                                                                  text: 'Ver y editar',
                                                                                                  icon: Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    width: 130.0,
                                                                                                    height: 30.0,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Color(0x4C4B39EF),
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          color: Color(0xFF14181B),
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0xFF4B39EF),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              FlutterFlowIconButton(
                                                                                                borderRadius: 8.0,
                                                                                                buttonSize: 40.0,
                                                                                                icon: Icon(
                                                                                                  Icons.delete_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                                onPressed: () async {
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return WebViewAware(
                                                                                                            child: AlertDialog(
                                                                                                              title: Text('Borrar entrevista'),
                                                                                                              content: Text('Estas por borrar la entrevista. Estas seguro?'),
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
                                                                                                    await Formulario2Table().delete(
                                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                                        'idForm2',
                                                                                                        listaentrevistasalafliaItem.idForm2,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 3.0)),
                                                                                          ),
                                                                                        ].map((c) => DataCell(c)).toList(),
                                                                                      ),
                                                                                      paginated: true,
                                                                                      selectable: false,
                                                                                      hidePaginator: false,
                                                                                      showFirstLastButtons: false,
                                                                                      headingRowHeight: 56.0,
                                                                                      dataRowHeight: 100.0,
                                                                                      columnSpacing: 20.0,
                                                                                      headingRowColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      addHorizontalDivider: true,
                                                                                      addTopAndBottomDivider: false,
                                                                                      hideDefaultHorizontalDivider: true,
                                                                                      horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      horizontalDividerThickness: 1.0,
                                                                                      addVerticalDivider: false,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 5.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          Formulario4Row>>(
                                                                    future: Formulario4Table()
                                                                        .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eqOrNull(
                                                                        'idIngreso',
                                                                        widget
                                                                            .ingresorow,
                                                                      ),
                                                                    ),
                                                                    builder:
                                                                        (context,
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
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<Formulario4Row>
                                                                          containerFormulario4RowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        height:
                                                                            500.0,
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxWidth:
                                                                              800.0,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Ampliacion de Informacion',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1.0, -1.0),
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
                                                                                                      child: Formulario4Widget(
                                                                                                        idingreso: containerIngresosRow,
                                                                                                        rowexp: widget.rowexp,
                                                                                                        editar: false,
                                                                                                        identrevista: 0,
                                                                                                        formulario: 'Entrevistas y Ampliacion de informacion',
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          text: 'Agregar entrevista',
                                                                                          options: FFButtonOptions(
                                                                                            height: 40.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  color: Colors.white,
                                                                                                  letterSpacing: 0.0,
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
                                                                                    ].divide(SizedBox(height: 8.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Expanded(
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final listform4 = containerFormulario4RowList.toList();

                                                                                    return FlutterFlowDataTable<Formulario4Row>(
                                                                                      controller: _model.paginatedDataTableController3,
                                                                                      data: listform4,
                                                                                      columnsBuilder: (onSortChanged) => [
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Nombres',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Apellidos',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Tel',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Etapa',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Acciones',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                      dataRowBuilder: (listform4Item, listform4Index, selected, onSelectChanged) => DataRow(
                                                                                        color: WidgetStateProperty.all(
                                                                                          listform4Index % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                        cells: [
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listform4Item.nomEnt,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listform4Item.apeEnt,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listform4Item.telEnt,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listform4Item.formulario,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
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
                                                                                                              child: Formulario4Widget(
                                                                                                                idingreso: containerIngresosRow,
                                                                                                                rowexp: widget.rowexp,
                                                                                                                editar: true,
                                                                                                                identrevista: listform4Item.idForm4,
                                                                                                                formulario: 'Entrevistas y Ampliacion de informacion',
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  text: 'Ver y editar',
                                                                                                  icon: Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    width: 130.0,
                                                                                                    height: 36.0,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Color(0x4C4B39EF),
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          color: Color(0xFF14181B),
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0xFF4B39EF),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              FlutterFlowIconButton(
                                                                                                borderRadius: 8.0,
                                                                                                buttonSize: 40.0,
                                                                                                icon: Icon(
                                                                                                  Icons.delete_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                                onPressed: () async {
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return WebViewAware(
                                                                                                            child: AlertDialog(
                                                                                                              title: Text('Borrar entrevista'),
                                                                                                              content: Text('Estas por borrar la entrevista. Estas seguro?'),
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
                                                                                                    await Formulario4Table().delete(
                                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                                        'idForm4',
                                                                                                        listform4Item.idForm4,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ].map((c) => DataCell(c)).toList(),
                                                                                      ),
                                                                                      paginated: true,
                                                                                      selectable: false,
                                                                                      hidePaginator: false,
                                                                                      showFirstLastButtons: false,
                                                                                      headingRowHeight: 56.0,
                                                                                      dataRowHeight: 100.0,
                                                                                      columnSpacing: 20.0,
                                                                                      headingRowColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      addHorizontalDivider: true,
                                                                                      addTopAndBottomDivider: false,
                                                                                      hideDefaultHorizontalDivider: true,
                                                                                      horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      horizontalDividerThickness: 1.0,
                                                                                      addVerticalDivider: false,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ].divide(SizedBox(height: 5.0)),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          AccionesAccesoriasRow>>(
                                                                    future: AccionesAccesoriasTable()
                                                                        .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eqOrNull(
                                                                        'idingreso',
                                                                        widget
                                                                            .ingresorow,
                                                                      ),
                                                                    ),
                                                                    builder:
                                                                        (context,
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
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<AccionesAccesoriasRow>
                                                                          containerAccionesAccesoriasRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        height:
                                                                            500.0,
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxWidth:
                                                                              800.0,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Acciones accesorias de intervencion',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1.0, -1.0),
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
                                                                                                      child: OtrasactividadesWidget(
                                                                                                        expe: widget.rowexp,
                                                                                                        ingreso: containerIngresosRow,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          text: 'Agregar acciones accesorias',
                                                                                          options: FFButtonOptions(
                                                                                            height: 40.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  color: Colors.white,
                                                                                                  letterSpacing: 0.0,
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
                                                                                    ].divide(SizedBox(height: 8.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Expanded(
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final listaccionesaccesorias = containerAccionesAccesoriasRowList.toList();

                                                                                    return FlutterFlowDataTable<AccionesAccesoriasRow>(
                                                                                      controller: _model.paginatedDataTableController4,
                                                                                      data: listaccionesaccesorias,
                                                                                      columnsBuilder: (onSortChanged) => [
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Fecha',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 110.0,
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Descripcion',
                                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                      fontFamily: 'Noto Sans JP',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Acciones',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Noto Sans JP',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 100.0,
                                                                                        ),
                                                                                      ],
                                                                                      dataRowBuilder: (listaccionesaccesoriasItem, listaccionesaccesoriasIndex, selected, onSelectChanged) => DataRow(
                                                                                        color: WidgetStateProperty.all(
                                                                                          listaccionesaccesoriasIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                        cells: [
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              dateTimeFormat(
                                                                                                "d/M/y",
                                                                                                listaccionesaccesoriasItem.fecha,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listaccionesaccesoriasItem.descripcion,
                                                                                              'Sin dato',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
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
                                                                                                              child: OtrasactividadesWidget(
                                                                                                                expe: widget.rowexp,
                                                                                                                ingreso: containerIngresosRow,
                                                                                                                idacciones: listaccionesaccesoriasItem.id,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  text: 'Ver y editar',
                                                                                                  icon: Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    size: 15.0,
                                                                                                  ),
                                                                                                  options: FFButtonOptions(
                                                                                                    width: 130.0,
                                                                                                    height: 36.0,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Color(0x4C4B39EF),
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          color: Color(0xFF14181B),
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                    elevation: 0.0,
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0xFF4B39EF),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              FlutterFlowIconButton(
                                                                                                borderRadius: 8.0,
                                                                                                buttonSize: 40.0,
                                                                                                icon: Icon(
                                                                                                  Icons.delete_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                                onPressed: () async {
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return WebViewAware(
                                                                                                            child: AlertDialog(
                                                                                                              title: Text('Borrar entrevista'),
                                                                                                              content: Text('Estas por borrar la entrevista. Estas seguro?'),
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
                                                                                                    await AccionesAccesoriasTable().delete(
                                                                                                      matchingRows: (rows) => rows.eqOrNull(
                                                                                                        'id',
                                                                                                        listaccionesaccesoriasItem.id,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ].map((c) => DataCell(c)).toList(),
                                                                                      ),
                                                                                      paginated: true,
                                                                                      selectable: false,
                                                                                      hidePaginator: false,
                                                                                      showFirstLastButtons: false,
                                                                                      headingRowHeight: 56.0,
                                                                                      dataRowHeight: 100.0,
                                                                                      columnSpacing: 20.0,
                                                                                      headingRowColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      addHorizontalDivider: true,
                                                                                      addTopAndBottomDivider: false,
                                                                                      hideDefaultHorizontalDivider: true,
                                                                                      horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      horizontalDividerThickness: 1.0,
                                                                                      addVerticalDivider: false,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ].divide(SizedBox(height: 5.0)),
                                                                          ),
                                                                        ),
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
                                      ],
                                    ),
                                  ]
                                      .divide(SizedBox(height: 10.0))
                                      .around(SizedBox(height: 10.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
