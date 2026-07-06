class EssayAnalysisModel {
  final String id;
  final double overallScore;
  final double grammarScore;
  final double clarityScore;
  final double structureScore;
  final double originalityScore;
  final List<String> strengths;
  final List<String> improvements;

  EssayAnalysisModel({
    required this.id,
    required this.overallScore,
    required this.grammarScore,
    required this.clarityScore,
    required this.structureScore,
    required this.originalityScore,
    required this.strengths,
    required this.improvements,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "overallScore": overallScore,
      "grammarScore": grammarScore,
      "clarityScore": clarityScore,
      "structureScore": structureScore,
      "originalityScore": originalityScore,
      "strengths": strengths,
      "improvements": improvements,
    };
  }

  factory EssayAnalysisModel.fromMap(Map<String, dynamic> map) {
    return EssayAnalysisModel(
      id: map["id"] ?? "",
      overallScore: (map["overallScore"] ?? 0).toDouble(),
      grammarScore: (map["grammarScore"] ?? 0).toDouble(),
      clarityScore: (map["clarityScore"] ?? 0).toDouble(),
      structureScore: (map["structureScore"] ?? 0).toDouble(),
      originalityScore: (map["originalityScore"] ?? 0).toDouble(),
      strengths: List<String>.from(map["strengths"] ?? []),
      improvements: List<String>.from(map["improvements"] ?? []),
    );
  }
}
