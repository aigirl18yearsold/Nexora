class ScholarshipBudgetModel {
  final String id;
  final String scholarshipName;
  final double totalAmount;
  final double receivedAmount;
  final double remainingAmount;
  final String currency;

  ScholarshipBudgetModel({
    required this.id,
    required this.scholarshipName,
    required this.totalAmount,
    required this.receivedAmount,
    required this.remainingAmount,
    required this.currency,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "scholarshipName": scholarshipName,
      "totalAmount": totalAmount,
      "receivedAmount": receivedAmount,
      "remainingAmount": remainingAmount,
      "currency": currency,
    };
  }

  factory ScholarshipBudgetModel.fromMap(
      Map<String, dynamic> map) {
    return ScholarshipBudgetModel(
      id: map["id"] ?? "",
      scholarshipName: map["scholarshipName"] ?? "",
      totalAmount: (map["totalAmount"] ?? 0).toDouble(),
      receivedAmount: (map["receivedAmount"] ?? 0).toDouble(),
      remainingAmount: (map["remainingAmount"] ?? 0).toDouble(),
      currency: map["currency"] ?? "USD",
    );
  }
}
