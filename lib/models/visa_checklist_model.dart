class VisaChecklistModel {
  final String id;
  final String country;
  final List<String> requiredDocuments;
  final bool passportReady;
  final bool visaApplicationSubmitted;
  final bool interviewCompleted;

  VisaChecklistModel({
    required this.id,
    required this.country,
    required this.requiredDocuments,
    required this.passportReady,
    required this.visaApplicationSubmitted,
    required this.interviewCompleted,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "country": country,
      "requiredDocuments": requiredDocuments,
      "passportReady": passportReady,
      "visaApplicationSubmitted": visaApplicationSubmitted,
      "interviewCompleted": interviewCompleted,
    };
  }

  factory VisaChecklistModel.fromMap(
      Map<String, dynamic> map) {
    return VisaChecklistModel(
      id: map["id"] ?? "",
      country: map["country"] ?? "",
      requiredDocuments:
          List<String>.from(map["requiredDocuments"] ?? []),
      passportReady: map["passportReady"] ?? false,
      visaApplicationSubmitted:
          map["visaApplicationSubmitted"] ?? false,
      interviewCompleted:
          map["interviewCompleted"] ?? false,
    );
  }
}
