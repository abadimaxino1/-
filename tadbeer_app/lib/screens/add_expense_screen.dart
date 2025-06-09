import 'package:flutter/material.dart';
import '../services/ocr_service.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final amountController = TextEditingController();
  final categoryController = TextEditingController();
  String? cardDigits;
  String? bankName;
  File? imageFile;

  Future<void> _pickAndExtract() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => imageFile = File(picked.path));
      final data = await OCRService.extractExpenseData(imageFile!);
      setState(() {
        amountController.text = data['amount'] ?? '';
        cardDigits = data['card'];
        bankName = data['bank'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('إضافة مصروف')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(controller: amountController, decoration: InputDecoration(labelText: 'المبلغ')),
            TextFormField(controller: categoryController, decoration: InputDecoration(labelText: 'التصنيف')),
            if (cardDigits != null) Text('آخر ٤ أرقام البطاقة: $cardDigits'),
            if (bankName != null) Text('اسم البنك: $bankName'),
            ElevatedButton(
              onPressed: _pickAndExtract,
              child: Text('إرفاق صورة فاتورة (OCR)'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // حفظ العملية في قاعدة البيانات
              },
              child: Text('حفظ'),
            ),
          ],
        ),
      ),
    );
  }
}
