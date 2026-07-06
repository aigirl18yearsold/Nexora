class UniversityMatchModel {
  final String id;
  final String universityName;
  final String country;
  final double matchScore;
  final String admissionChance;
  final List<String> strengths;
  final List<String> improvements;

  UniversityMatchModel({
    required this.id,
    required this.universityName,
    required this.country,
    required this.matchScore,
    required this.admissionChance,
    required this.strengths,
    required this.improvements,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "universityName": universityName,
      "country": country,
      "matchScore": matchScore,
      "admissionChance": admissionChance,
      "strengths": strengths,
      "improvements": improvements,
    };
  }

  factory UniversityMatchModel.fromMap(Map<String, dynamic> map) {
    return UniversityMatchModel(
      id: map["id"] ?? "",
      universityName: map["universityName"] ?? "",
      country: map["country"] ?? "",
      matchScore: (map["matchScore"] ?? 0).toDouble(),
      admissionChance: map["admissionChance"] ?? "",
      strengths: List<String>.from(map["strengths"] ?? []),
      improvements: List<String>.from(map["improvements"] ?? []),
    );
  }
}
