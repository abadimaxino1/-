import 'package:flutter/material.dart';

class AISuggestedGoalsScreen extends StatelessWidget {
  const AISuggestedGoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final suggestions = [
      "نقترح تقليل مصاريف المقاهي إلى 300 ريال شهريًا.",
      "يمكنك ادخار 1000 ريال شهريًا لتحقيق هدف السفر.",
      "اقترحنا ميزانية جديدة للترفيه: 500 ريال/شهر.",
      "تستطيع زيادة مدخراتك بنسبة 10% إذا قللت من مصاريف التسوق.",
    ];
    return Scaffold(
      appBar: AppBar(title: Text('أهداف وميزانيات مقترحة')),
      body: ListView.separated(
        padding: EdgeInsets.all(20),
        separatorBuilder: (_, __) => Divider(),
        itemCount: suggestions.length,
        itemBuilder: (ctx, i) => ListTile(
          leading: Icon(Icons.lightbulb, color: Colors.blue),
          title: Text(suggestions[i]),
          trailing: ElevatedButton(
            child: Text('اعتمد'),
            onPressed: () {
              // تنفيذ اعتماد الهدف/الميزانية
            },
          ),
        ),
      ),
    );
  }
}
