import 'package:flutter/material.dart';

class GoalCommitmentScreen extends StatelessWidget {
  const GoalCommitmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commitment = [
      {"goal": "ادخار السفر", "committed": true, "progress": 0.9},
      {"goal": "سداد بطاقة الائتمان", "committed": false, "progress": 0.4},
      {"goal": "تجديد السيارة", "committed": true, "progress": 1.0},
    ];
    return Scaffold(
      appBar: AppBar(title: Text('تحليل الالتزام بالأهداف')),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: commitment.length,
        itemBuilder: (ctx, i) => Card(
          color: commitment[i]["committed"]! ? Colors.green[50] : Colors.red[50],
          child: ListTile(
            leading: Icon(
              commitment[i]["committed"]! ? Icons.check_circle : Icons.cancel,
              color: commitment[i]["committed"]! ? Colors.green : Colors.red,
            ),
            title: Text(commitment[i]["goal"]!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearProgressIndicator(
                  value: commitment[i]["progress"] as double,
                  minHeight: 8,
                  color: commitment[i]["committed"]! ? Colors.green : Colors.red,
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(height: 4),
                Text("نسبة الإنجاز: ${(commitment[i]["progress"]! * 100).toStringAsFixed(0)}%"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
