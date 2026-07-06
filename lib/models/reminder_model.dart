class ReminderModel {
  final String id;
  final String title;
  final String description;
  final DateTime reminderTime;
  final bool isCompleted;

  ReminderModel({
    required this.id,
    required this.title,
    required this.description,
    required this.reminderTime,
    required this.isCompleted,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "reminderTime": reminderTime.toIso8601String(),
      "isCompleted": isCompleted,
    };
  }

  factory ReminderModel.fromMap(Map<String, dynamic> map) {
    return ReminderModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      description: map["description"] ?? "",
      reminderTime: DateTime.tryParse(
            map["reminderTime"] ?? "",
          ) ??
          DateTime.now(),
      isCompleted: map["isCompleted"] ?? false,
    );
  }
}
