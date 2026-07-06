class AnnouncementModel {
  final String id;
  final String title;
  final String content;
  final String organization;
  final DateTime publishedAt;
  final bool isPinned;

  AnnouncementModel({
    required this.id,
    required this.title,
    required this.content,
    required this.organization,
    required this.publishedAt,
    required this.isPinned,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "content": content,
      "organization": organization,
      "publishedAt": publishedAt.toIso8601String(),
      "isPinned": isPinned,
    };
  }

  factory AnnouncementModel.fromMap(Map<String, dynamic> map) {
    return AnnouncementModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      content: map["content"] ?? "",
      organization: map["organization"] ?? "",
      publishedAt:
          DateTime.tryParse(map["publishedAt"] ?? "") ??
              DateTime.now(),
      isPinned: map["isPinned"] ?? false,
    );
  }
}
