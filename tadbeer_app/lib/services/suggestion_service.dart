import 'dart:math';

class SuggestionService {
  static DateTime suggestDebtPaymentDate({
    required List<DateTime> salaryDates,
    required List<double> salaryAmounts,
    required List<DateTime> expenseDates,
    required List<double> expenseAmounts,
    required double debtAmount,
    required double currentBalance,
  }) {
    final now = DateTime.now();
    final nextSalaryIndex = salaryDates.indexWhere((d) => d.isAfter(now));
    if (nextSalaryIndex == -1) return now.add(Duration(days: 7));
    final nextSalaryDate = salaryDates[nextSalaryIndex];
    final afterSalaryBalance = currentBalance + salaryAmounts[nextSalaryIndex];
    final expensesAfterSalary = expenseDates.asMap().entries
        .where((e) => e.value.isAfter(nextSalaryDate))
        .map((e) => expenseAmounts[e.key])
        .fold(0.0, (a, b) => a + b);
    final canPay = (afterSalaryBalance - expensesAfterSalary) >= debtAmount;
    return canPay ? nextSalaryDate.add(Duration(days: 2)) : nextSalaryDate.add(Duration(days: 10));
  }
}
