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

import 'package:fl_chart/fl_chart.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({
    Key? key,
    this.width,
    this.height,
    this.numbers = const [5.0, 7.2, 3.1, 4.2, 8.2, 4.5, 4.5],
    this.backgroundColor = Colors.white,
    this.barBackgroundColor = Colors.grey,
    this.barColor = Colors.blue,
    this.touchedBarColor = Colors.red,
    this.labelTextColor = Colors.white,
    this.axisTextColor = Colors.black,
  }) : super(key: key);
  final double? width;
  final double? height;
  final List<double> numbers;
  final Color backgroundColor;
  final Color barBackgroundColor;
  final Color barColor;
  final Color touchedBarColor;
  final Color labelTextColor;
  final Color axisTextColor;

  @override
  CustomChartState createState() => CustomChartState();
}

class CustomChartState extends State<CustomChart> {
  @override
  Widget build(BuildContext context) {
    return WeekdayBarChart(
        numbers: widget.numbers,
        backgroundColor: widget.backgroundColor,
        barBackgroundColor: widget.barBackgroundColor,
        barColor: widget.barColor,
        touchedBarColor: widget.touchedBarColor,
        labelTextColor: widget.labelTextColor,
        axisTextColor: widget.axisTextColor);
  }
}

class WeekdayBarChart extends StatefulWidget {
  WeekdayBarChart(
      {Key? key,
      required this.numbers,
      required this.backgroundColor,
      required this.barBackgroundColor,
      required this.barColor,
      required this.touchedBarColor,
      required this.labelTextColor,
      required this.axisTextColor})
      : super(key: key);
  final Color backgroundColor;
  final Color barBackgroundColor;
  final Color barColor;
  final Color touchedBarColor;
  final Color labelTextColor;
  final Color axisTextColor;
  final List<double> numbers;

  @override
  WeekdayBarChartState createState() => WeekdayBarChartState();
}

class WeekdayBarChartState extends State<WeekdayBarChart> {
  final Duration animDuration = const Duration(milliseconds: 250);
  int touchedIndex = -1;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: BarChart(
                            mainBarData(),
                            swapAnimationDuration: animDuration,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    barColor ??= widget.barColor;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? widget.touchedBarColor : barColor,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: Colors.white, width: 0.0)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: widget.numbers.reduce(max) + 2,
            color: widget.barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() =>
      widget.numbers.asMap().entries.map((entry) {
        int index = entry.key;
        double value = entry.value;
        return makeGroupData(index, value, isTouched: index == touchedIndex);
      }).toList();

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              (rod.toY - 1).toStringAsFixed(2),
              TextStyle(
                color: widget.labelTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              TextStyle style = TextStyle(
                  color: widget.axisTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14);
              List<Widget> texts = [
                Text('M', style: style),
                Text('T', style: style),
                Text('W', style: style),
                Text('T', style: style),
                Text('F', style: style),
                Text('S', style: style),
                Text('S', style: style)
              ];
              Widget text = texts[value.toInt()];
              return SideTitleWidget(
                axisSide: meta.axisSide,
                space: 16,
                child: text,
              );
            },
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: const FlGridData(show: false),
    );
  }
}
