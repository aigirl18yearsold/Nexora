class SavedOpportunityModel {
  final String id;
  final String opportunityId;
  final String userId;
  final String savedAt;

  SavedOpportunityModel({
    required this.id,
    required this.opportunityId,
    required this.userId,
    required this.savedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "opportunityId": opportunityId,
      "userId": userId,
      "savedAt": savedAt,
    };
  }

  factory SavedOpportunityModel.fromMap(Map<String, dynamic> map) {
    return SavedOpportunityModel(
      id: map["id"] ?? "",
      opportunityId: map["opportunityId"] ?? "",
      userId: map["userId"] ?? "",
      savedAt: map["savedAt"] ?? "",
    );
  }
}
