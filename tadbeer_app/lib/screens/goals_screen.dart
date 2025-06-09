import 'package:flutter/material.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final goals = [
      {'title': "ادخار السفر", 'type': "ادخار", 'progress': 0.7, 'target': 6000},
      {'title': "استثمار عقاري", 'type': "استثمار", 'progress': 0.25, 'target': 20000},
    ];

    return Scaffold(
      appBar: AppBar(title: Text('الأهداف')),
      body: ListView.builder(
        itemCount: goals.length,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
              leading: Icon(goals[i]['type'] == "ادخار" ? Icons.savings : Icons.trending_up),
              title: Text(goals[i]['title']!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('النوع: ${goals[i]['type']}'),
                  LinearProgressIndicator(
                    value: goals[i]['progress'] as double,
                    minHeight: 8,
                  ),
                  Text('الهدف: ${goals[i]['target']} ريال'),
                ],
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                // تفاصيل الهدف/تحريره
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "إضافة هدف",
        onPressed: () {
          // منطق إضافة هدف جديد
        },
      ),
    );
  }
}
