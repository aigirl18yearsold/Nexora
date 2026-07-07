class CareerRoadmapModel {
  final String id;
  final String careerGoal;
  final List<String> milestones;
  final int completionPercentage;

  CareerRoadmapModel({
    required this.id,
    required this.careerGoal,
    required this.milestones,
    required this.completionPercentage,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "careerGoal": careerGoal,
      "milestones": milestones,
      "completionPercentage": completionPercentage,
    };
  }

  factory CareerRoadmapModel.fromMap(Map<String, dynamic> map) {
    return CareerRoadmapModel(
      id: map["id"] ?? "",
      careerGoal: map["careerGoal"] ?? "",
      milestones: List<String>.from(map["milestones"] ?? []),
      completionPercentage: map["completionPercentage"] ?? 0,
    );
  }
}
