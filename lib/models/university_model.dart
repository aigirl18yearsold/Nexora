class UniversityModel {
  final String id;
  final String name;
  final String country;
  final String ranking;
  final String website;
  final List<String> programs;

  UniversityModel({
    required this.id,
    required this.name,
    required this.country,
    required this.ranking,
    required this.website,
    required this.programs,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "country": country,
      "ranking": ranking,
      "website": website,
      "programs": programs,
    };
  }

  factory UniversityModel.fromMap(Map<String, dynamic> map) {
    return UniversityModel(
      id: map["id"] ?? "",
      name: map["name"] ?? "",
      country: map["country"] ?? "",
      ranking: map["ranking"] ?? "",
      website: map["website"] ?? "",
      programs: List<String>.from(map["programs"] ?? []),
    );
  }
}
