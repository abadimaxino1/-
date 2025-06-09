import '../models/expense.dart';

class SmartNotificationService {
  static void notifyIfOverspent(List<Expense> expenses, double monthlyLimit) {
    double spent = expenses
      .where((e) => e.date.month == DateTime.now().month)
      .fold(0, (a, b) => a + b.amount);
    if (spent > monthlyLimit) {
      // استدعاء NotificationService لإظهار تنبيه
    }
  }

  static void notifyForUnusualSpending(List<Expense> expenses) {
    // لو وجد صرف غير معتاد أو مرتفع فجأة
    // أرسل تنبيه خاص
  }
}
