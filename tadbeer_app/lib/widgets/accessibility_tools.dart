import 'package:flutter/material.dart';

class AccessibilityTools extends StatelessWidget {
  final Widget child;
  const AccessibilityTools({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // مثال: زيادة حجم الخط، دعم القارئ الصوتي، ألوان عالية التباين
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.3), // تكبير الخط
      child: child,
    );
  }
}
