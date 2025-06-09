import 'package:flutter/material.dart';
import 'faq_screen.dart';
import 'ai_assistant_screen.dart';

class SupportCenterScreen extends StatelessWidget {
  const SupportCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('مركز الدعم الفني')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('كيف يمكننا مساعدتك؟', style: Theme.of(context).textTheme.headline6),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => AIAssistantScreen()));
            },
            child: Text('محادثة مباشرة مع المساعد الذكي'),
          ),
          ElevatedButton(
            onPressed: () {
              // إرسال تذكرة دعم فني
            },
            child: Text('فتح تذكرة جديدة'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => FAQScreen()));
            },
            child: Text('الأسئلة الشائعة (FAQ)'),
          ),
        ],
      ),
    );
  }
}
