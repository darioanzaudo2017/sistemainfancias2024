import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'adjuntardocumentoampliacion_widget.dart'
    show AdjuntardocumentoampliacionWidget;
import 'package:flutter/material.dart';

class AdjuntardocumentoampliacionModel
    extends FlutterFlowModel<AdjuntardocumentoampliacionWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? documento;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_uploadData9zvampliacion = false;
  FFUploadedFile uploadedLocalFile_uploadData9zvampliacion =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData9zvampliacion = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
