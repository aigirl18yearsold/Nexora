class ScholarshipMatchModel {
  final String id;
  final String scholarshipName;
  final double matchScore;
  final String eligibility;
  final String deadline;

  ScholarshipMatchModel({
    required this.id,
    required this.scholarshipName,
    required this.matchScore,
    required this.eligibility,
    required this.deadline,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "scholarshipName": scholarshipName,
      "matchScore": matchScore,
      "eligibility": eligibility,
      "deadline": deadline,
    };
  }

  factory ScholarshipMatchModel.fromMap(Map<String, dynamic> map) {
    return ScholarshipMatchModel(
      id: map["id"] ?? "",
      scholarshipName: map["scholarshipName"] ?? "",
      matchScore: (map["matchScore"] ?? 0).toDouble(),
      eligibility: map["eligibility"] ?? "",
      deadline: map["deadline"] ?? "",
    );
  }
}
