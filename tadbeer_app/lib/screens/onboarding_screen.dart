import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("مرحبًا بك في تدبير!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 32),
            ElevatedButton(
              child: Text('ابدأ الآن كضيف'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text('أو سجّل دخولك'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
