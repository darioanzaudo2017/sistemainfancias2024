import '/flutter_flow/flutter_flow_util.dart';
import 'adjuntasolicitudsenaffirmada_widget.dart'
    show AdjuntasolicitudsenaffirmadaWidget;
import 'package:flutter/material.dart';

class AdjuntasolicitudsenaffirmadaModel
    extends FlutterFlowModel<AdjuntasolicitudsenaffirmadaWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? documento;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_uploadData9zvsolicitudfirmada = false;
  FFUploadedFile uploadedLocalFile_uploadData9zvsolicitudfirmada =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData9zvsolicitudfirmada = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
