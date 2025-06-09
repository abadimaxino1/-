class UserSettings {
  final String userId;
  final String language;
  final String currency;
  final bool notificationsEnabled;

  UserSettings({
    required this.userId,
    this.language = 'ar',
    this.currency = 'SAR',
    this.notificationsEnabled = true,
  });

  factory UserSettings.fromJson(Map<String, dynamic> json) => UserSettings(
    userId: json['userId'],
    language: json['language'] ?? 'ar',
    currency: json['currency'] ?? 'SAR',
    notificationsEnabled: json['notificationsEnabled'] ?? true,
  );

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'language': language,
    'currency': currency,
    'notificationsEnabled': notificationsEnabled,
  };
}
