import '/flutter_flow/flutter_flow_util.dart';
import 'anexosbotonera_widget.dart' show AnexosbotoneraWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AnexosbotoneraModel extends FlutterFlowModel<AnexosbotoneraWidget> {
  ///  Local state fields for this component.

  bool reqacciones = true;

  bool anexoeducacion = true;

  bool reunioninter = true;

  bool anexosalud = true;

  bool entrevistaNNyA = true;

  bool entrevistaflia = true;

  bool ampliacioninfo = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
