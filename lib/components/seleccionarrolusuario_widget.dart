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
      alignment: const AlignmentDirectional(0.0, 0.0),
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
            width: 400.0,
            height: 180.61,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
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
              padding: const EdgeInsets.all(20.0),
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
                        controller: _model.dropDownValueController ??=
                            FormFieldController<int>(
                          _model.dropDownValue ??= widget.usuariorow?.rolId,
                        ),
                        options: List<int>.from(
                            dropDownRolesRowList.map((e) => e.id).toList()),
                        optionLabels: dropDownRolesRowList
                            .map((e) => e.rol)
                            .withoutNulls
                            .toList(),
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue = val),
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
                        margin: const EdgeInsetsDirectional.fromSTEB(
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
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await UserRolTable().update(
                          data: {
                            'idrol': _model.dropDownValue,
                          },
                          matchingRows: (rows) => rows.eqOrNull(
                            'iduser',
                            widget.usuariorow?.id,
                          ),
                        );
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: const Text('Rol actualizado'),
                                content:
                                    const Text('EL rol se actualizo correctamente'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                        Navigator.pop(context);
                      },
                      text: 'Guardar',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 60.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
