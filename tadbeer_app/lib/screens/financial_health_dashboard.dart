import 'package:flutter/material.dart';

class FinancialHealthDashboard extends StatelessWidget {
  const FinancialHealthDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double savingRate = 0.22;
    double debtRatio = 0.12;
    int goalsCompleted = 3;
    int totalGoals = 5;

    return Scaffold(
      appBar: AppBar(title: Text('الصحة المالية')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text("مؤشر الصحة المالية", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 24),
            LinearProgressIndicator(
              value: (savingRate + (1 - debtRatio)) / 2,
              minHeight: 14,
              backgroundColor: Colors.grey[300],
              color: Colors.teal,
            ),
            SizedBox(height: 8),
            Text("معدل التوفير: ${(savingRate * 100).toStringAsFixed(1)}%"),
            Text("نسبة الديون: ${(debtRatio * 100).toStringAsFixed(1)}%"),
            SizedBox(height: 24),
            Text("الأهداف المنجزة: $goalsCompleted من $totalGoals"),
            SizedBox(height: 24),
            Card(
              color: Colors.green[50],
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text("وضعك المالي جيد! استمر في الادخار وخفض الديون."),
              ),
            )
          ],
        ),
      ),
    );
  }
}
