import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  Widget _card({
    required String title,
    required Widget content,
    VoidCallback? onDetails,
    Color? color,
  }) {
    return Card(
      color: color,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                if (onDetails != null)
                  TextButton(
                    child: Text('تفاصيل أكثر', style: TextStyle(color: Colors.teal)),
                    onPressed: onDetails,
                  ),
              ],
            ),
            SizedBox(height: 8),
            content,
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('لوحة التقارير الذكية')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _card(
            title: "مؤشر الصحة المالية",
            content: LinearProgressIndicator(
              value: 0.74,
              minHeight: 14,
              backgroundColor: Colors.grey[300],
              color: Colors.teal,
            ),
            onDetails: () => Navigator.pushNamed(context, '/financial_health_dashboard'),
            color: Colors.green[50],
          ),
          _card(
            title: "تنبيه هام",
            content: Text("تحذير: صرفك في تصنيف المطاعم زاد عن المتوسط بنسبة 25%", style: TextStyle(color: Colors.orange[800])),
            onDetails: () => Navigator.pushNamed(context, '/alert_reports'),
            color: Colors.orange[50],
          ),
          _card(
            title: "توزيع المصروفات حسب التصنيف",
            content: Container(
              height: 120,
              child: Center(child: Text("رسم بياني دائري هنا (fl_chart)")),
            ),
            onDetails: () => Navigator.pushNamed(context, '/analytics'),
          ),
          _card(
            title: "مقارنة شهر بشهر/سنة بسنة",
            content: Container(
              height: 100,
              child: Center(child: Text("رسم بياني عمودي هنا (fl_chart)")),
            ),
            onDetails: () => Navigator.pushNamed(context, '/comparison_report'),
          ),
          _card(
            title: "أهداف وميزانيات مقترحة",
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("نقترح تقليل مصاريف المقاهي إلى 300 ريال شهريًا."),
                Text("يمكنك ادخار 1000 ريال شهريًا لتحقيق هدف السفر."),
              ],
            ),
            onDetails: () => Navigator.pushNamed(context, '/ai_suggested_goals'),
          ),
          _card(
            title: "فرص التوفير",
            content: Text("يمكنك توفير 100-200 ريال شهريًا عبر تعديل بعض الاشتراكات."),
            onDetails: () => Navigator.pushNamed(context, '/saving_opportunities'),
          ),
          _card(
            title: "المصاريف غير المتوقعة",
            content: Text("مصروف غير متوقع: إصلاح سيارة 1200 ريال في 2025-05-10"),
            onDetails: () => Navigator.pushNamed(context, '/unexpected_expenses'),
          ),
          _card(
            title: "تحليل الالتزام بالأهداف",
            content: Text("حققت 2 من أصل 3 أهداف مالية هذا العام."),
            onDetails: () => Navigator.pushNamed(context, '/goal_commitment'),
          ),
          _card(
            title: "مدفوعات/فواتير قريبة",
            content: Text("سداد فاتورة الكهرباء مستحق خلال 3 أيام."),
            onDetails: () => Navigator.pushNamed(context, '/upcoming_payments'),
          ),
        ],
      ),
    );
  }
}
