import 'package:flutter/material.dart';

class RegisterReminder extends StatelessWidget {
  final VoidCallback onRegister;
  const RegisterReminder({required this.onRegister, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[100],
      child: ListTile(
        title: Text("سجّل الآن لتحفظ بياناتك للأبد وتستفيد من مزايا إضافية!"),
        trailing: ElevatedButton(
          child: Text("تسجيل"),
          onPressed: onRegister,
        ),
      ),
    );
  }
}
