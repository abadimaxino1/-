import 'package:flutter/material.dart';

class GlobalSearch extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  GlobalSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // لاحقاً: اربط نتائج البحث بكل النماذج (مصروفات، ديون، أهداف...)
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: "بحث شامل...",
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (v) {
          // منطق البحث
        },
      ),
    );
  }
}
