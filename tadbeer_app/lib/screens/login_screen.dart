import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تسجيل الدخول')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'البريد الإلكتروني أو رقم الجوال')),
              TextFormField(decoration: InputDecoration(labelText: 'كلمة المرور'), obscureText: true),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('دخول'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              SizedBox(height: 8),
              Text('أو'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: Icon(Icons.login), onPressed: () {/* Google login */}),
                  IconButton(icon: Icon(Icons.phone), onPressed: () {/* Phone login */}),
                  // يمكن إضافة Apple أو أي طريقة أخرى
                ],
              ),
              TextButton(
                child: Text('ليس لديك حساب؟ سجل الآن'),
                onPressed: () {
                  // فتح صفحة التسجيل
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
