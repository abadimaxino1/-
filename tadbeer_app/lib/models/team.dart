class Team {
  final String id;
  final String name;
  final String ownerId;
  final List<String> memberIds;
  final List<String> managerIds;
  final DateTime createdAt;

  Team({
    required this.id,
    required this.name,
    required this.ownerId,
    this.memberIds = const [],
    this.managerIds = const [],
    required this.createdAt,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json['id'],
    name: json['name'],
    ownerId: json['ownerId'],
    memberIds: List<String>.from(json['memberIds'] ?? []),
    managerIds: List<String>.from(json['managerIds'] ?? []),
    createdAt: DateTime.parse(json['createdAt']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'ownerId': ownerId,
    'memberIds': memberIds,
    'managerIds': managerIds,
    'createdAt': createdAt.toIso8601String(),
  };
}
