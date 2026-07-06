class MentorModel {
  final String id;
  final String name;
  final String profession;
  final String university;
  final String country;
  final double rating;
  final int reviewCount;
  final String bio;
  final List<String> expertise;
  final bool available;

  MentorModel({
    required this.id,
    required this.name,
    required this.profession,
    required this.university,
    required this.country,
    required this.rating,
    required this.reviewCount,
    required this.bio,
    required this.expertise,
    required this.available,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "profession": profession,
      "university": university,
      "country": country,
      "rating": rating,
      "reviewCount": reviewCount,
      "bio": bio,
      "expertise": expertise,
      "available": available,
    };
  }

  factory MentorModel.fromMap(Map<String, dynamic> map) {
    return MentorModel(
      id: map["id"] ?? "",
      name: map["name"] ?? "",
      profession: map["profession"] ?? "",
      university: map["university"] ?? "",
      country: map["country"] ?? "",
      rating: (map["rating"] ?? 0).toDouble(),
      reviewCount: map["reviewCount"] ?? 0,
      bio: map["bio"] ?? "",
      expertise: List<String>.from(map["expertise"] ?? []),
      available: map["available"] ?? false,
    );
  }
}
