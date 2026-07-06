class ProfileAnalysisModel {
  final String id;
  final int completionScore;
  final int competitivenessScore;
  final List<String> strengths;
  final List<String> weaknesses;
  final List<String> recommendations;

  ProfileAnalysisModel({
    required this.id,
    required this.completionScore,
    required this.competitivenessScore,
    required this.strengths,
    required this.weaknesses,
    required this.recommendations,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "completionScore": completionScore,
      "competitivenessScore": competitivenessScore,
      "strengths": strengths,
      "weaknesses": weaknesses,
      "recommendations": recommendations,
    };
  }

  factory ProfileAnalysisModel.fromMap(Map<String, dynamic> map) {
    return ProfileAnalysisModel(
      id: map["id"] ?? "",
      completionScore: map["completionScore"] ?? 0,
      competitivenessScore: map["competitivenessScore"] ?? 0,
      strengths: List<String>.from(map["strengths"] ?? []),
      weaknesses: List<String>.from(map["weaknesses"] ?? []),
      recommendations: List<String>.from(map["recommendations"] ?? []),
    );
  }
}
