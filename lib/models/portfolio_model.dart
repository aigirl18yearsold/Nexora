class PortfolioModel {
  final String id;
  final String fullName;
  final String headline;
  final String about;
  final String githubUrl;
  final String linkedinUrl;
  final String portfolioUrl;
  final List<String> projects;

  PortfolioModel({
    required this.id,
    required this.fullName,
    required this.headline,
    required this.about,
    required this.githubUrl,
    required this.linkedinUrl,
    required this.portfolioUrl,
    required this.projects,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "fullName": fullName,
      "headline": headline,
      "about": about,
      "githubUrl": githubUrl,
      "linkedinUrl": linkedinUrl,
      "portfolioUrl": portfolioUrl,
      "projects": projects,
    };
  }

  factory PortfolioModel.fromMap(Map<String, dynamic> map) {
    return PortfolioModel(
      id: map["id"] ?? "",
      fullName: map["fullName"] ?? "",
      headline: map["headline"] ?? "",
      about: map["about"] ?? "",
      githubUrl: map["githubUrl"] ?? "",
      linkedinUrl: map["linkedinUrl"] ?? "",
      portfolioUrl: map["portfolioUrl"] ?? "",
      projects: List<String>.from(map["projects"] ?? []),
    );
  }
}
