class JobReadinessModel {
  final String id;
  final int overallScore;
  final int resumeScore;
  final int interviewScore;
  final int technicalSkillScore;
  final int communicationScore;

  JobReadinessModel({
    required this.id,
    required this.overallScore,
    required this.resumeScore,
    required this.interviewScore,
    required this.technicalSkillScore,
    required this.communicationScore,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "overallScore": overallScore,
      "resumeScore": resumeScore,
      "interviewScore": interviewScore,
      "technicalSkillScore": technicalSkillScore,
      "communicationScore": communicationScore,
    };
  }

  factory JobReadinessModel.fromMap(Map<String, dynamic> map) {
    return JobReadinessModel(
      id: map["id"] ?? "",
      overallScore: map["overallScore"] ?? 0,
      resumeScore: map["resumeScore"] ?? 0,
      interviewScore: map["interviewScore"] ?? 0,
      technicalSkillScore: map["technicalSkillScore"] ?? 0,
      communicationScore: map["communicationScore"] ?? 0,
    );
  }
}
