import 'package:deneme5ulan_app/chart_data/line_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LineChartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        borderData:
            FlBorderData(border: Border.all(color: Colors.white, width: 0.5)),
        gridData: FlGridData(
          drawHorizontalLine: false,
        ),
        titlesData: FlTitlesData(
          bottomTitles: SideTitles(
            showTitles: true,
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'Pzt';
                case 2:
                  return 'Salı';
                case 3:
                  return 'Çrş';
                case 4:
                  return 'Prş';
                case 5:
                  return 'Cuma';
                case 6:
                  return 'Cmt';
                case 7:
                  return 'Pzr';
              }
              return '';
            },
          ),
          leftTitles: SideTitles(
            interval: 4,
            showTitles: true,
            getTitles: (value) {
              if (value.toInt() == 0)
                return '';
              else
                return value.toInt().toString();
            },
          ),
        ),
        minX: 1,
        minY: 0,
        maxX: 7,
        maxY: 16,
        lineBarsData: lineChartBarData,
      ),
    );
  }
}
