class EducationLoanModel {
  final String id;
  final double loanAmount;
  final double interestRate;
  final int repaymentYears;
  final double monthlyPayment;
  final String lenderName;

  EducationLoanModel({
    required this.id,
    required this.loanAmount,
    required this.interestRate,
    required this.repaymentYears,
    required this.monthlyPayment,
    required this.lenderName,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "loanAmount": loanAmount,
      "interestRate": interestRate,
      "repaymentYears": repaymentYears,
      "monthlyPayment": monthlyPayment,
      "lenderName": lenderName,
    };
  }

  factory EducationLoanModel.fromMap(
      Map<String, dynamic> map) {
    return EducationLoanModel(
      id: map["id"] ?? "",
      loanAmount: (map["loanAmount"] ?? 0).toDouble(),
      interestRate: (map["interestRate"] ?? 0).toDouble(),
      repaymentYears: map["repaymentYears"] ?? 0,
      monthlyPayment: (map["monthlyPayment"] ?? 0).toDouble(),
      lenderName: map["lenderName"] ?? "",
    );
  }
}
