import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
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

  final formKey = GlobalKey<FormState>();
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
  late MaskTextInputFormatter textFieldDNIMask;
  String? Function(BuildContext, String?)? textFieldDNITextControllerValidator;
  // State field(s) for TextFieldedad widget.
  FocusNode? textFieldedadFocusNode;
  TextEditingController? textFieldedadTextController;
  String? Function(BuildContext, String?)? textFieldedadTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (crearyverificarexpediente)] action in Button widget.
  ApiCallResponse? apiResultbjl;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsuariosRow>? usuario11;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<SpdRow>? spd11;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VistaUsuariosRolesRow>? userrol11;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<Apiexpediente6Struct>();
  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<VistaExpedientesUltimoEstadoRow>? query10;
  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<UsuariosRow>? usuario;
  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<SpdRow>? spd;
  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<VistaUsuariosRolesRow>? userrol;
  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<VistaExpedientesUltimoEstadoRow>? expediente;

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

    textFieldFocusNode?.dispose();
    textController5?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
