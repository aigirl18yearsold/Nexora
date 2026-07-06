class ResearchProjectModel {
  final String id;
  final String title;
  final String field;
  final String description;
  final String leaderName;
  final int currentMembers;
  final int maxMembers;
  final bool acceptingApplications;

  ResearchProjectModel({
    required this.id,
    required this.title,
    required this.field,
    required this.description,
    required this.leaderName,
    required this.currentMembers,
    required this.maxMembers,
    required this.acceptingApplications,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "field": field,
      "description": description,
      "leaderName": leaderName,
      "currentMembers": currentMembers,
      "maxMembers": maxMembers,
      "acceptingApplications": acceptingApplications,
    };
  }

  factory ResearchProjectModel.fromMap(Map<String, dynamic> map) {
    return ResearchProjectModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      field: map["field"] ?? "",
      description: map["description"] ?? "",
      leaderName: map["leaderName"] ?? "",
      currentMembers: map["currentMembers"] ?? 0,
      maxMembers: map["maxMembers"] ?? 0,
      acceptingApplications:
          map["acceptingApplications"] ?? true,
    );
  }
}
