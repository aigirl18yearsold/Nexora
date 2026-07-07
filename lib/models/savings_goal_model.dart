class SavingsGoalModel {
  final String id;
  final String goalName;
  final double targetAmount;
  final double savedAmount;
  final DateTime targetDate;

  SavingsGoalModel({
    required this.id,
    required this.goalName,
    required this.targetAmount,
    required this.savedAmount,
    required this.targetDate,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "goalName": goalName,
      "targetAmount": targetAmount,
      "savedAmount": savedAmount,
      "targetDate": targetDate.toIso8601String(),
    };
  }

  factory SavingsGoalModel.fromMap(
      Map<String, dynamic> map) {
    return SavingsGoalModel(
      id: map["id"] ?? "",
      goalName: map["goalName"] ?? "",
      targetAmount:
          (map["targetAmount"] ?? 0).toDouble(),
      savedAmount:
          (map["savedAmount"] ?? 0).toDouble(),
      targetDate: DateTime.tryParse(
            map["targetDate"] ?? "",
          ) ??
          DateTime.now(),
    );
  }
}
