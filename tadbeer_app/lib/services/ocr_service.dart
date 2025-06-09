import 'dart:io';
import 'package:google_ml_kit/google_ml_kit.dart';

class OCRService {
  static Future<Map<String, String?>> extractExpenseData(File imageFile) async {
    final inputImage = InputImage.fromFile(imageFile);
    final textRecognizer = GoogleMlKit.vision.textRecognizer();
    final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);

    String allText = recognizedText.text;
    final amountRegex = RegExp(r'(\d{1,3}(?:[.,]\d{3})*(?:[.,]\d{2})?)');
    final cardRegex = RegExp(r'[\*\x2A]{2,}\s?(\d{4})');
    final banks = ['الراجحي', 'الأهلي', 'AlRajhi', 'AlAhli', 'Riyad', 'ساب'];

    String? amount = amountRegex.firstMatch(allText)?.group(0);
    String? card = cardRegex.firstMatch(allText)?.group(1);
    String? bank = banks.firstWhere((b) => allText.contains(b), orElse: () => null);

    return {
      'amount': amount,
      'card': card,
      'bank': bank,
    };
  }
}
