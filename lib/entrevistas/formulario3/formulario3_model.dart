import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario3_widget.dart' show Formulario3Widget;
import 'package:flutter/material.dart';

class Formulario3Model extends FlutterFlowModel<Formulario3Widget> {
  ///  Local state fields for this component.

  int? contador;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? expedienteprincipal;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<Formulario3Row>? form3anterior;
  DateTime? datePicked;
  // State field(s) for TextFieldprofesionales widget.
  FocusNode? textFieldprofesionalesFocusNode1;
  TextEditingController? textFieldprofesionalesTextController1;
  String? Function(BuildContext, String?)?
      textFieldprofesionalesTextController1Validator;
  String? _textFieldprofesionalesTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextFieldprofesionales widget.
  FocusNode? textFieldprofesionalesFocusNode2;
  TextEditingController? textFieldprofesionalesTextController2;
  String? Function(BuildContext, String?)?
      textFieldprofesionalesTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode1;
  TextEditingController? textFielddescripcionTextController1;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextController1Validator;
  String? _textFielddescripcionTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;
  // State field(s) for DropDownactividaes widget.
  List<String>? dropDownactividaesValue;
  FormFieldController<List<String>>? dropDownactividaesValueController;
  // State field(s) for DropDownintereses widget.
  List<String>? dropDowninteresesValue;
  FormFieldController<List<String>>? dropDowninteresesValueController;
  // State field(s) for TextFielddescripcion widget.
  FocusNode? textFielddescripcionFocusNode2;
  TextEditingController? textFielddescripcionTextController2;
  String? Function(BuildContext, String?)?
      textFielddescripcionTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;

  @override
  void initState(BuildContext context) {
    textFieldprofesionalesTextController1Validator =
        _textFieldprofesionalesTextController1Validator;
    textFielddescripcionTextController1Validator =
        _textFielddescripcionTextController1Validator;
  }

  @override
  void dispose() {
    textFieldprofesionalesFocusNode1?.dispose();
    textFieldprofesionalesTextController1?.dispose();

    textFieldprofesionalesFocusNode2?.dispose();
    textFieldprofesionalesTextController2?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFielddescripcionFocusNode1?.dispose();
    textFielddescripcionTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFielddescripcionFocusNode2?.dispose();
    textFielddescripcionTextController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController7?.dispose();
  }
}
