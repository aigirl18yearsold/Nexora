class StudyPlanModel {
  final String id;
  final String subject;
  final String task;
  final String date;
  final bool completed;

  StudyPlanModel({
    required this.id,
    required this.subject,
    required this.task,
    required this.date,
    required this.completed,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "subject": subject,
      "task": task,
      "date": date,
      "completed": completed,
    };
  }

  factory StudyPlanModel.fromMap(Map<String, dynamic> map) {
    return StudyPlanModel(
      id: map["id"] ?? "",
      subject: map["subject"] ?? "",
      task: map["task"] ?? "",
      date: map["date"] ?? "",
      completed: map["completed"] ?? false,
    );
  }
}
