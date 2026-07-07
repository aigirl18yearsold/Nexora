class ResumeModel {
  final String id;
  final String fullName;
  final String email;
  final String phone;
  final String education;
  final String experience;
  final List<String> skills;

  ResumeModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.education,
    required this.experience,
    required this.skills,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "fullName": fullName,
      "email": email,
      "phone": phone,
      "education": education,
      "experience": experience,
      "skills": skills,
    };
  }

  factory ResumeModel.fromMap(Map<String, dynamic> map) {
    return ResumeModel(
      id: map["id"] ?? "",
      fullName: map["fullName"] ?? "",
      email: map["email"] ?? "",
      phone: map["phone"] ?? "",
      education: map["education"] ?? "",
      experience: map["experience"] ?? "",
      skills: List<String>.from(map["skills"] ?? []),
    );
  }
}
