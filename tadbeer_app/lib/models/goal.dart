enum GoalType { saving, investment, debtPayment }

class Goal {
  final String id;
  final String userId;
  final String title;
  final GoalType type;
  final double targetAmount;
  double currentAmount;
  final DateTime startDate;
  final DateTime endDate;
  final String? note;
  final String status; // ongoing, completed

  Goal({
    required this.id,
    required this.userId,
    required this.title,
    required this.type,
    required this.targetAmount,
    this.currentAmount = 0.0,
    required this.startDate,
    required this.endDate,
    this.note,
    this.status = "ongoing",
  });

  double get progress => currentAmount / targetAmount;

  factory Goal.fromJson(Map<String, dynamic> json) => Goal(
    id: json['id'],
    userId: json['userId'],
    title: json['title'],
    type: GoalType.values.firstWhere((e) => e.toString().split('.').last == json['type']),
    targetAmount: json['targetAmount'].toDouble(),
    currentAmount: (json['currentAmount'] ?? 0.0).toDouble(),
    startDate: DateTime.parse(json['startDate']),
    endDate: DateTime.parse(json['endDate']),
    note: json['note'],
    status: json['status'] ?? "ongoing",
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'title': title,
    'type': type.toString().split('.').last,
    'targetAmount': targetAmount,
    'currentAmount': currentAmount,
    'startDate': startDate.toIso8601String(),
    'endDate': endDate.toIso8601String(),
    'note': note,
    'status': status,
  };
}
