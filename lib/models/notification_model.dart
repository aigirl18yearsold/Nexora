class NotificationModel {
  final String id;
  final String title;
  final String body;
  final String type;
  final bool isRead;
  final DateTime createdAt;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.type,
    required this.isRead,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "body": body,
      "type": type,
      "isRead": isRead,
      "createdAt": createdAt.toIso8601String(),
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      body: map["body"] ?? "",
      type: map["type"] ?? "",
      isRead: map["isRead"] ?? false,
      createdAt: DateTime.tryParse(map["createdAt"] ?? "") ??
          DateTime.now(),
    );
  }
}
