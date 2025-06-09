import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('فلترة وتحليل')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('فلترة حسب التصنيف/الفريق/البطاقة/الفترة...'),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('تطبيق الفلتر'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
