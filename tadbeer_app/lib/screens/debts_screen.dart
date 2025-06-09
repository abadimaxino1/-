import 'package:flutter/material.dart';

class DebtsScreen extends StatelessWidget {
  const DebtsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final debts = [
      {'desc': "دين لـ محمد", 'remaining': 500, 'due': "2025-07-01"},
      {'desc': "دين بطاقة تسوق", 'remaining': 1200, 'due': "2025-06-15"},
    ];

    return Scaffold(
      appBar: AppBar(title: Text('الديون')),
      body: ListView.builder(
        itemCount: debts.length,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text(debts[i]['desc']!),
              subtitle: Text('المتبقي: ${debts[i]['remaining']} ريال - الاستحقاق: ${debts[i]['due']}'),
              trailing: ElevatedButton(
                child: Text('سدد'),
                onPressed: () {
                  // منطق سداد الدين
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "إضافة دين",
        onPressed: () {
          // منطق إضافة دين جديد
        },
      ),
    );
  }
}
