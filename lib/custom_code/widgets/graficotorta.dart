// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:d_chart/d_chart.dart'; // Asegúrate de que este paquete esté instalado

class Graficotorta extends StatefulWidget {
  const Graficotorta({
    super.key,
    this.width,
    this.height,
    this.var1,
    this.value1,
    this.var2,
    this.value2,
  });

  final double? width;
  final double? height;
  final String? var1;
  final int? value1;
  final String? var2;
  final int? value2;

  @override
  State<Graficotorta> createState() => _GraficotortaState();
}

class _GraficotortaState extends State<Graficotorta> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(
        var1: widget.var1,
        value1: widget.value1,
        var2: widget.var2,
        value2: widget.value2,
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String? var1;
  final int? value1;
  final String? var2;
  final int? value2;

  const Home({
    Key? key,
    this.var1,
    this.value1,
    this.var2,
    this.value2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<OrdinalData> ordinalDataList = [
      OrdinalData(
          domain: var1 ?? 'Mon', measure: value1 ?? 0, color: Colors.blue[300]),
      OrdinalData(
          domain: var2 ?? 'Tue',
          measure: value2 ?? 0,
          color: Colors.amber[300]),
      OrdinalData(domain: 'Wed', measure: 9, color: Colors.purple[300]),
      OrdinalData(domain: 'Thu', measure: 6.5, color: Colors.pink[300]),
    ];

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: DChartPieO(
        data: ordinalDataList,
        customLabel: (ordinalData, index) {
          return "${ordinalData.domain}: ${ordinalData.measure}";
        },
        configRenderPie: ConfigRenderPie(
          arcLabelDecorator: ArcLabelDecorator(
            labelPosition: ArcLabelPosition.auto,
            insideLabelStyle: const LabelStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            outsideLabelStyle: const LabelStyle(
              color: Colors.red,
              fontSize: 16,
            ),
            labelPadding: 10,
            leaderLineStyle: const ArcLabelLeaderLineStyle(
              color: Colors.blue,
              length: 30,
              thickness: 2,
            ),
            showLeaderLines: true,
          ),
        ),
      ),
    );
  }
}
