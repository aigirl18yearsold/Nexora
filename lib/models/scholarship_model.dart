class ScholarshipModel {
  final String id;
  final String title;
  final String provider;
  final String country;
  final String degreeLevel;
  final DateTime applicationDeadline;
  final bool isFullyFunded;

  ScholarshipModel({
    required this.id,
    required this.title,
    required this.provider,
    required this.country,
    required this.degreeLevel,
    required this.applicationDeadline,
    required this.isFullyFunded,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "provider": provider,
      "country": country,
      "degreeLevel": degreeLevel,
      "applicationDeadline":
          applicationDeadline.toIso8601String(),
      "isFullyFunded": isFullyFunded,
    };
  }

  factory ScholarshipModel.fromMap(
      Map<String, dynamic> map) {
    return ScholarshipModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      provider: map["provider"] ?? "",
      country: map["country"] ?? "",
      degreeLevel: map["degreeLevel"] ?? "",
      applicationDeadline:
          DateTime.tryParse(
                map["applicationDeadline"] ?? "",
              ) ??
              DateTime.now(),
      isFullyFunded:
          map["isFullyFunded"] ?? false,
    );
  }
}
