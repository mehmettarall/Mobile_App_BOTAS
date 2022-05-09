import 'package:deneme5ulan_app/chart_data/bar_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarChartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
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
                return 'Pazar';
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
      borderData:
          FlBorderData(border: Border.all(color: Colors.white, width: 0.5)),
      alignment: BarChartAlignment.spaceEvenly,
      maxY: 16,
      barGroups: barChartGroupData,
    ));
  }
}
