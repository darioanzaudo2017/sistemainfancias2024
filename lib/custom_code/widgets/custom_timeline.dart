// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import "package:community_testing_ryusdv/backend/schema/structs/index.dart"
    as community_testing_ryusdv_data_schema;
import "package:community_testing_ryusdv/backend/schema/enums/enums.dart"
    as community_testing_ryusdv_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:timelines_plus/timelines_plus.dart';

// Custom Timeline Widget para FlutterFlow
class CustomTimeline extends StatefulWidget {
  const CustomTimeline({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CustomTimeline> createState() => _CustomTimelineState();
}

class _CustomTimelineState extends State<CustomTimeline> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          indicatorTheme: IndicatorThemeData(size: 20.0),
          connectorTheme: ConnectorThemeData(thickness: 2.5),
        ),
        builder: TimelineTileBuilder.connected(
          connectionDirection: ConnectionDirection.before,
          indicatorBuilder: (context, index) => DotIndicator(
            color: Colors.blueAccent,
            child: Icon(Icons.check, color: Colors.white, size: 12),
          ),
          connectorBuilder: (context, index, type) => SolidLineConnector(),
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Evento ${index + 1}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          itemCount: 5, // Número de eventos en la línea de tiempo
        ),
      ),
    );
  }
}
