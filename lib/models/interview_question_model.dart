class InterviewQuestionModel {
  final String id;
  final String question;
  final String category;
  final String difficulty;
  final int durationInSeconds;

  InterviewQuestionModel({
    required this.id,
    required this.question,
    required this.category,
    required this.difficulty,
    required this.durationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "question": question,
      "category": category,
      "difficulty": difficulty,
      "durationInSeconds": durationInSeconds,
    };
  }

  factory InterviewQuestionModel.fromMap(Map<String, dynamic> map) {
    return InterviewQuestionModel(
      id: map["id"] ?? "",
      question: map["question"] ?? "",
      category: map["category"] ?? "",
      difficulty: map["difficulty"] ?? "Easy",
      durationInSeconds: map["durationInSeconds"] ?? 60,
    );
  }
}
