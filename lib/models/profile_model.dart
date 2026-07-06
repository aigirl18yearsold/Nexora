class ProfileModel {
  final String id;
  final String fullName;
  final String email;
  final String country;
  final String school;
  final String educationLevel;
  final String bio;
  final List<String> interests;

  ProfileModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.country,
    required this.school,
    required this.educationLevel,
    required this.bio,
    required this.interests,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "fullName": fullName,
      "email": email,
      "country": country,
      "school": school,
      "educationLevel": educationLevel,
      "bio": bio,
      "interests": interests,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      id: map["id"] ?? "",
      fullName: map["fullName"] ?? "",
      email: map["email"] ?? "",
      country: map["country"] ?? "",
      school: map["school"] ?? "",
      educationLevel: map["educationLevel"] ?? "",
      bio: map["bio"] ?? "",
      interests: List<String>.from(map["interests"] ?? []),
    );
  }
}
