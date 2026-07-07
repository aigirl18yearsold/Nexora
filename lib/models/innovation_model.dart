class InnovationModel {
  final String id;
  final String title;
  final String description;
  final String category;
  final int innovationScore;
  final String developmentStage;

  InnovationModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.innovationScore,
    required this.developmentStage,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "category": category,
      "innovationScore": innovationScore,
      "developmentStage": developmentStage,
    };
  }

  factory InnovationModel.fromMap(Map<String, dynamic> map) {
    return InnovationModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      description: map["description"] ?? "",
      category: map["category"] ?? "",
      innovationScore: map["innovationScore"] ?? 0,
      developmentStage: map["developmentStage"] ?? "Idea",
    );
  }
}
