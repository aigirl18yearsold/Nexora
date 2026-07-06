class OpportunityModel {
  final String id;
  final String title;
  final String organization;
  final String category;
  final String location;
  final String deadline;
  final String description;
  final String imageUrl;
  final bool isBookmarked;

  OpportunityModel({
    required this.id,
    required this.title,
    required this.organization,
    required this.category,
    required this.location,
    required this.deadline,
    required this.description,
    required this.imageUrl,
    this.isBookmarked = false,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "organization": organization,
      "category": category,
      "location": location,
      "deadline": deadline,
      "description": description,
      "imageUrl": imageUrl,
      "isBookmarked": isBookmarked,
    };
  }

  factory OpportunityModel.fromMap(Map<String, dynamic> map) {
    return OpportunityModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      organization: map["organization"] ?? "",
      category: map["category"] ?? "",
      location: map["location"] ?? "",
      deadline: map["deadline"] ?? "",
      description: map["description"] ?? "",
      imageUrl: map["imageUrl"] ?? "",
      isBookmarked: map["isBookmarked"] ?? false,
    );
  }
}
