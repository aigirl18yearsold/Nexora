class CommunityPostModel {
  final String id;
  final String authorId;
  final String authorName;
  final String content;
  final DateTime createdAt;
  final int likes;
  final int comments;

  CommunityPostModel({
    required this.id,
    required this.authorId,
    required this.authorName,
    required this.content,
    required this.createdAt,
    required this.likes,
    required this.comments,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "authorId": authorId,
      "authorName": authorName,
      "content": content,
      "createdAt": createdAt.toIso8601String(),
      "likes": likes,
      "comments": comments,
    };
  }

  factory CommunityPostModel.fromMap(Map<String, dynamic> map) {
    return CommunityPostModel(
      id: map["id"] ?? "",
      authorId: map["authorId"] ?? "",
      authorName: map["authorName"] ?? "",
      content: map["content"] ?? "",
      createdAt:
          DateTime.tryParse(map["createdAt"] ?? "") ?? DateTime.now(),
      likes: map["likes"] ?? 0,
      comments: map["comments"] ?? 0,
    );
  }
}
