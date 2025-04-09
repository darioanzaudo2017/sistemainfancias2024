import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'seleccionarrolusuario_model.dart';
export 'seleccionarrolusuario_model.dart';

class SeleccionarrolusuarioWidget extends StatefulWidget {
  const SeleccionarrolusuarioWidget({
    super.key,
    required this.idusuario,
    required this.usuariorow,
  });

  final String? idusuario;
  final VistaUsuariosRolesRow? usuariorow;

  @override
  State<SeleccionarrolusuarioWidget> createState() =>
      _SeleccionarrolusuarioWidgetState();
}

class _SeleccionarrolusuarioWidgetState
    extends State<SeleccionarrolusuarioWidget> {
  late SeleccionarrolusuarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeleccionarrolusuarioModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<UserRolRow>>(
        future: UserRolTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'iduser',
            widget.idusuario,
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
          List<UserRolRow> bottomSheetEditUserRolRowList = snapshot.data!;

          final bottomSheetEditUserRolRow =
              bottomSheetEditUserRolRowList.isNotEmpty
                  ? bottomSheetEditUserRolRowList.first
                  : null;

          return Container(
            width: 548.7,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Color(0x3B1D2429),
                  offset: Offset(
                    0.0,
                    -3.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.usuariorow?.nombreCompleto,
                      'Sin dato',
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Noto Sans JP',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Seleccionar rol',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Noto Sans JP',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  FutureBuilder<List<RolesRow>>(
                    future: RolesTable().queryRows(
                      queryFn: (q) => q,
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
                      List<RolesRow> dropDownRolesRowList = snapshot.data!;

                      return FlutterFlowDropDown<int>(
                        controller: _model.dropDownValueController1 ??=
                            FormFieldController<int>(
                          _model.dropDownValue1 ??= widget.usuariorow?.rolId,
                        ),
                        options: List<int>.from(
                            dropDownRolesRowList.map((e) => e.id).toList()),
                        optionLabels: dropDownRolesRowList
                            .map((e) => e.rol)
                            .withoutNulls
                            .toList(),
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue1 = val),
                        height: 40.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Noto Sans JP',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Seleccionar rol',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                  if (_model.dropDownValue1 == 3)
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'Seleccionar SPD',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Noto Sans JP',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  if (_model.dropDownValue1 == 3)
                    FutureBuilder<List<SpdRow>>(
                      future: SpdTable().queryRows(
                        queryFn: (q) => q,
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
                        List<SpdRow> dropDownSpdRowList = snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<String>(
                            _model.dropDownValue2 ??= widget.usuariorow?.spd,
                          ),
                          options: dropDownSpdRowList
                              .map((e) => e.nombrespd)
                              .toList(),
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue2 = val),
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans JP',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Seleccionar SPD',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  if (_model.dropDownValue1 == 2)
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'Seleccionar Zona',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Noto Sans JP',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  if (_model.dropDownValue1 == 2)
                    FutureBuilder<List<ZonasRow>>(
                      future: ZonasTable().queryRows(
                        queryFn: (q) => q,
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
                        List<ZonasRow> dropDownZonasRowList = snapshot.data!;

                        return FlutterFlowDropDown<int>(
                          controller: _model.dropDownValueController3 ??=
                              FormFieldController<int>(
                            _model.dropDownValue3 ??=
                                widget.usuariorow?.zonaUsuario,
                          ),
                          options: List<int>.from(
                              dropDownZonasRowList.map((e) => e.id).toList()),
                          optionLabels: dropDownZonasRowList
                              .map((e) => e.zona)
                              .withoutNulls
                              .toList(),
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue3 = val),
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans JP',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Seleccionar zona',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        );
                      },
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await UserRolTable().update(
                          data: {
                            'idrol': _model.dropDownValue1,
                          },
                          matchingRows: (rows) => rows.eqOrNull(
                            'iduser',
                            widget.usuariorow?.id,
                          ),
                        );
                        if (_model.dropDownValue1 == 1) {
                          await UsuariosTable().update(
                            data: {
                              'SPD': 'Coordinacion',
                              'zona_usuario': _model.dropDownValue3,
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              widget.usuariorow?.id,
                            ),
                          );
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: Text('Rol actualizado'),
                                  content:
                                      Text('EL rol se actualizo correctamente'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                          Navigator.pop(context);
                        } else {
                          if (_model.dropDownValue1 == 2) {
                            await UsuariosTable().update(
                              data: {
                                'SPD': 'Zona',
                                'zona_usuario': _model.dropDownValue3,
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'id',
                                widget.usuariorow?.id,
                              ),
                            );
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Rol actualizado'),
                                    content: Text(
                                        'EL rol se actualizo correctamente'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                            Navigator.pop(context);
                          } else {
                            if (_model.dropDownValue1 == 3) {
                              await UsuariosTable().update(
                                data: {
                                  'SPD': _model.dropDownValue2,
                                  'zona_usuario': _model.dropDownValue3,
                                },
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  widget.usuariorow?.id,
                                ),
                              );
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Rol actualizado'),
                                      content: Text(
                                          'EL rol se actualizo correctamente'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                              Navigator.pop(context);
                            }
                          }
                        }
                      },
                      text: 'Guardar',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 60.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 10.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
