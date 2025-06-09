class SupportTicket {
  final String id;
  final String userId;
  final String title;
  final String description;
  final String status; // open, closed, pending
  final DateTime createdAt;

  SupportTicket({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
    this.status = 'open',
    required this.createdAt,
  });

  factory SupportTicket.fromJson(Map<String, dynamic> json) => SupportTicket(
    id: json['id'],
    userId: json['userId'],
    title: json['title'],
    description: json['description'],
    status: json['status'] ?? 'open',
    createdAt: DateTime.parse(json['createdAt']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'title': title,
    'description': description,
    'status': status,
    'createdAt': createdAt.toIso8601String(),
  };
}
