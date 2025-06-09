import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('لوحة الإدارة')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.people),
            title: Text('إدارة المستخدمين'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.groups),
            title: Text('إدارة الفرق'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('تقارير الأخطاء'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('الإعدادات العامة'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
