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

import 'package:d_chart/d_chart.dart';

class Grafico extends StatefulWidget {
  const Grafico({
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
  State<Grafico> createState() => _GraficoState();
}

class _GraficoState extends State<Grafico> {
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
    return Scaffold(
      appBar: AppBar(title: Text('D\'Chart')),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: DChartBarO(
              groupList: [
                OrdinalGroup(
                  id: '1',
                  data: [
                    OrdinalData(domain: var1 ?? 'Mon', measure: value1 ?? 0),
                    OrdinalData(domain: var2 ?? 'Tue', measure: value2 ?? 0),
                    // Puedes agregar más datos aquí si es necesario
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
