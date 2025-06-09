import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // بيانات تجريبية
    final categories = ['مطاعم', 'تسوق', 'مواصلات', 'تعليم'];
    final amounts = [500.0, 1200.0, 300.0, 150.0];

    return Scaffold(
      appBar: AppBar(title: Text('تحاليل ووعي مالي')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text("تفاصيل الصرف حسب التصنيف:", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 220,
              child: PieChart(
                PieChartData(
                  sections: List.generate(categories.length, (i) => PieChartSectionData(
                    color: Colors.primaries[i%Colors.primaries.length],
                    value: amounts[i],
                    title: categories[i],
                    titleStyle: TextStyle(fontSize: 14, color: Colors.white),
                  )),
                  sectionsSpace: 2,
                  centerSpaceRadius: 40,
                ),
              ),
            ),
            SizedBox(height: 24),
            Text("مقارنة الصرف الشهري:", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 200,
              child: BarChart(
                BarChartData(
                  barGroups: [
                    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 1200, color: Colors.teal)]),
                    BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 800, color: Colors.blue)]),
                    BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 900, color: Colors.orange)]),
                  ],
                  titlesData: FlTitlesData(show: true),
                ),
              ),
            ),
            SizedBox(height: 24),
            Text("معدل تحقيق الأهداف المالية:", style: TextStyle(fontWeight: FontWeight.bold)),
            LinearProgressIndicator(value: 0.65, minHeight: 14, backgroundColor: Colors.grey[300]),
            SizedBox(height: 8),
            Text("تم تحقيق 65% من الأهداف!"),
          ],
        ),
      ),
    );
  }
}
