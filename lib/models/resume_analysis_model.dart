class ResumeAnalysisModel {
  final String id;
  final double overallScore;
  final double skillsScore;
  final double experienceScore;
  final double formattingScore;
  final double atsScore;
  final List<String> suggestions;

  ResumeAnalysisModel({
    required this.id,
    required this.overallScore,
    required this.skillsScore,
    required this.experienceScore,
    required this.formattingScore,
    required this.atsScore,
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "overallScore": overallScore,
      "skillsScore": skillsScore,
      "experienceScore": experienceScore,
      "formattingScore": formattingScore,
      "atsScore": atsScore,
      "suggestions": suggestions,
    };
  }

  factory ResumeAnalysisModel.fromMap(Map<String, dynamic> map) {
    return ResumeAnalysisModel(
      id: map["id"] ?? "",
      overallScore: (map["overallScore"] ?? 0).toDouble(),
      skillsScore: (map["skillsScore"] ?? 0).toDouble(),
      experienceScore: (map["experienceScore"] ?? 0).toDouble(),
      formattingScore: (map["formattingScore"] ?? 0).toDouble(),
      atsScore: (map["atsScore"] ?? 0).toDouble(),
      suggestions: List<String>.from(map["suggestions"] ?? []),
    );
  }
}
