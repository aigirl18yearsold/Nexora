class AIChatMessageModel {
  final String id;
  final String sender;
  final String message;
  final DateTime timestamp;

  AIChatMessageModel({
    required this.id,
    required this.sender,
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sender": sender,
      "message": message,
      "timestamp": timestamp.toIso8601String(),
    };
  }

  factory AIChatMessageModel.fromMap(Map<String, dynamic> map) {
    return AIChatMessageModel(
      id: map["id"] ?? "",
      sender: map["sender"] ?? "",
      message: map["message"] ?? "",
      timestamp: DateTime.tryParse(map["timestamp"] ?? "") ??
          DateTime.now(),
    );
  }
}
