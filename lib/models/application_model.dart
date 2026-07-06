class ApplicationModel {
  final String id;
  final String opportunityId;
  final String userId;
  final String status;
  final String appliedDate;
  final String deadline;

  ApplicationModel({
    required this.id,
    required this.opportunityId,
    required this.userId,
    required this.status,
    required this.appliedDate,
    required this.deadline,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "opportunityId": opportunityId,
      "userId": userId,
      "status": status,
      "appliedDate": appliedDate,
      "deadline": deadline,
    };
  }

  factory ApplicationModel.fromMap(Map<String, dynamic> map) {
    return ApplicationModel(
      id: map["id"] ?? "",
      opportunityId: map["opportunityId"] ?? "",
      userId: map["userId"] ?? "",
      status: map["status"] ?? "Not Applied",
      appliedDate: map["appliedDate"] ?? "",
      deadline: map["deadline"] ?? "",
    );
  }
}
