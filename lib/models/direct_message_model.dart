class DirectMessageModel {
  final String id;
  final String senderId;
  final String receiverId;
  final String message;
  final DateTime sentAt;
  final bool isRead;

  DirectMessageModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.sentAt,
    required this.isRead,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "senderId": senderId,
      "receiverId": receiverId,
      "message": message,
      "sentAt": sentAt.toIso8601String(),
      "isRead": isRead,
    };
  }

  factory DirectMessageModel.fromMap(Map<String, dynamic> map) {
    return DirectMessageModel(
      id: map["id"] ?? "",
      senderId: map["senderId"] ?? "",
      receiverId: map["receiverId"] ?? "",
      message: map["message"] ?? "",
      sentAt:
          DateTime.tryParse(map["sentAt"] ?? "") ?? DateTime.now(),
      isRead: map["isRead"] ?? false,
    );
  }
}
