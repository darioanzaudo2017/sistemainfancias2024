import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_dropdown_model.dart';
export 'custom_dropdown_model.dart';

class CustomDropdownWidget extends StatefulWidget {
  const CustomDropdownWidget({
    super.key,
    bool? choicesHasImage,
    required this.choices,
    required this.label,
    bool? showLabel,
  })  : this.choicesHasImage = choicesHasImage ?? false,
        this.showLabel = showLabel ?? false;

  final bool choicesHasImage;
  final dynamic choices;
  final String? label;
  final bool showLabel;

  @override
  State<CustomDropdownWidget> createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  late CustomDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDropdownModel());

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
