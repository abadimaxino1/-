class CalendarService {
  // إضافة حدث إلى تقويم جوجل (مبسط)
  static Future<void> addEventToGoogleCalendar({
    required String title,
    required DateTime date,
    String? description,
  }) async {
    // منطق الربط مع Google Calendar API
    // يتطلب OAuth2 وتوثيق المستخدم
  }
}
