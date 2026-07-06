class TeamModel {
  final String id;
  final String name;
  final String description;
  final String category;
  final String leaderId;
  final int memberCount;
  final int maxMembers;
  final bool isOpen;

  TeamModel({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.leaderId,
    required this.memberCount,
    required this.maxMembers,
    required this.isOpen,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "category": category,
      "leaderId": leaderId,
      "memberCount": memberCount,
      "maxMembers": maxMembers,
      "isOpen": isOpen,
    };
  }

  factory TeamModel.fromMap(Map<String, dynamic> map) {
    return TeamModel(
      id: map["id"] ?? "",
      name: map["name"] ?? "",
      description: map["description"] ?? "",
      category: map["category"] ?? "",
      leaderId: map["leaderId"] ?? "",
      memberCount: map["memberCount"] ?? 0,
      maxMembers: map["maxMembers"] ?? 0,
      isOpen: map["isOpen"] ?? true,
    );
  }
}
