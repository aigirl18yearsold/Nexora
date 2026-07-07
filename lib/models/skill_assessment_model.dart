class SkillAssessmentModel {
  final String id;
  final String skillName;
  final String category;
  final int score;
  final int maxScore;
  final String level;

  SkillAssessmentModel({
    required this.id,
    required this.skillName,
    required this.category,
    required this.score,
    required this.maxScore,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "skillName": skillName,
      "category": category,
      "score": score,
      "maxScore": maxScore,
      "level": level,
    };
  }

  factory SkillAssessmentModel.fromMap(
      Map<String, dynamic> map) {
    return SkillAssessmentModel(
      id: map["id"] ?? "",
      skillName: map["skillName"] ?? "",
      category: map["category"] ?? "",
      score: map["score"] ?? 0,
      maxScore: map["maxScore"] ?? 100,
      level: map["level"] ?? "Beginner",
    );
  }
}
