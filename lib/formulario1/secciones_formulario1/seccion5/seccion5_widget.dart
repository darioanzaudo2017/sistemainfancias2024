import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'seccion5_model.dart';
export 'seccion5_model.dart';

class Seccion5Widget extends StatefulWidget {
  const Seccion5Widget({
    super.key,
    required this.rowingreso,
    required this.rowexp,
    this.editar,
  });

  final IngresosRow? rowingreso;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final bool? editar;

  @override
  State<Seccion5Widget> createState() => _Seccion5WidgetState();
}

class _Seccion5WidgetState extends State<Seccion5Widget> {
  late Seccion5Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Seccion5Model());

    _model.textFieldmotivoFocusNode ??= FocusNode();

    _model.textFieldresenaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<Seccion5Row>>(
        future: Seccion5Table().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'idIngreso',
            widget.rowingreso?.id,
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
          List<Seccion5Row> containerSeccion5RowList = snapshot.data!;

          final containerSeccion5Row = containerSeccion5RowList.isNotEmpty
              ? containerSeccion5RowList.first
              : null;

          return Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 4.5,
              constraints: const BoxConstraints(
                maxWidth: 600.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    150.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  '5. Motivo de la consulta',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 46.0,
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textFieldmotivoTextController ??=
                                TextEditingController(
                              text: containerSeccion5Row?.motivo,
                            ),
                            focusNode: _model.textFieldmotivoFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Motivo de la consulta',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                              alignLabelWithHint: true,
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 20,
                            minLines: 4,
                            validator: _model
                                .textFieldmotivoTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textFieldresenaTextController ??=
                                TextEditingController(
                              text: containerSeccion5Row?.resena,
                            ),
                            focusNode: _model.textFieldresenaFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Reseña de la situación',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                              alignLabelWithHint: true,
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 20,
                            minLines: 4,
                            validator: _model
                                .textFieldresenaTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (!widget.editar!) {
                                      await Seccion5Table().insert({
                                        'motivo': _model
                                            .textFieldmotivoTextController.text,
                                        'resena': _model
                                            .textFieldresenaTextController.text,
                                        'idIngreso': widget.rowingreso?.id,
                                        'idExpediente': widget.rowexp?.id,
                                        'iduser': currentUserUid,
                                      });
                                      await IngresosTable().update(
                                        data: {
                                          'form1seccion5': true,
                                          'updated_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'iduser': currentUserUid,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.rowingreso?.id,
                                        ),
                                      );
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Carga correcta'),
                                            content: const Text(
                                                'La informacion se guardo correctamente!!'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      Navigator.pop(context, true);
                                    } else {
                                      await Seccion5Table().update(
                                        data: {
                                          'motivo': _model
                                              .textFieldmotivoTextController
                                              .text,
                                          'resena': _model
                                              .textFieldresenaTextController
                                              .text,
                                          'iduser': currentUserUid,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'idIngreso',
                                          widget.rowingreso?.id,
                                        ),
                                      );
                                      await IngresosTable().update(
                                        data: {
                                          'updated_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'iduser': currentUserUid,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.rowingreso?.id,
                                        ),
                                      );
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Carga correcta'),
                                            content: const Text(
                                                'La informacion se edito correctamente!!'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      Navigator.pop(context);
                                    }
                                  },
                                  text: 'Guardar',
                                  icon: const Icon(
                                    Icons.save,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 250.0,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).success,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Raleway',
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
                              ],
                            ),
                          ],
                        ),
                        FutureBuilder<List<GrupofamiliarexpedientesRow>>(
                          future:
                              GrupofamiliarexpedientesTable().querySingleRow(
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
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
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.expedienteprincipal =
                                      await VistaExpedientesUltimoEstadoTable()
                                          .queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'idexpediente',
                                      containerGrupofamiliarexpedientesRow
                                          ?.expedienteprincipal,
                                    ),
                                  );
                                  _model.seccion5 =
                                      await Seccion5Table().queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'idIngreso',
                                      _model.expedienteprincipal?.firstOrNull
                                          ?.idIngreso,
                                    ),
                                  );
                                  await Seccion5Table().insert({
                                    'motivo':
                                        _model.seccion5?.firstOrNull?.motivo,
                                    'resena':
                                        _model.seccion5?.firstOrNull?.resena,
                                    'idIngreso': widget.rowingreso?.id,
                                    'idExpediente': widget.rowexp?.id,
                                    'iduser': currentUserUid,
                                  });
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('3'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  await IngresosTable().update(
                                    data: {
                                      'form1seccion5': true,
                                      'updated_at': supaSerialize<DateTime>(
                                          getCurrentTimestamp),
                                      'iduser': currentUserUid,
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      widget.rowingreso?.id,
                                    ),
                                  );
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Carga correcta'),
                                        content: const Text(
                                            'La informacion se guardo correctamente!!'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  Navigator.pop(context, true);

                                  safeSetState(() {});
                                },
                                text:
                                    'Cargar informacion de expediente principal',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            );
                          },
                        ),
                      ]
                          .divide(const SizedBox(height: 8.0))
                          .around(const SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
