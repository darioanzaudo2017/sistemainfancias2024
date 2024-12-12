import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'avisoconcurrenciaadulto_model.dart';
export 'avisoconcurrenciaadulto_model.dart';

class AvisoconcurrenciaadultoWidget extends StatefulWidget {
  const AvisoconcurrenciaadultoWidget({
    super.key,
    required this.rowingreso,
    required this.rowexp,
    this.editar,
    this.idform3,
  });

  final IngresosRow? rowingreso;
  final VistaExpedientesUltimoEstadoRow? rowexp;
  final bool? editar;
  final int? idform3;

  @override
  State<AvisoconcurrenciaadultoWidget> createState() =>
      _AvisoconcurrenciaadultoWidgetState();
}

class _AvisoconcurrenciaadultoWidgetState
    extends State<AvisoconcurrenciaadultoWidget> {
  late AvisoconcurrenciaadultoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoconcurrenciaadultoModel());

    _model.textFieldmotivoFocusNode1 ??= FocusNode();

    _model.textFieldmotivoFocusNode2 ??= FocusNode();

    _model.textFieldmotivoFocusNode3 ??= FocusNode();

    _model.textFieldmotivoFocusNode4 ??= FocusNode();

    _model.textFieldmotivoTextController5 ??=
        TextEditingController(text: widget.rowexp?.spd);
    _model.textFieldmotivoFocusNode5 ??= FocusNode();

    _model.textFieldresenaFocusNode1 ??= FocusNode();

    _model.textFieldresenaFocusNode2 ??= FocusNode();

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
      child: FutureBuilder<List<AvisovisitaadultosRow>>(
        future: (_model.requestCompleter ??=
                Completer<List<AvisovisitaadultosRow>>()
                  ..complete(AvisovisitaadultosTable().querySingleRow(
                    queryFn: (q) => q.eqOrNull(
                      'idIngreso',
                      widget.rowingreso?.id,
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
          List<AvisovisitaadultosRow> containerAvisovisitaadultosRowList =
              snapshot.data!;

          final containerAvisovisitaadultosRow =
              containerAvisovisitaadultosRowList.isNotEmpty
                  ? containerAvisovisitaadultosRowList.first
                  : null;

          return Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 4.5,
              height: 621.0,
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
                                    130.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Aviso de concurrencia adulto',
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
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.textFieldmotivoTextController1 ??=
                                      TextEditingController(
                                text: containerAvisovisitaadultosRow?.nombres,
                              ),
                              focusNode: _model.textFieldmotivoFocusNode1,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Nombres',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'Nombres',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                              validator: _model
                                  .textFieldmotivoTextController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.textFieldmotivoTextController2 ??=
                                      TextEditingController(
                                text: containerAvisovisitaadultosRow?.apellidos,
                              ),
                              focusNode: _model.textFieldmotivoFocusNode2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Apellidos',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'Apellidos',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                              validator: _model
                                  .textFieldmotivoTextController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.textFieldmotivoTextController3 ??=
                                      TextEditingController(
                                text: containerAvisovisitaadultosRow?.dni
                                    ?.toString(),
                              ),
                              focusNode: _model.textFieldmotivoFocusNode3,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'DNI',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'DNI',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                              validator: _model
                                  .textFieldmotivoTextController3Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.textFieldmotivoTextController4 ??=
                                      TextEditingController(
                                text: containerAvisovisitaadultosRow?.domicilio,
                              ),
                              focusNode: _model.textFieldmotivoFocusNode4,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Domicilio',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'Domicilio',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                              validator: _model
                                  .textFieldmotivoTextController4Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textFieldmotivoTextController5,
                            focusNode: _model.textFieldmotivoFocusNode5,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'CPC',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                              alignLabelWithHint: true,
                              hintText: 'CPC',
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
                            validator: _model
                                .textFieldmotivoTextController5Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller:
                                _model.textFieldresenaTextController1 ??=
                                    TextEditingController(
                              text: containerAvisovisitaadultosRow?.hora,
                            ),
                            focusNode: _model.textFieldresenaFocusNode1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Hora',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                              alignLabelWithHint: true,
                              hintText: 'Hora',
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
                            maxLength: 10,
                            validator: _model
                                .textFieldresenaTextController1Validator
                                .asValidator(context),
                            inputFormatters: [_model.textFieldresenaMask1],
                          ),
                        ),

                        // traer info de la tabla spd (telefono)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller:
                                _model.textFieldresenaTextController2 ??=
                                    TextEditingController(
                              text: containerAvisovisitaadultosRow
                                  ?.telcontactospd
                                  ?.toString(),
                            ),
                            focusNode: _model.textFieldresenaFocusNode2,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Telefono a contactar',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                              alignLabelWithHint: true,
                              hintText: 'Telefono a contactar',
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
                            maxLength: 10,
                            validator: _model
                                .textFieldresenaTextController2Validator
                                .asValidator(context),
                            inputFormatters: [_model.textFieldresenaMask2],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                dateTimeFormat(
                                  "d/M/y",
                                  _model.datePicked1,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'no tiene fecha',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                final datePicked1Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Raleway',
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
                                          FlutterFlowTheme.of(context).primary,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                if (datePicked1Date != null) {
                                  safeSetState(() {
                                    _model.datePicked1 = DateTime(
                                      datePicked1Date.year,
                                      datePicked1Date.month,
                                      datePicked1Date.day,
                                    );
                                  });
                                }
                              },
                              text: valueOrDefault<String>(
                                dateTimeFormat(
                                  "d/M/y",
                                  containerAvisovisitaadultosRow?.fechadoc,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'Fecha de documento',
                              ),
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
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                dateTimeFormat(
                                  "d/M/y",
                                  _model.datePicked2,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'no tiene fecha',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                final datePicked2Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Raleway',
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
                                          FlutterFlowTheme.of(context).primary,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                if (datePicked2Date != null) {
                                  safeSetState(() {
                                    _model.datePicked2 = DateTime(
                                      datePicked2Date.year,
                                      datePicked2Date.month,
                                      datePicked2Date.day,
                                    );
                                  });
                                }
                              },
                              text: valueOrDefault<String>(
                                dateTimeFormat(
                                  "d/M/y",
                                  containerAvisovisitaadultosRow?.fechadoc,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'Fecha de concurrencia',
                              ),
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
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.datePicked1 == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Campo obligatorio'),
                                        content: const Text('La fecha obligatoria!'),
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
                                  return;
                                }
                                if (_model.datePicked2 == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Campo obligatorio'),
                                        content: const Text('La fecha obligatoria!'),
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
                                  return;
                                }
                                if (containerAvisovisitaadultosRow?.id ==
                                    null) {
                                  await AvisovisitaadultosTable().insert({
                                    'idIngreso': widget.rowingreso?.id,
                                    'fechadoc': supaSerialize<DateTime>(
                                        _model.datePicked1),
                                    'domicilio': _model
                                        .textFieldmotivoTextController4.text,
                                    'fecha': supaSerialize<DateTime>(
                                        _model.datePicked2),
                                    'hora': _model
                                        .textFieldresenaTextController1.text,
                                    'CPC': widget.rowexp?.spd,
                                    'nombres': _model
                                        .textFieldmotivoTextController1.text,
                                    'apellidos': _model
                                        .textFieldmotivoTextController2.text,
                                    'dni': int.tryParse(_model
                                        .textFieldmotivoTextController3.text),
                                    'telcontactospd': int.tryParse(_model
                                        .textFieldresenaTextController2.text),
                                  });
                                  _model.apiResultm56 =
                                      await ConcurrenciaVisitaAdultoCall.call(
                                    fechadoc: dateTimeFormat(
                                      "d/M/y",
                                      _model.datePicked1,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    nombre: _model
                                        .textFieldmotivoTextController1.text,
                                    apellido: _model
                                        .textFieldmotivoTextController2.text,
                                    domicilio: _model
                                        .textFieldmotivoTextController4.text,
                                    fecha: dateTimeFormat(
                                      "d/M/y",
                                      _model.datePicked2,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    cpc: widget.rowexp?.spd,
                                    hora: _model
                                        .textFieldmotivoTextController5.text,
                                    idingreso: widget.rowingreso?.id,
                                    carpeta: widget.rowingreso?.idcarpeta,
                                    telefono: _model
                                        .textFieldresenaTextController2.text,
                                  );

                                  if ((_model.apiResultm56?.succeeded ??
                                      true)) {
                                    await Future.delayed(
                                        const Duration(milliseconds: 2000));
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Se creo el documento!'),
                                          content: const Text(
                                              'Se creo el aviso de visita de entrevista a adulto!!'),
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
                                    safeSetState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                  }
                                } else {
                                  await AvisovisitaadultosTable().update(
                                    data: {
                                      'idIngreso': widget.rowingreso?.id,
                                      'fechadoc': supaSerialize<DateTime>(
                                          _model.datePicked1),
                                      'domicilio': _model
                                          .textFieldmotivoTextController4.text,
                                      'fecha': supaSerialize<DateTime>(
                                          _model.datePicked2),
                                      'hora': _model
                                          .textFieldresenaTextController1.text,
                                      'CPC': widget.rowexp?.spd,
                                      'nombres': _model
                                          .textFieldmotivoTextController1.text,
                                      'apellidos': _model
                                          .textFieldmotivoTextController2.text,
                                      'dni': int.tryParse(_model
                                          .textFieldmotivoTextController3.text),
                                      'telcontactospd': int.tryParse(_model
                                          .textFieldresenaTextController2.text),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'idIngreso',
                                      widget.rowingreso?.id,
                                    ),
                                  );
                                  _model.apiResultm56edit =
                                      await ConcurrenciaVisitaAdultoCall.call(
                                    fechadoc: dateTimeFormat(
                                      "d/M/y",
                                      _model.datePicked1,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    nombre: _model
                                        .textFieldmotivoTextController1.text,
                                    apellido: _model
                                        .textFieldmotivoTextController2.text,
                                    domicilio: _model
                                        .textFieldmotivoTextController4.text,
                                    fecha: dateTimeFormat(
                                      "d/M/y",
                                      _model.datePicked2,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    cpc: widget.rowexp?.spd,
                                    hora: _model
                                        .textFieldmotivoTextController5.text,
                                    idingreso: widget.rowingreso?.id,
                                    carpeta: widget.rowingreso?.idcarpeta,
                                    telefono: _model
                                        .textFieldresenaTextController2.text,
                                  );

                                  if ((_model.apiResultm56edit?.succeeded ??
                                      true)) {
                                    await Future.delayed(
                                        const Duration(milliseconds: 2000));
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Se creo el documento!'),
                                          content: const Text(
                                              'Se creo el aviso de visita de entrevista a adulto!!'),
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
                                    safeSetState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                  }
                                }

                                safeSetState(() {});
                              },
                              text: 'generar aviso de concurrencia',
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
