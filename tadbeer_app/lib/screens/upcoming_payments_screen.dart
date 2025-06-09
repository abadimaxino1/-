import 'package:flutter/material.dart';

class UpcomingPaymentsScreen extends StatelessWidget {
  const UpcomingPaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final payments = [
      {"desc": "سداد فاتورة الكهرباء", "due": "2025-06-10"},
      {"desc": "تجديد اشتراك جوال", "due": "2025-06-15"},
      {"desc": "قسط سيارة", "due": "2025-07-01"},
    ];
    return Scaffold(
      appBar: AppBar(title: Text('تنبيهات المواعيد المالية')),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: payments.length,
        itemBuilder: (ctx, i) => Card(
          child: ListTile(
            leading: Icon(Icons.notifications_active, color: Colors.orange),
            title: Text(payments[i]["desc"]!),
            subtitle: Text("تاريخ الاستحقاق: ${payments[i]["due"]}"),
            trailing: ElevatedButton(
              child: Text("ذكّرني"),
              onPressed: () {
                // منطق تفعيل إشعار/تذكير
              },
            ),
          ),
        ),
      ),
    );
  }
}
