import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String selectedCurrency = 'SAR';
  String selectedLanguage = 'ar';
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الإعدادات')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DropdownButtonFormField(
            value: selectedCurrency,
            decoration: InputDecoration(labelText: "العملة"),
            items: supportedCurrencies.map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
            onChanged: (v) => setState(() => selectedCurrency = v as String),
          ),
          DropdownButtonFormField(
            value: selectedLanguage,
            decoration: InputDecoration(labelText: "اللغة"),
            items: [
              DropdownMenuItem(value: 'ar', child: Text('العربية')),
              DropdownMenuItem(value: 'en', child: Text('English')),
            ],
            onChanged: (v) => setState(() => selectedLanguage = v as String),
          ),
          SwitchListTile(
            title: Text("تفعيل الإشعارات"),
            value: notificationsEnabled,
            onChanged: (v) => setState(() => notificationsEnabled = v),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // حفظ الاعدادات
            },
            child: Text("حفظ"),
          )
        ],
      ),
    );
  }
}
