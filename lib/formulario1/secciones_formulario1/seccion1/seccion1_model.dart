import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'seccion1_widget.dart' show Seccion1Widget;
import 'package:flutter/material.dart';

class Seccion1Model extends FlutterFlowModel<Seccion1Widget> {
  ///  Local state fields for this component.

  bool editarseccion1 = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldlunacimiento widget.
  FocusNode? textFieldlunacimientoFocusNode;
  TextEditingController? textFieldlunacimientoTextController;
  String? Function(BuildContext, String?)?
      textFieldlunacimientoTextControllerValidator;
  // State field(s) for DropDownbarrio widget.
  String? dropDownbarrioValue;
  FormFieldController<String>? dropDownbarrioValueController;
  // State field(s) for TextFieldbarrio widget.
  FocusNode? textFieldbarrioFocusNode;
  TextEditingController? textFieldbarrioTextController;
  String? Function(BuildContext, String?)?
      textFieldbarrioTextControllerValidator;
  // State field(s) for TextFielddomicilio widget.
  FocusNode? textFielddomicilioFocusNode;
  TextEditingController? textFielddomicilioTextController;
  String? Function(BuildContext, String?)?
      textFielddomicilioTextControllerValidator;
  String? _textFielddomicilioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldtelefono widget.
  FocusNode? textFieldtelefonoFocusNode;
  TextEditingController? textFieldtelefonoTextController;
  String? Function(BuildContext, String?)?
      textFieldtelefonoTextControllerValidator;
  // State field(s) for DropGenero widget.
  String? dropGeneroValue;
  FormFieldController<String>? dropGeneroValueController;
  // State field(s) for Droptipoflia widget.
  String? droptipofliaValue;
  FormFieldController<String>? droptipofliaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for RadioButtonrnp widget.
  FormFieldController<String>? radioButtonrnpValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  Completer<List<TIntitucionesSaludRow>>? requestCompleter;
  // State field(s) for DropDowndiscapacidad widget.
  List<String>? dropDowndiscapacidadValue;
  FormFieldController<List<String>>? dropDowndiscapacidadValueController;
  // State field(s) for RadioButtoncud widget.
  FormFieldController<String>? radioButtoncudValueController;
  // State field(s) for RadioButtonprestaciones widget.
  FormFieldController<String>? radioButtonprestacionesValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for RadioButtoedunocorresponde widget.
  FormFieldController<String>? radioButtoedunocorrespondeValueController;
  // State field(s) for RadioButtonconcurreescuela widget.
  FormFieldController<String>? radioButtonconcurreescuelaValueController;
  // State field(s) for RadioButtomatriculo widget.
  FormFieldController<String>? radioButtomatriculoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for DropDownSalaGrado widget.
  String? dropDownSalaGradoValue;
  FormFieldController<String>? dropDownSalaGradoValueController;
  // State field(s) for DropDownTurno widget.
  String? dropDownTurnoValue;
  FormFieldController<String>? dropDownTurnoValueController;
  // State field(s) for TextFielddomicilioescuela widget.
  FocusNode? textFielddomicilioescuelaFocusNode;
  TextEditingController? textFielddomicilioescuelaTextController;
  String? Function(BuildContext, String?)?
      textFielddomicilioescuelaTextControllerValidator;
  // State field(s) for TextFieldtelescuela widget.
  FocusNode? textFieldtelescuelaFocusNode;
  TextEditingController? textFieldtelescuelaTextController;
  String? Function(BuildContext, String?)?
      textFieldtelescuelaTextControllerValidator;
  // State field(s) for DropDownNivelAlcanzado widget.
  String? dropDownNivelAlcanzadoValue;
  FormFieldController<String>? dropDownNivelAlcanzadoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for RadioButtontrabjanino widget.
  FormFieldController<String>? radioButtontrabjaninoValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;

  @override
  void initState(BuildContext context) {
    textFielddomicilioTextControllerValidator =
        _textFielddomicilioTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldlunacimientoFocusNode?.dispose();
    textFieldlunacimientoTextController?.dispose();

    textFieldbarrioFocusNode?.dispose();
    textFieldbarrioTextController?.dispose();

    textFielddomicilioFocusNode?.dispose();
    textFielddomicilioTextController?.dispose();

    textFieldtelefonoFocusNode?.dispose();
    textFieldtelefonoTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController5?.dispose();

    textFieldFocusNode2?.dispose();
    textController6?.dispose();

    textFieldFocusNode3?.dispose();
    textController7?.dispose();

    textFieldFocusNode4?.dispose();
    textController8?.dispose();

    textFieldFocusNode5?.dispose();
    textController9?.dispose();

    textFieldFocusNode6?.dispose();
    textController10?.dispose();

    textFielddomicilioescuelaFocusNode?.dispose();
    textFielddomicilioescuelaTextController?.dispose();

    textFieldtelescuelaFocusNode?.dispose();
    textFieldtelescuelaTextController?.dispose();

    textFieldFocusNode7?.dispose();
    textController13?.dispose();

    textFieldFocusNode8?.dispose();
    textController14?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonrnpValue => radioButtonrnpValueController?.value;
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  String? get radioButtoncudValue => radioButtoncudValueController?.value;
  String? get radioButtonprestacionesValue =>
      radioButtonprestacionesValueController?.value;
  String? get radioButtoedunocorrespondeValue =>
      radioButtoedunocorrespondeValueController?.value;
  String? get radioButtonconcurreescuelaValue =>
      radioButtonconcurreescuelaValueController?.value;
  String? get radioButtomatriculoValue =>
      radioButtomatriculoValueController?.value;
  String? get radioButtontrabjaninoValue =>
      radioButtontrabjaninoValueController?.value;
}
