import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'check_d_n_i_model.dart';
export 'check_d_n_i_model.dart';

class CheckDNIWidget extends StatefulWidget {
  const CheckDNIWidget({super.key});

  @override
  State<CheckDNIWidget> createState() => _CheckDNIWidgetState();
}

class _CheckDNIWidgetState extends State<CheckDNIWidget> {
  late CheckDNIModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckDNIModel());

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
        ),
      ),
    );
  }
}
