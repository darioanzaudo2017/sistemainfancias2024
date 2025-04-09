import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'caratula2_model.dart';
export 'caratula2_model.dart';

class Caratula2Widget extends StatefulWidget {
  const Caratula2Widget({
    super.key,
    required this.usuario,
    required this.spd,
    required this.usuriorol,
  });

  final UsuariosRow? usuario;
  final SpdRow? spd;
  final VistaUsuariosRolesRow? usuriorol;

  static String routeName = 'caratula2';
  static String routePath = '/caratula2';

  @override
  State<Caratula2Widget> createState() => _Caratula2WidgetState();
}

class _Caratula2WidgetState extends State<Caratula2Widget> {
  late Caratula2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Caratula2Model());

    _model.textFieldapellidoTextController ??= TextEditingController();
    _model.textFieldapellidoFocusNode ??= FocusNode();

    _model.textFieldnombresTextController ??= TextEditingController();
    _model.textFieldnombresFocusNode ??= FocusNode();

    _model.textFieldDNITextController ??= TextEditingController();
    _model.textFieldDNIFocusNode ??= FocusNode();

    _model.textFieldedadTextController ??= TextEditingController();
    _model.textFieldedadFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textFieldDNITextController?.text = '0';
        }));
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
              context.pop();
            },
          ),
          title: Text(
            'Caratula',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      constraints: BoxConstraints(
                        maxWidth: 600.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            180.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Formulario caratula',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Noto Sans JP',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 600.0,
                                    decoration: BoxDecoration(),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      child: Form(
                                        key: _model.formKey2,
                                        autovalidateMode:
                                            AutovalidateMode.always,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Apellido y nombres del NNyA',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Noto Sans JP',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .textFieldapellidoTextController,
                                                focusNode: _model
                                                    .textFieldapellidoFocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Apellidos',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                keyboardType:
                                                    TextInputType.name,
                                                validator: _model
                                                    .textFieldapellidoTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .textFieldnombresTextController,
                                                focusNode: _model
                                                    .textFieldnombresFocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Nombres',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                keyboardType:
                                                    TextInputType.name,
                                                validator: _model
                                                    .textFieldnombresTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Tiene numero de DNI?',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  FlutterFlowRadioButton(
                                                    options:
                                                        ['Si', 'No'].toList(),
                                                    onChanged: (val) =>
                                                        safeSetState(() {}),
                                                    controller: _model
                                                            .radioButtonValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    optionHeight: 32.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    selectedTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Noto Sans JP',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    buttonPosition:
                                                        RadioButtonPosition
                                                            .left,
                                                    direction: Axis.horizontal,
                                                    radioButtonColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    inactiveRadioButtonColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    toggleable: false,
                                                    horizontalAlignment:
                                                        WrapAlignment.start,
                                                    verticalAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (_model.radioButtonValue == 'Si')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 8.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldDNITextController,
                                                  focusNode: _model
                                                      .textFieldDNIFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textFieldDNITextController',
                                                    Duration(
                                                        milliseconds: 2000),
                                                    () => safeSetState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'DNI',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  maxLength: 8,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .textFieldDNITextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    _model.textFieldDNIMask
                                                  ],
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .textFieldedadTextController,
                                                focusNode: _model
                                                    .textFieldedadFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.textFieldedadTextController',
                                                  Duration(milliseconds: 2000),
                                                  () => safeSetState(() {}),
                                                ),
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Edad de ingreso al sistema',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText:
                                                      'Edad de insgreso al sistema',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                maxLength: 8,
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: _model
                                                    .textFieldedadTextControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  _model.textFieldedadMask
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      dateTimeFormat(
                                                        "d/M/y",
                                                        _model.datePicked1,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      'No tiene fecha de Nac',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      final _datePicked1Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime(2050),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialDatePickerTheme(
                                                            context,
                                                            child!,
                                                            headerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            headerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            headerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans JP',
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            pickerBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            pickerForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            selectedDateTimeForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            actionButtonForegroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            iconSize: 24.0,
                                                          );
                                                        },
                                                      );

                                                      if (_datePicked1Date !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked1 =
                                                              DateTime(
                                                            _datePicked1Date
                                                                .year,
                                                            _datePicked1Date
                                                                .month,
                                                            _datePicked1Date
                                                                .day,
                                                          );
                                                        });
                                                      } else if (_model
                                                              .datePicked1 !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked1 =
                                                              getCurrentTimestamp;
                                                        });
                                                      }
                                                    },
                                                    text: 'Fec de Nac',
                                                    options: FFButtonOptions(
                                                      height: 40.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Información de expediente',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  FutureBuilder<List<SpdRow>>(
                                                    future:
                                                        SpdTable().queryRows(
                                                      queryFn: (q) => q,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<SpdRow>
                                                          dropDownSpdRowList =
                                                          snapshot.data!;

                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .dropDownValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.dropDownValue ??=
                                                              widget
                                                                  .usuario?.spd,
                                                        ),
                                                        options:
                                                            dropDownSpdRowList
                                                                .map((e) =>
                                                                    e.nombrespd)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropDownValue =
                                                                    val),
                                                        height: 40.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        searchTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintText: 'SPD',
                                                        searchHintText:
                                                            'Seleccionar SPD',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        hidesUnderline: true,
                                                        disabled: widget
                                                                .usuriorol
                                                                ?.rolId ==
                                                            3,
                                                        isOverButton: false,
                                                        isSearchable: true,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Text(
                                                          'Fecha de recepcion de la solicitud de intervencion',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .date_range_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    "d/M/y",
                                                                    _model
                                                                        .datePicked2,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'No tiene fecha seleccionada',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans JP',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                final _datePicked2Date =
                                                                    await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      getCurrentTimestamp,
                                                                  firstDate:
                                                                      DateTime(
                                                                          1900),
                                                                  lastDate:
                                                                      DateTime(
                                                                          2050),
                                                                  builder:
                                                                      (context,
                                                                          child) {
                                                                    return wrapInMaterialDatePickerTheme(
                                                                      context,
                                                                      child!,
                                                                      headerBackgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      headerForegroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                      headerTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans JP',
                                                                            fontSize:
                                                                                32.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
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
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                      actionButtonForegroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      iconSize:
                                                                          24.0,
                                                                    );
                                                                  },
                                                                );

                                                                if (_datePicked2Date !=
                                                                    null) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.datePicked2 =
                                                                        DateTime(
                                                                      _datePicked2Date
                                                                          .year,
                                                                      _datePicked2Date
                                                                          .month,
                                                                      _datePicked2Date
                                                                          .day,
                                                                    );
                                                                  });
                                                                } else if (_model
                                                                        .datePicked2 !=
                                                                    null) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.datePicked2 =
                                                                        getCurrentTimestamp;
                                                                  });
                                                                }
                                                              },
                                                              text: 'Fecha',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
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
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            Text(
                                                              '(presionar el boton fecha para agregar fecha)',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Sans JP',
                                                                    fontSize:
                                                                        10.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 10.0)),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model.formKey2
                                                              .currentState ==
                                                          null ||
                                                      !_model.formKey2
                                                          .currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  _model.checkdnifuncion =
                                                      await ExisteDNIexpedienteCall
                                                          .call(
                                                    dni: _model
                                                        .textFieldDNITextController
                                                        .text,
                                                  );

                                                  if (ExisteDNIexpedienteCall
                                                      .check(
                                                    (_model.checkdnifuncion
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            title: Text(
                                                                'El dni esta duplicado'),
                                                            content: Text(
                                                                'El dni esta duplicado'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                    safeSetState(() {
                                                      _model
                                                          .textFieldDNITextController
                                                          ?.clear();
                                                    });
                                                  } else {
                                                    _model.dniok = true;
                                                    safeSetState(() {});
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            title: Text(
                                                                'El NNyA no tiene expediente'),
                                                            content: Text(
                                                                'Continuamos con la carga!!'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                    if (_model.formKey2
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey2
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                    _model.crearexpnnya2 =
                                                        await ExpedienteTable()
                                                            .insert({
                                                      'nombres': functions
                                                          .mayusculas(_model
                                                              .textFieldnombresTextController
                                                              .text),
                                                      'apellidos': functions
                                                          .mayusculas(_model
                                                              .textFieldapellidoTextController
                                                              .text),
                                                      'dni': _model.textFieldDNITextController
                                                                      .text ==
                                                                  ''
                                                          ? 0
                                                          : int.tryParse(_model
                                                              .textFieldDNITextController
                                                              .text),
                                                      'expediente':
                                                          '${widget.usuario?.spd}/${random_data.randomInteger(0, 10000).toString()}/${dateTimeFormat(
                                                        "y",
                                                        _model.datePicked1,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}',
                                                      'fechaNac': supaSerialize<
                                                              DateTime>(
                                                          _model.datePicked1),
                                                      'edad': int.tryParse(_model
                                                          .textFieldedadTextController
                                                          .text),
                                                      'iduser': currentUserUid,
                                                      'spd':
                                                          widget.usuario?.spd,
                                                      'estado': true,
                                                      'zona': widget.spd?.zona,
                                                    });
                                                    _model.spddrop =
                                                        await SpdTable()
                                                            .queryRows(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'nombrespd',
                                                        _model.dropDownValue,
                                                      ),
                                                    );
                                                    _model.checkdnifuncionnnya =
                                                        await ExisteDNInnyaCall
                                                            .call(
                                                      dni: _model
                                                          .textFieldDNITextController
                                                          .text,
                                                    );

                                                    if (ExisteDNInnyaCall.check(
                                                      (_model.checkdnifuncionnnya
                                                              ?.jsonBody ??
                                                          ''),
                                                    )!) {
                                                      _model.querynnyaexistente =
                                                          await NNyATable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'DNI',
                                                          int.tryParse(_model
                                                              .textFieldDNITextController
                                                              .text),
                                                        ),
                                                      );
                                                      _model.crearexpgrupo3 =
                                                          await NNyAExpGruTable()
                                                              .insert({
                                                        'idExp': _model
                                                            .crearexpnnya2?.id,
                                                        'detalle': 'expediente',
                                                        'idNNyA': _model
                                                            .querynnyaexistente
                                                            ?.firstOrNull
                                                            ?.id,
                                                      });
                                                      _model.grupofmiliar3 =
                                                          await GrupofamiliarTable()
                                                              .insert({
                                                        'nombregrupo':
                                                            '${_model.crearexpnnya2?.expediente}/${_model.crearexpnnya2?.dni?.toString()}',
                                                      });
                                                      await GrupofamiliarexpedientesTable()
                                                          .insert({
                                                        'idgrupofamliar': _model
                                                            .grupofmiliar3?.id,
                                                        'idexpediente': _model
                                                            .crearexpnnya2?.id,
                                                        'expedienteprincipal':
                                                            _model.crearexpnnya2
                                                                ?.id,
                                                      });
                                                      _model.expedientecreado =
                                                          _model.crearexpnnya2
                                                              ?.id;
                                                      safeSetState(() {});
                                                      _model.expedientecreado =
                                                          _model.crearexpnnya2
                                                              ?.id;
                                                      safeSetState(() {});
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  1500));
                                                      await ExpedienteTable()
                                                          .update(
                                                        data: {
                                                          'idgrupofamiliar':
                                                              _model
                                                                  .grupofmiliar3
                                                                  ?.id,
                                                          'expediente':
                                                              '${_model.dropDownValue}/${_model.crearexpnnya2?.id.toString()}/${dateTimeFormat(
                                                            "y",
                                                            getCurrentTimestamp,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}',
                                                          'idNNyA': _model
                                                              .querynnyaexistente
                                                              ?.firstOrNull
                                                              ?.id,
                                                          'fecha': supaSerialize<
                                                                  DateTime>(
                                                              _model
                                                                  .datePicked2),
                                                          'spd': _model
                                                              .dropDownValue,
                                                          'estado': true,
                                                          'zona': _model
                                                              .spddrop
                                                              ?.firstOrNull
                                                              ?.zona,
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
                                                          _model.crearexpnnya2
                                                              ?.id,
                                                        ),
                                                      );
                                                      _model.vistaExpediente1 =
                                                          await VistaExpedientesUltimoEstadoTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'id',
                                                          _model.crearexpnnya2
                                                              ?.id,
                                                        ),
                                                      );
                                                      _model.idcarptea1 =
                                                          await ImpresionesExpedientesTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'id',
                                                          _model.crearexpnnya2
                                                              ?.id,
                                                        ),
                                                      );
                                                      _model.spdseleccionado1 =
                                                          await SpdTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'nombrespd',
                                                          _model.dropDownValue,
                                                        ),
                                                      );
                                                      _model.apiResult42y21 =
                                                          await CarpetaDelExpedienteCall
                                                              .call(
                                                        expediente: _model
                                                            .vistaExpediente1
                                                            ?.firstOrNull
                                                            ?.expediente,
                                                        id: _model
                                                            .crearexpnnya2?.id,
                                                        fecha: _model
                                                            .datePicked2
                                                            ?.toString(),
                                                        nombresDNI:
                                                            '${_model.crearexpnnya2?.nombres}, ${_model.crearexpnnya2?.apellidos}, DNI ${_model.crearexpnnya2?.dni?.toString()}',
                                                        idcarpetaspd: _model
                                                            .spdseleccionado1
                                                            ?.firstOrNull
                                                            ?.idcarpetaspd,
                                                      );

                                                      if ((_model.apiResult42y21
                                                              ?.succeeded ??
                                                          true)) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                title: Text(
                                                                    'Expediente Creado'),
                                                                content: Text(
                                                                    'Se creo correctamente el expediente!'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );

                                                        context.pushNamed(
                                                          IngresosWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'idexp':
                                                                serializeParam(
                                                              _model
                                                                  .crearexpnnya2
                                                                  ?.id,
                                                              ParamType.int,
                                                            ),
                                                            'idexpediente':
                                                                serializeParam(
                                                              _model
                                                                  .vistaExpediente1
                                                                  ?.firstOrNull,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'usuariorow':
                                                                serializeParam(
                                                              widget.usuario,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'idcarpeta':
                                                                serializeParam(
                                                              _model
                                                                  .idcarptea1
                                                                  ?.firstOrNull
                                                                  ?.id
                                                                  .toString(),
                                                              ParamType.String,
                                                            ),
                                                            'spd':
                                                                serializeParam(
                                                              widget.spd,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'usuariorol':
                                                                serializeParam(
                                                              widget.usuriorol,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else {
                                                      _model.crearNNyA2 =
                                                          await NNyATable()
                                                              .insert({
                                                        'Nombre': functions
                                                            .mayusculas(_model
                                                                .textFieldnombresTextController
                                                                .text),
                                                        'Apellido': functions
                                                            .mayusculas(_model
                                                                .textFieldapellidoTextController
                                                                .text),
                                                        'DNI': _model.textFieldDNITextController
                                                                        .text ==
                                                                    ''
                                                            ? 0
                                                            : int.tryParse(_model
                                                                .textFieldDNITextController
                                                                .text),
                                                        'edad': int.tryParse(_model
                                                            .textFieldedadTextController
                                                            .text),
                                                        'iduser':
                                                            currentUserUid,
                                                      });
                                                      _model.crearexpgrupo2 =
                                                          await NNyAExpGruTable()
                                                              .insert({
                                                        'idExp': _model
                                                            .crearexpnnya2?.id,
                                                        'detalle': 'expediente',
                                                        'idNNyA': _model
                                                            .crearNNyA2?.id,
                                                      });
                                                      _model.grupofmiliar2 =
                                                          await GrupofamiliarTable()
                                                              .insert({
                                                        'nombregrupo':
                                                            '${_model.crearexpnnya2?.expediente}/${_model.crearexpnnya2?.dni?.toString()}',
                                                      });
                                                      await GrupofamiliarexpedientesTable()
                                                          .insert({
                                                        'idgrupofamliar': _model
                                                            .grupofmiliar2?.id,
                                                        'idexpediente': _model
                                                            .crearexpnnya2?.id,
                                                        'expedienteprincipal':
                                                            _model.crearexpnnya2
                                                                ?.id,
                                                      });
                                                      await NNyAExpGruTable()
                                                          .update(
                                                        data: {
                                                          'idNNyA': _model
                                                              .crearNNyA2?.id,
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
                                                          _model.crearexpgrupo2
                                                              ?.id,
                                                        ),
                                                      );
                                                      _model.expedientecreado =
                                                          _model.crearexpnnya2
                                                              ?.id;
                                                      safeSetState(() {});
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  1500));
                                                      await ExpedienteTable()
                                                          .update(
                                                        data: {
                                                          'idgrupofamiliar':
                                                              _model
                                                                  .grupofmiliar2
                                                                  ?.id,
                                                          'expediente':
                                                              '${_model.dropDownValue}/${_model.crearexpnnya2?.id.toString()}/${dateTimeFormat(
                                                            "y",
                                                            getCurrentTimestamp,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}',
                                                          'idNNyA': _model
                                                              .crearNNyA2?.id,
                                                          'fecha': supaSerialize<
                                                                  DateTime>(
                                                              _model
                                                                  .datePicked2),
                                                          'spd': _model
                                                              .dropDownValue,
                                                          'estado': true,
                                                          'zona': _model
                                                              .spddrop
                                                              ?.firstOrNull
                                                              ?.zona,
                                                        },
                                                        matchingRows: (rows) =>
                                                            rows.eqOrNull(
                                                          'id',
                                                          _model.crearexpnnya2
                                                              ?.id,
                                                        ),
                                                      );
                                                      _model.vistaExpediente =
                                                          await VistaExpedientesUltimoEstadoTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'id',
                                                          _model.crearexpnnya2
                                                              ?.id,
                                                        ),
                                                      );
                                                      _model.idcarptea =
                                                          await ImpresionesExpedientesTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'id',
                                                          _model.crearexpnnya2
                                                              ?.id,
                                                        ),
                                                      );
                                                      _model.spdseleccionado =
                                                          await SpdTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'nombrespd',
                                                          _model.dropDownValue,
                                                        ),
                                                      );
                                                      _model.apiResult42y2 =
                                                          await CarpetaDelExpedienteCall
                                                              .call(
                                                        expediente: _model
                                                            .vistaExpediente
                                                            ?.firstOrNull
                                                            ?.expediente,
                                                        id: _model
                                                            .crearexpnnya2?.id,
                                                        fecha: _model
                                                            .crearexpnnya2
                                                            ?.fecha
                                                            ?.toString(),
                                                        nombresDNI:
                                                            '${_model.crearexpnnya2?.nombres}, ${_model.crearexpnnya2?.apellidos}, DNI ${_model.crearexpnnya2?.dni?.toString()}',
                                                        idcarpetaspd: _model
                                                            .spdseleccionado
                                                            ?.firstOrNull
                                                            ?.idcarpetaspd,
                                                      );

                                                      if ((_model.apiResult42y2
                                                              ?.succeeded ??
                                                          true)) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                title: Text(
                                                                    'Expediente Creado'),
                                                                content: Text(
                                                                    'Se creo correctamente el expediente!'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );

                                                        context.pushNamed(
                                                          IngresosWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'idexp':
                                                                serializeParam(
                                                              _model
                                                                  .crearexpnnya2
                                                                  ?.id,
                                                              ParamType.int,
                                                            ),
                                                            'idexpediente':
                                                                serializeParam(
                                                              _model
                                                                  .vistaExpediente
                                                                  ?.firstOrNull,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'usuariorow':
                                                                serializeParam(
                                                              widget.usuario,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'idcarpeta':
                                                                serializeParam(
                                                              _model
                                                                  .idcarptea
                                                                  ?.firstOrNull
                                                                  ?.id
                                                                  .toString(),
                                                              ParamType.String,
                                                            ),
                                                            'spd':
                                                                serializeParam(
                                                              widget.spd,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                            'usuariorol':
                                                                serializeParam(
                                                              widget.usuriorol,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    }
                                                  }

                                                  safeSetState(() {});
                                                },
                                                text: 'verificar NNyA ',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.dniok)
                                  Container(
                                    width: 600.0,
                                    decoration: BoxDecoration(),
                                    child: Form(
                                      key: _model.formKey1,
                                      autovalidateMode: AutovalidateMode.always,
                                      child: Container(),
                                    ),
                                  ),
                              ]
                                  .divide(SizedBox(height: 8.0))
                                  .around(SizedBox(height: 8.0)),
                            ),
                          ),
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
    );
  }
}
