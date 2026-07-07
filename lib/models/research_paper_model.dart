class ResearchPaperModel {
  final String id;
  final String title;
  final String abstractText;
  final String authorId;
  final List<String> coAuthors;
  final String field;
  final DateTime publishedAt;

  ResearchPaperModel({
    required this.id,
    required this.title,
    required this.abstractText,
    required this.authorId,
    required this.coAuthors,
    required this.field,
    required this.publishedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "abstractText": abstractText,
      "authorId": authorId,
      "coAuthors": coAuthors,
      "field": field,
      "publishedAt": publishedAt.toIso8601String(),
    };
  }

  factory ResearchPaperModel.fromMap(Map<String, dynamic> map) {
    return ResearchPaperModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      abstractText: map["abstractText"] ?? "",
      authorId: map["authorId"] ?? "",
      coAuthors: List<String>.from(map["coAuthors"] ?? []),
      field: map["field"] ?? "",
      publishedAt: DateTime.tryParse(
            map["publishedAt"] ?? "",
          ) ??
          DateTime.now(),
    );
  }
}
