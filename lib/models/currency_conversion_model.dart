class CurrencyConversionModel {
  final String baseCurrency;
  final String targetCurrency;
  final double exchangeRate;
  final double amount;
  final double convertedAmount;

  CurrencyConversionModel({
    required this.baseCurrency,
    required this.targetCurrency,
    required this.exchangeRate,
    required this.amount,
    required this.convertedAmount,
  });

  Map<String, dynamic> toMap() {
    return {
      "baseCurrency": baseCurrency,
      "targetCurrency": targetCurrency,
      "exchangeRate": exchangeRate,
      "amount": amount,
      "convertedAmount": convertedAmount,
    };
  }

  factory CurrencyConversionModel.fromMap(
      Map<String, dynamic> map) {
    return CurrencyConversionModel(
      baseCurrency: map["baseCurrency"] ?? "BDT",
      targetCurrency: map["targetCurrency"] ?? "USD",
      exchangeRate: (map["exchangeRate"] ?? 0).toDouble(),
      amount: (map["amount"] ?? 0).toDouble(),
      convertedAmount:
          (map["convertedAmount"] ?? 0).toDouble(),
    );
  }
}
