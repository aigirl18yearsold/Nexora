class HackathonTeamModel {
  final String id;
  final String hackathonName;
  final String teamName;
  final String leaderId;
  final List<String> requiredSkills;
  final int currentMembers;
  final int maxMembers;
  final String deadline;

  HackathonTeamModel({
    required this.id,
    required this.hackathonName,
    required this.teamName,
    required this.leaderId,
    required this.requiredSkills,
    required this.currentMembers,
    required this.maxMembers,
    required this.deadline,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "hackathonName": hackathonName,
      "teamName": teamName,
      "leaderId": leaderId,
      "requiredSkills": requiredSkills,
      "currentMembers": currentMembers,
      "maxMembers": maxMembers,
      "deadline": deadline,
    };
  }

  factory HackathonTeamModel.fromMap(Map<String, dynamic> map) {
    return HackathonTeamModel(
      id: map["id"] ?? "",
      hackathonName: map["hackathonName"] ?? "",
      teamName: map["teamName"] ?? "",
      leaderId: map["leaderId"] ?? "",
      requiredSkills: List<String>.from(map["requiredSkills"] ?? []),
      currentMembers: map["currentMembers"] ?? 0,
      maxMembers: map["maxMembers"] ?? 0,
      deadline: map["deadline"] ?? "",
    );
  }
}
