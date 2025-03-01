import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'agregar_conviviente_model.dart';
export 'agregar_conviviente_model.dart';

class AgregarConvivienteWidget extends StatefulWidget {
  const AgregarConvivienteWidget({
    super.key,
    required this.rowingreso,
    required this.idexp,
    int? idgrupoconviviente,
    this.editar,
    this.idnnya,
  }) : this.idgrupoconviviente = idgrupoconviviente ?? 0;

  final IngresosRow? rowingreso;
  final VistaExpedientesUltimoEstadoRow? idexp;
  final int idgrupoconviviente;
  final bool? editar;
  final int? idnnya;

  @override
  State<AgregarConvivienteWidget> createState() =>
      _AgregarConvivienteWidgetState();
}

class _AgregarConvivienteWidgetState extends State<AgregarConvivienteWidget> {
  late AgregarConvivienteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgregarConvivienteModel());

    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldDniFocusNode ??= FocusNode();

    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textFieldvinculoFocusNode ??= FocusNode();

    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textFieldFocusNode6 ??= FocusNode();

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
      child: FutureBuilder<List<GrupoConvivienteRow>>(
        future: GrupoConvivienteTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'id',
            widget.idgrupoconviviente,
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
          List<GrupoConvivienteRow> containerGrupoConvivienteRowList =
              snapshot.data!;

          final containerGrupoConvivienteRow =
              containerGrupoConvivienteRowList.isNotEmpty
                  ? containerGrupoConvivienteRowList.first
                  : null;

          return Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.85,
              height: 550.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    80.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  '3. Grupo conviviente / No conviviente',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.cancel_outlined,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Es grupo conviente?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: FlutterFlowRadioButton(
                                  options: ['Si', 'No'].toList(),
                                  onChanged: (val) => safeSetState(() {}),
                                  controller:
                                      _model.radioButtoncudValueController ??=
                                          FormFieldController<String>(
                                              valueOrDefault<String>(
                                    containerGrupoConvivienteRow?.conviviente,
                                    'No',
                                  )),
                                  optionHeight: 40.0,
                                  optionWidth: 70.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                      ),
                                  selectedTextStyle:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Noto Sans JP',
                                            letterSpacing: 0.0,
                                          ),
                                  buttonPosition: RadioButtonPosition.right,
                                  direction: Axis.horizontal,
                                  radioButtonColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveRadioButtonColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment: WrapAlignment.start,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController1 ??=
                                      TextEditingController(
                                    text: containerGrupoConvivienteRow?.nombre,
                                  ),
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Nombre',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController2 ??=
                                      TextEditingController(
                                    text:
                                        containerGrupoConvivienteRow?.apellido,
                                  ),
                                  focusNode: _model.textFieldFocusNode2,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Apellido',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.textFieldDniTextController ??=
                                          TextEditingController(
                                    text: containerGrupoConvivienteRow?.dni
                                        .toString(),
                                  ),
                                  focusNode: _model.textFieldDniFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'DNI',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .textFieldDniTextControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [_model.textFieldDniMask],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Fecha de nacimiento:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      "d/M/y",
                                      _model.datePicked,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'No tiene fecha seleccionada',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                        lineHeight: 0.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final _datePickedDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                      builder: (context, child) {
                                        return wrapInMaterialDatePickerTheme(
                                          context,
                                          child!,
                                          headerBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          headerForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          headerTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .override(
                                                    fontFamily: 'Noto Sans JP',
                                                    fontSize: 32.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          pickerBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          pickerForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          selectedDateTimeBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          selectedDateTimeForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          actionButtonForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          iconSize: 24.0,
                                        );
                                      },
                                    );

                                    if (_datePickedDate != null) {
                                      safeSetState(() {
                                        _model.datePicked = DateTime(
                                          _datePickedDate.year,
                                          _datePickedDate.month,
                                          _datePickedDate.day,
                                        );
                                      });
                                    } else if (_model.datePicked != null) {
                                      safeSetState(() {
                                        _model.datePicked = getCurrentTimestamp;
                                      });
                                    }
                                  },
                                  text: valueOrDefault<String>(
                                    dateTimeFormat(
                                      "d/M/y",
                                      containerGrupoConvivienteRow
                                          ?.fechaNacimiento,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Fecha',
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Container(
                                    width: 100.0,
                                    child: TextFormField(
                                      controller: _model.textController4 ??=
                                          TextEditingController(
                                        text: containerGrupoConvivienteRow?.edad
                                            ?.toString(),
                                      ),
                                      focusNode: _model.textFieldFocusNode3,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Edad',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Noto Sans JP',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Noto Sans JP',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Noto Sans JP',
                                            letterSpacing: 0.0,
                                          ),
                                      validator: _model.textController4Validator
                                          .asValidator(context),
                                      inputFormatters: [_model.textFieldMask3],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownValue ??=
                                        containerGrupoConvivienteRow?.vinculo,
                                  ),
                                  options: [
                                    'Madre',
                                    'Padre',
                                    'Hemana/os',
                                    'Abuela/o paterno',
                                    'Otros',
                                    'Abuela/o materno',
                                    'tia/o materno',
                                    'tia/o paterno'
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue = val),
                                  width: 200.0,
                                  height: 60.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Vinculo',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model
                                            .textFieldvinculoTextController ??=
                                        TextEditingController(
                                      text:
                                          containerGrupoConvivienteRow?.vinculo,
                                    ),
                                    focusNode: _model.textFieldvinculoFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Otro vinculo',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Noto Sans JP',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Otro vinculo',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Noto Sans JP',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .textFieldvinculoTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController6 ??=
                                        TextEditingController(
                                      text: containerGrupoConvivienteRow
                                          ?.telefono,
                                    ),
                                    focusNode: _model.textFieldFocusNode4,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Teléfono',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Noto Sans JP',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Noto Sans JP',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model.textController6Validator
                                        .asValidator(context),
                                    inputFormatters: [_model.textFieldMask4],
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController7 ??=
                                TextEditingController(
                              text: containerGrupoConvivienteRow?.direccion,
                            ),
                            focusNode: _model.textFieldFocusNode5,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Dirección',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Noto Sans JP',
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Noto Sans JP',
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
                                  fontFamily: 'Noto Sans JP',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.textController7Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController8 ??=
                                TextEditingController(
                              text: containerGrupoConvivienteRow?.observaciones,
                            ),
                            focusNode: _model.textFieldFocusNode6,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Observaciones',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Noto Sans JP',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Observaciones',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Noto Sans JP',
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
                                  fontFamily: 'Noto Sans JP',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 5,
                            validator: _model.textController8Validator
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
                                    if (!widget.editar!) {
                                      _model.chekdnigrupo =
                                          await ExisteDNInnyaCall.call(
                                        dni: _model
                                            .textFieldDniTextController.text,
                                      );

                                      if (ExisteDNInnyaCall.check(
                                        (_model.chekdnigrupo?.jsonBody ?? ''),
                                      )!) {
                                        _model.busquedapersonadni =
                                            await NNyATable().queryRows(
                                          queryFn: (q) => q.eqOrNull(
                                            'DNI',
                                            int.tryParse(_model
                                                .textFieldDniTextController
                                                .text),
                                          ),
                                        );
                                        _model.nombre = _model
                                            .busquedapersonadni
                                            ?.firstOrNull
                                            ?.nombre;
                                        _model.apellido = _model
                                            .busquedapersonadni
                                            ?.firstOrNull
                                            ?.apellido;
                                        _model.dni = _model.busquedapersonadni
                                            ?.firstOrNull?.dni;
                                        safeSetState(() {});
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: Text(
                                                            'El DNI esta duplicado'),
                                                        content: Text(
                                                            'Desea guardar como grupo conviviente a:${_model.nombre}, ${_model.apellido}, DNI: ${_model.dni?.toString()}'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                Text('Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child:
                                                                Text('Confirm'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          if (_model.radioButtoncudValue ==
                                              null) {
                                            return;
                                          }
                                          await NNyAExpGruTable().insert({
                                            'idNNyA': _model.busquedapersonadni
                                                ?.firstOrNull?.id,
                                            'idExp': widget.idexp?.id,
                                            'detalle': 'Grupo Conviviente',
                                          });
                                          await IngresosTable().update(
                                            data: {
                                              'form1seccion3': true,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              widget.rowingreso?.id,
                                            ),
                                          );
                                          _model.aaa =
                                              await GrupoConvivienteTable()
                                                  .insert({
                                            'nombre': _model.busquedapersonadni
                                                ?.firstOrNull?.nombre,
                                            'apellido': _model
                                                .busquedapersonadni
                                                ?.firstOrNull
                                                ?.apellido,
                                            'vinculo': _model.dropDownValue,
                                            'dni': _model.busquedapersonadni
                                                ?.firstOrNull?.dni,
                                            'fecha_nacimiento':
                                                supaSerialize<DateTime>(
                                                    _model.datePicked),
                                            'edad': _model.busquedapersonadni
                                                ?.firstOrNull?.edad,
                                            'telefono':
                                                _model.textController6.text,
                                            'direccion':
                                                _model.textController7.text,
                                            'observaciones':
                                                _model.textController8.text,
                                            'idingreso': widget.rowingreso?.id,
                                            'idexpe': widget.idexp?.id,
                                            'conviviente':
                                                _model.radioButtoncudValue,
                                            'idnnya': _model.busquedapersonadni
                                                ?.firstOrNull?.id,
                                          });
                                          await GrupoConvivienteTable().update(
                                            data: {
                                              'idnnyaGrupo': _model
                                                  .busquedapersonadni
                                                  ?.firstOrNull
                                                  ?.id,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              _model.aaa?.id,
                                            ),
                                          );
                                          Navigator.pop(context, true);
                                        } else {
                                          safeSetState(() {
                                            _model.textFieldDniTextController
                                                ?.clear();
                                          });
                                        }
                                      } else {
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        if (_model.radioButtoncudValue ==
                                            null) {
                                          return;
                                        }
                                        _model.crearnnyanuevo =
                                            await NNyATable().insert({
                                          'Nombre': functions.mayusculas(
                                              _model.textController1.text),
                                          'Apellido': functions.mayusculas(
                                              _model.textController2.text),
                                          'DNI': int.tryParse(_model
                                              .textFieldDniTextController.text),
                                          'edad': int.tryParse(
                                              _model.textController4.text),
                                          'updated_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'iduser': currentUserUid,
                                        });
                                        _model.creargrupo =
                                            await GrupoConvivienteTable()
                                                .insert({
                                          'nombre': functions.mayusculas(
                                              _model.textController1.text),
                                          'apellido': functions.mayusculas(
                                              _model.textController2.text),
                                          'vinculo': _model.dropDownValue !=
                                                  'Otros'
                                              ? _model.dropDownValue
                                              : _model
                                                  .textFieldvinculoTextController
                                                  .text,
                                          'dni': int.tryParse(_model
                                              .textFieldDniTextController.text),
                                          'fecha_nacimiento':
                                              supaSerialize<DateTime>(
                                                  _model.datePicked),
                                          'edad': int.tryParse(
                                              _model.textController4.text),
                                          'telefono':
                                              _model.textController6.text,
                                          'direccion':
                                              _model.textController7.text,
                                          'observaciones':
                                              _model.textController8.text,
                                          'idingreso': widget.rowingreso?.id,
                                          'idexpe': widget.idexp?.id,
                                          'conviviente':
                                              _model.radioButtoncudValue,
                                          'idnnya': _model.crearnnyanuevo?.id,
                                        });
                                        await NNyAExpGruTable().insert({
                                          'idNNyA': _model.crearnnyanuevo?.id,
                                          'idExp': widget.idexp?.id,
                                          'detalle': 'Grupo Conviviente',
                                        });
                                        await GrupoConvivienteTable().update(
                                          data: {
                                            'idnnyaGrupo':
                                                _model.crearnnyanuevo?.id,
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            _model.creargrupo?.id,
                                          ),
                                        );
                                        await IngresosTable().update(
                                          data: {
                                            'form1seccion3': true,
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            widget.rowingreso?.id,
                                          ),
                                        );
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text(
                                                    'Se guardo correctamente'),
                                                content: Text(
                                                    'Se gardo correctamente la informacion'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                        Navigator.pop(context, true);
                                      }
                                    } else {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.radioButtoncudValue == null) {
                                        return;
                                      }
                                      await GrupoConvivienteTable().update(
                                        data: {
                                          'nombre': _model.textController1.text,
                                          'apellido':
                                              _model.textController2.text,
                                          'vinculo': _model.dropDownValue !=
                                                  'Otros'
                                              ? _model.dropDownValue
                                              : _model
                                                  .textFieldvinculoTextController
                                                  .text,
                                          'dni': int.tryParse(_model
                                              .textFieldDniTextController.text),
                                          'fecha_nacimiento':
                                              supaSerialize<DateTime>(_model
                                                          .datePicked !=
                                                      null
                                                  ? _model.datePicked
                                                  : containerGrupoConvivienteRow
                                                      ?.fechaNacimiento),
                                          'edad': int.tryParse(
                                              _model.textController4.text),
                                          'telefono':
                                              _model.textController6.text,
                                          'direccion':
                                              _model.textController7.text,
                                          'observaciones':
                                              _model.textController8.text,
                                          'idingreso': widget.rowingreso?.id,
                                          'idexpe': widget.idexp?.id,
                                          'conviviente':
                                              _model.radioButtoncudValue,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.idgrupoconviviente,
                                        ),
                                      );
                                      await NNyATable().update(
                                        data: {
                                          'Nombre': _model.textController1.text,
                                          'Apellido':
                                              _model.textController2.text,
                                          'DNI': int.tryParse(_model
                                              .textFieldDniTextController.text),
                                          'edad': int.tryParse(
                                              _model.textController4.text),
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          widget.idnnya,
                                        ),
                                      );
                                      Navigator.pop(context, true);
                                    }

                                    safeSetState(() {});
                                  },
                                  text: 'Guardar',
                                  icon: Icon(
                                    Icons.save,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 250.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).success,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Noto Sans JP',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
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
                              ],
                            ),
                          ],
                        ),
                      ]
                          .divide(SizedBox(height: 8.0))
                          .around(SizedBox(height: 8.0)),
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
