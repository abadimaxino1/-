import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ComparisonReportScreen extends StatelessWidget {
  const ComparisonReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // بيانات تجريبية لمقارنة شهر بشهر وسنة بسنة
    final months = ['يناير', 'فبراير', 'مارس', 'أبريل'];
    final curYear = [1200.0, 1300.0, 1100.0, 900.0];
    final prevYear = [1400.0, 1200.0, 1150.0, 950.0];

    double percentChange = ((curYear.last - prevYear.last) / prevYear.last) * 100;

    return Scaffold(
      appBar: AppBar(title: Text('تقرير المقارنة')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("مقارنة الصرف الشهري سنة بسنة:", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 240,
              child: BarChart(
                BarChartData(
                  barGroups: List.generate(months.length, (i) =>
                    BarChartGroupData(x: i, barRods: [
                      BarChartRodData(toY: curYear[i], color: Colors.teal, width: 10),
                      BarChartRodData(toY: prevYear[i], color: Colors.grey, width: 10),
                    ]),
                  ),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final idx = value.toInt();
                          return idx >= 0 && idx < months.length
                              ? Text(months[idx])
                              : SizedBox();
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              percentChange > 0
                  ? "صرفت أكثر بنسبة ${percentChange.toStringAsFixed(1)}% مقارنة بالعام الماضي."
                  : "صرفت أقل بنسبة ${percentChange.abs().toStringAsFixed(1)}% مقارنة بالعام الماضي.",
              style: TextStyle(
                color: percentChange > 0 ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
