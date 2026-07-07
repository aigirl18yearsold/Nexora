class ExperimentModel {
  final String id;
  final String projectId;
  final String title;
  final String objective;
  final String methodology;
  final String result;
  final DateTime conductedAt;

  ExperimentModel({
    required this.id,
    required this.projectId,
    required this.title,
    required this.objective,
    required this.methodology,
    required this.result,
    required this.conductedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "projectId": projectId,
      "title": title,
      "objective": objective,
      "methodology": methodology,
      "result": result,
      "conductedAt": conductedAt.toIso8601String(),
    };
  }

  factory ExperimentModel.fromMap(Map<String, dynamic> map) {
    return ExperimentModel(
      id: map["id"] ?? "",
      projectId: map["projectId"] ?? "",
      title: map["title"] ?? "",
      objective: map["objective"] ?? "",
      methodology: map["methodology"] ?? "",
      result: map["result"] ?? "",
      conductedAt: DateTime.tryParse(
            map["conductedAt"] ?? "",
          ) ??
          DateTime.now(),
    );
  }
}
