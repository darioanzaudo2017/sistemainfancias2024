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
import 'package:d_chart/d_chart.dart'
    as dchart; // Alias para evitar confusiones

class GraficotortaCopy extends StatefulWidget {
  const GraficotortaCopy({
    super.key,
    this.width,
    this.height,
    this.labels,
    this.values,
  });

  final double? width;
  final double? height;
  final List<String>? labels;
  final List<int>? values;

  @override
  State<GraficotortaCopy> createState() => _GraficotortaCopyState();
}

class _GraficotortaCopyState extends State<GraficotortaCopy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(
        labels: widget.labels ?? [],
        values: widget.values ?? [],
      ),
    );
  }
}

class Home extends StatelessWidget {
  final List<String> labels; // Lista de etiquetas
  final List<int> values; // Lista de valores

  const Home({
    Key? key,
    required this.labels,
    required this.values,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Crea un mapa para agrupar los valores por etiquetas
    Map<String, int> groupedData = {};

    for (int i = 0; i < labels.length; i++) {
      String label = labels[i];
      int value = values[i];

      if (groupedData.containsKey(label)) {
        // Si la etiqueta ya existe, suma el valor
        groupedData[label] = groupedData[label]! + value;
      } else {
        // Si la etiqueta no existe, agrega el valor inicial
        groupedData[label] = value;
      }
    }

    // Convierte el mapa agrupado a una lista de dchart.OrdinalData
    List<dchart.OrdinalData> ordinalDataList = groupedData.entries.map((entry) {
      return dchart.OrdinalData(
        domain: entry.key,
        measure: entry.value,
        color: Colors.primaries[groupedData.keys.toList().indexOf(entry.key) %
            Colors.primaries.length][300],
      );
    }).toList();

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
