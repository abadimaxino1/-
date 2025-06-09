import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  final List<Map<String, String>> faqList = const [
    {
      'q': 'كيف أضيف مصروف جديد؟',
      'a': 'من الشاشة الرئيسية، اضغط على زر + ثم أدخل بيانات المصروف.'
    },
    {
      'q': 'كيف أستفيد من الذكاء الاصطناعي في التطبيق؟',
      'a': 'يوجد مساعد ذكي لاقتراح أوقات السداد وتحليل الأنماط المالية.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الأسئلة الشائعة')),
      body: ListView.builder(
        itemCount: faqList.length,
        itemBuilder: (context, i) {
          return ExpansionTile(
            title: Text(faqList[i]['q']!),
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(faqList[i]['a']!),
            )],
          );
        },
      ),
    );
  }
}
