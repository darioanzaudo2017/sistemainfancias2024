import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'botonesadminyzona_model.dart';
export 'botonesadminyzona_model.dart';

class BotonesadminyzonaWidget extends StatefulWidget {
  const BotonesadminyzonaWidget({super.key});

  @override
  State<BotonesadminyzonaWidget> createState() =>
      _BotonesadminyzonaWidgetState();
}

class _BotonesadminyzonaWidgetState extends State<BotonesadminyzonaWidget> {
  late BotonesadminyzonaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotonesadminyzonaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
