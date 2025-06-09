import '../models/expense.dart';

class AISpendingAnalysisService {
  // تحليل نمط الإنفاق واقتراحات ذكية
  static Map<String, dynamic> analyzeSpending(List<Expense> expenses) {
    final Map<String, double> categoryTotals = {};
    for (final e in expenses) {
      categoryTotals[e.category] = (categoryTotals[e.category] ?? 0) + e.amount;
    }
    final topCategory = categoryTotals.entries.reduce((a, b) => a.value > b.value ? a : b).key;
    final total = categoryTotals.values.reduce((a, b) => a + b);
    final suggestion = "أنت تصرف كثيرًا على $topCategory. جرب تقليل الصرف في هذا التصنيف.";
    return {
      'topCategory': topCategory,
      'suggestion': suggestion,
      'details': categoryTotals,
      "total": total,
    };
  }
}
