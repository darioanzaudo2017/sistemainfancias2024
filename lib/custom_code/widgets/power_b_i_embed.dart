// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ui' as ui;
import 'dart:html';

class PowerBIEmbed extends StatefulWidget {
  const PowerBIEmbed({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<PowerBIEmbed> createState() => _PowerBIEmbedState();
}

class _PowerBIEmbedState extends State<PowerBIEmbed> {
  final String viewID = 'power-bi-iframe';

  @override
  void initState() {
    super.initState();

    // Registrar el iframe en la plataforma web
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewID,
      (int viewId) => IFrameElement()
        ..src =
            'https://app.powerbi.com/view?r=eyJrIjoiZDVhYjc5ZTctOTNjOC00OTI1LTk5YjgtMmFmNDNkMmRjNjQ2IiwidCI6ImVjNmU3NTQ4LWZjZTMtNGY0NC05NjZhLWY0N2EwZjEyNWE4MSIsImMiOjR9&pageName=660b457852e7491d00a0'
        ..style.border = 'none'
        ..allowFullscreen = true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 1024,
      height: widget.height ?? 804,
      child: HtmlElementView(viewType: viewID),
    );
  }
}
