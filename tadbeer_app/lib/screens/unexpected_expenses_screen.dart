import 'package:flutter/material.dart';

class UnexpectedExpensesScreen extends StatelessWidget {
  const UnexpectedExpensesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unexpected = [
      {"desc": "إصلاح سيارة", "amount": 1200, "date": "2025-05-10"},
      {"desc": "علاج طارئ", "amount": 800, "date": "2025-04-20"},
    ];
    return Scaffold(
      appBar: AppBar(title: Text('المصاريف غير المتوقعة')),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: unexpected.length,
        itemBuilder: (ctx, i) => Card(
          child: ListTile(
            leading: Icon(Icons.warning_amber, color: Colors.red),
            title: Text(unexpected[i]["desc"]!),
            subtitle: Text("المبلغ: ${unexpected[i]["amount"]} ريال - التاريخ: ${unexpected[i]["date"]}"),
          ),
        ),
      ),
    );
  }
}
