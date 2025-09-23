import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'adjuntardocumento_widget.dart' show AdjuntardocumentoWidget;
import 'package:flutter/material.dart';

class AdjuntardocumentoModel extends FlutterFlowModel<AdjuntardocumentoWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? documento;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading_uploadData9zv = false;
  FFUploadedFile uploadedLocalFile_uploadData9zv =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData9zv = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
