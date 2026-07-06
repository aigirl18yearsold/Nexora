class AIRecommendationModel {
  final String id;
  final String title;
  final String category;
  final double matchScore;
  final String reason;

  AIRecommendationModel({
    required this.id,
    required this.title,
    required this.category,
    required this.matchScore,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "category": category,
      "matchScore": matchScore,
      "reason": reason,
    };
  }

  factory AIRecommendationModel.fromMap(Map<String, dynamic> map) {
    return AIRecommendationModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      category: map["category"] ?? "",
      matchScore: (map["matchScore"] ?? 0).toDouble(),
      reason: map["reason"] ?? "",
    );
  }
}
