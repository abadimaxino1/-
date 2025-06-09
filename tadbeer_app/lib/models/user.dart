class User {
  final String id;
  final String name;
  final String email;
  final String role; // admin, manager, member
  final String? avatarUrl;
  final List<String> cardIds; // بطاقات المستخدم

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.avatarUrl,
    this.cardIds = const [],
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    role: json['role'],
    avatarUrl: json['avatarUrl'],
    cardIds: List<String>.from(json['cardIds'] ?? []),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'role': role,
    'avatarUrl': avatarUrl,
    'cardIds': cardIds,
  };
}
