import 'package:flutter/material.dart';

class AlertReportsScreen extends StatelessWidget {
  const AlertReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final alerts = [
      "تحذير: صرفك في تصنيف المطاعم زاد عن المتوسط بنسبة 25%",
      "لاحظنا زيادة في مصروفات الترفيه هذا الأسبوع.",
      "اقتربت من تجاوز ميزانية تصنيف التسوق هذا الشهر.",
    ];
    return Scaffold(
      appBar: AppBar(title: Text('التنبيهات الذكية')),
      body: ListView.separated(
        padding: EdgeInsets.all(20),
        separatorBuilder: (_, __) => Divider(),
        itemCount: alerts.length,
        itemBuilder: (ctx, i) => ListTile(
          leading: Icon(Icons.warning, color: Colors.orange),
          title: Text(alerts[i]),
        ),
      ),
    );
  }
}
