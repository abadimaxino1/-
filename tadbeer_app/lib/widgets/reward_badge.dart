import 'package:flutter/material.dart';

class RewardBadge extends StatelessWidget {
  final String title;
  final String imageUrl;
  const RewardBadge({required this.title, required this.imageUrl, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl, width: 48, height: 48),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
