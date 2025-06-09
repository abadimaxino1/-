import 'package:flutter/material.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final teams = [
      {'name': "فريق العائلة", 'members': 3},
      {'name': "فريق العمل", 'members': 5},
    ];

    return Scaffold(
      appBar: AppBar(title: Text('الفرق')),
      body: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.groups),
            title: Text(teams[i]['name']!),
            subtitle: Text('عدد الأعضاء: ${teams[i]['members']}'),
            onTap: () {
              // استعراض تفاصيل الفريق
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "إضافة فريق",
        onPressed: () {
          // منطق إضافة فريق جديد
        },
      ),
    );
  }
}
