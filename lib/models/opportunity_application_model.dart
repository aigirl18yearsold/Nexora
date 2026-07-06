class OpportunityApplicationModel {
  final String id;
  final String opportunityId;
  final String applicantId;
  final String applicantName;
  final String status;
  final DateTime appliedAt;

  OpportunityApplicationModel({
    required this.id,
    required this.opportunityId,
    required this.applicantId,
    required this.applicantName,
    required this.status,
    required this.appliedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "opportunityId": opportunityId,
      "applicantId": applicantId,
      "applicantName": applicantName,
      "status": status,
      "appliedAt": appliedAt.toIso8601String(),
    };
  }

  factory OpportunityApplicationModel.fromMap(
      Map<String, dynamic> map) {
    return OpportunityApplicationModel(
      id: map["id"] ?? "",
      opportunityId: map["opportunityId"] ?? "",
      applicantId: map["applicantId"] ?? "",
      applicantName: map["applicantName"] ?? "",
      status: map["status"] ?? "Pending",
      appliedAt:
          DateTime.tryParse(map["appliedAt"] ?? "") ??
              DateTime.now(),
    );
  }
}
