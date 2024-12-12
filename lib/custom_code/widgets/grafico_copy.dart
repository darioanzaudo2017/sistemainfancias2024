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

import 'package:d_chart/d_chart.dart'; // Asegúrate de tener este paquete instalado
import 'dart:math';

class GraficoCopy extends StatefulWidget {
  const GraficoCopy({
    super.key,
    this.width,
    this.height,
    this.var1,
    this.value1,
  });

  final double? width;
  final double? height;
  final List<String>? var1;
  final List<int>? value1;

  @override
  State<GraficoCopy> createState() => _GraficoCopyState();
}

class _GraficoCopyState extends State<GraficoCopy> {
  @override
  Widget build(BuildContext context) {
    // Agrupar los datos por etiquetas y sumar los valores correspondientes
    Map<String, int> groupedData = {};

    if (widget.var1 != null && widget.value1 != null) {
      for (int i = 0; i < widget.var1!.length; i++) {
        String label = widget.var1![i];
        int value = widget.value1![i];
        // Agrupar y sumar valores por cada label
        groupedData[label] = (groupedData[label] ?? 0) + value;
      }
    }

    // Convertir el mapa agrupado en una lista de DChartBarDataCustom
    List<DChartBarDataCustom> barDataList = groupedData.entries.map((entry) {
      Color randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt());

      return DChartBarDataCustom(
        value: entry.value.toDouble(),
        label: entry.key,
        color: randomColor.withOpacity(1),
        showValue: true, // Mostrar el valor en la barra
        valueStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black,
        ),
        valueTooltip: '${entry.value} Total', // Tooltip personalizado
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text('Gráfico de Barras')),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: DChartBarCustom(
              loadingDuration: const Duration(milliseconds: 1500),
              showLoading: true,
              valueAlign: Alignment.topCenter,
              showDomainLine: true,
              showDomainLabel: true,
              showMeasureLine: true,
              showMeasureLabel: true,
              spaceDomainLabeltoChart: 10,
              spaceMeasureLabeltoChart: 5,
              spaceDomainLinetoChart: 15,
              spaceMeasureLinetoChart: 20,
              spaceBetweenItem: 16,
              radiusBar: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              measureLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.purple,
              ),
              domainLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.purple,
              ),
              measureLineStyle: const BorderSide(color: Colors.amber, width: 2),
              domainLineStyle: const BorderSide(color: Colors.red, width: 2),
              max: groupedData.values.isNotEmpty
                  ? groupedData.values
                      .reduce((a, b) => a > b ? a : b)
                      .toDouble()
                  : 0, // Establecer el valor máximo según los datos
              listData: barDataList,
            ),
          ),
        ],
      ),
    );
  }
}
