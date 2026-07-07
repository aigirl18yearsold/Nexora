class ApplicationTimelineModel {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final bool completed;

  ApplicationTimelineModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.completed,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "dueDate": dueDate.toIso8601String(),
      "completed": completed,
    };
  }

  factory ApplicationTimelineModel.fromMap(
      Map<String, dynamic> map) {
    return ApplicationTimelineModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      description: map["description"] ?? "",
      dueDate: DateTime.tryParse(
            map["dueDate"] ?? "",
          ) ??
          DateTime.now(),
      completed: map["completed"] ?? false,
    );
  }
}
