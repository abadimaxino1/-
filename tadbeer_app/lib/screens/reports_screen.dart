import 'package:flutter/material.dart';
import '../utils/helpers.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  final sampleData = const [
    {'amount': 100, 'category': 'تسوق', 'date': '2025-06-01'},
    {'amount': 50, 'category': 'مطاعم', 'date': '2025-06-03'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('التقارير والتحليل')),
      body: Center(
        child: Column(
          children: [
            Text('سيتم عرض الرسوم البيانية والتقارير المالية هنا حسب الفلاتر المختارة.'),
            ElevatedButton(
              child: Text('تصدير البيانات (CSV)'),
              onPressed: () {
                final csv = CSVHelper.toCSV(sampleData);
                // منطق الحفظ أو المشاركة
                print(csv);
              },
            ),
            ElevatedButton(
              child: Text('استيراد بيانات (CSV)'),
              onPressed: () {
                // منطق الاستيراد
              },
            ),
          ],
        ),
      ),
    );
  }
}
