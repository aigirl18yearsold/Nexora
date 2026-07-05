class UserModel {
  final String id;
  final String fullName;
  final String email;
  final String country;
  final String educationLevel;
  final String interestedField;
  final bool premiumUser;

  UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.country,
    required this.educationLevel,
    required this.interestedField,
    required this.premiumUser,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "fullName": fullName,
      "email": email,
      "country": country,
      "educationLevel": educationLevel,
      "interestedField": interestedField,
      "premiumUser": premiumUser,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map["id"] ?? "",
      fullName: map["fullName"] ?? "",
      email: map["email"] ?? "",
      country: map["country"] ?? "",
      educationLevel: map["educationLevel"] ?? "",
      interestedField: map["interestedField"] ?? "",
      premiumUser: map["premiumUser"] ?? false,
    );
  }
}
