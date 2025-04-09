import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'caratula2_widget.dart' show Caratula2Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Caratula2Model extends FlutterFlowModel<Caratula2Widget> {
  ///  Local state fields for this page.

  bool dniok = false;

  int? expedientecreado;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TextFieldapellido widget.
  FocusNode? textFieldapellidoFocusNode;
  TextEditingController? textFieldapellidoTextController;
  String? Function(BuildContext, String?)?
      textFieldapellidoTextControllerValidator;
  String? _textFieldapellidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldnombres widget.
  FocusNode? textFieldnombresFocusNode;
  TextEditingController? textFieldnombresTextController;
  String? Function(BuildContext, String?)?
      textFieldnombresTextControllerValidator;
  String? _textFieldnombresTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextFieldDNI widget.
  FocusNode? textFieldDNIFocusNode;
  TextEditingController? textFieldDNITextController;
  final textFieldDNIMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? textFieldDNITextControllerValidator;
  // State field(s) for TextFieldedad widget.
  FocusNode? textFieldedadFocusNode;
  TextEditingController? textFieldedadTextController;
  final textFieldedadMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? textFieldedadTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (ExisteDNIexpediente)] action in Button widget.
  ApiCallResponse? checkdnifuncion;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ExpedienteRow? crearexpnnya2;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<SpdRow>? spddrop;
  // Stores action output result for [Backend Call - API (ExisteDNInnya)] action in Button widget.
  ApiCallResponse? checkdnifuncionnnya;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<NNyARow>? querynnyaexistente;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NNyAExpGruRow? crearexpgrupo3;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GrupofamiliarRow? grupofmiliar3;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? vistaExpediente1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ImpresionesExpedientesRow>? idcarptea1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<SpdRow>? spdseleccionado1;
  // Stores action output result for [Backend Call - API (carpeta del expediente)] action in Button widget.
  ApiCallResponse? apiResult42y21;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NNyARow? crearNNyA2;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NNyAExpGruRow? crearexpgrupo2;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GrupofamiliarRow? grupofmiliar2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ExpedienteRow>? expedienteactualizado;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaExpedientesUltimoEstadoRow>? vistaExpediente;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ImpresionesExpedientesRow>? idcarptea;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<SpdRow>? spdseleccionado;
  // Stores action output result for [Backend Call - API (carpeta del expediente)] action in Button widget.
  ApiCallResponse? apiResult42y2;

  @override
  void initState(BuildContext context) {
    textFieldapellidoTextControllerValidator =
        _textFieldapellidoTextControllerValidator;
    textFieldnombresTextControllerValidator =
        _textFieldnombresTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldapellidoFocusNode?.dispose();
    textFieldapellidoTextController?.dispose();

    textFieldnombresFocusNode?.dispose();
    textFieldnombresTextController?.dispose();

    textFieldDNIFocusNode?.dispose();
    textFieldDNITextController?.dispose();

    textFieldedadFocusNode?.dispose();
    textFieldedadTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
