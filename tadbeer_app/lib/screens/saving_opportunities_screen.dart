import 'package:flutter/material.dart';

class SavingOpportunitiesScreen extends StatelessWidget {
  const SavingOpportunitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opportunities = [
      "اشترك في باقة الإنترنت الأرخص لتوفير 50 ريال شهرياً.",
      "أوقف اشتراك خدمة X لتوفير 100 ريال شهرياً.",
      "قلل الطلبات الخارجية لتوفير 200 ريال شهرياً.",
    ];
    return Scaffold(
      appBar: AppBar(title: Text('فرص التوفير')),
      body: ListView.separated(
        padding: EdgeInsets.all(20),
        separatorBuilder: (_, __) => Divider(),
        itemCount: opportunities.length,
        itemBuilder: (ctx, i) => ListTile(
          leading: Icon(Icons.savings, color: Colors.green),
          title: Text(opportunities[i]),
        ),
      ),
    );
  }
}
