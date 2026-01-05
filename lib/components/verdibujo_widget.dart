import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'verdibujo_model.dart';
export 'verdibujo_model.dart';

class VerdibujoWidget extends StatefulWidget {
  const VerdibujoWidget({
    super.key,
    this.dibujonio,
  });

  final String? dibujonio;

  @override
  State<VerdibujoWidget> createState() => _VerdibujoWidgetState();
}

class _VerdibujoWidgetState extends State<VerdibujoWidget> {
  late VerdibujoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerdibujoModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 720.5,
        height: 601.16,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [],
        ),
      ),
    );
  }
}
