class Debt {
  final String id;
  final String userId;
  final String description;
  final double totalAmount;
  double paidAmount;
  final DateTime dueDate;
  final String? toUserId; // لشخص أو جهة
  final String? teamId;
  final String status; // pending, paid, overdue

  Debt({
    required this.id,
    required this.userId,
    required this.description,
    required this.totalAmount,
    this.paidAmount = 0.0,
    required this.dueDate,
    this.toUserId,
    this.teamId,
    this.status = "pending",
  });

  double get remaining => totalAmount - paidAmount;

  factory Debt.fromJson(Map<String, dynamic> json) => Debt(
    id: json['id'],
    userId: json['userId'],
    description: json['description'],
    totalAmount: json['totalAmount'].toDouble(),
    paidAmount: (json['paidAmount'] ?? 0.0).toDouble(),
    dueDate: DateTime.parse(json['dueDate']),
    toUserId: json['toUserId'],
    teamId: json['teamId'],
    status: json['status'] ?? "pending",
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'description': description,
    'totalAmount': totalAmount,
    'paidAmount': paidAmount,
    'dueDate': dueDate.toIso8601String(),
    'toUserId': toUserId,
    'teamId': teamId,
    'status': status,
  };
}
