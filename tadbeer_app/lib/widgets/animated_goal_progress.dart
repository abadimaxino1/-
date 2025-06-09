import 'package:flutter/material.dart';

class AnimatedGoalProgress extends StatelessWidget {
  final double progress;
  const AnimatedGoalProgress({required this.progress, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: progress),
      duration: Duration(seconds: 2),
      builder: (context, value, child) => CircularProgressIndicator(
        value: value,
        backgroundColor: Colors.grey[200],
        valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
        strokeWidth: 8,
      ),
    );
  }
}
