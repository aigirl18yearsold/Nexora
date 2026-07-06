class OrganizationModel {
  final String id;
  final String name;
  final String logoUrl;
  final String website;
  final String description;
  final bool verified;

  OrganizationModel({
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.website,
    required this.description,
    required this.verified,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "logoUrl": logoUrl,
      "website": website,
      "description": description,
      "verified": verified,
    };
  }

  factory OrganizationModel.fromMap(Map<String, dynamic> map) {
    return OrganizationModel(
      id: map["id"] ?? "",
      name: map["name"] ?? "",
      logoUrl: map["logoUrl"] ?? "",
      website: map["website"] ?? "",
      description: map["description"] ?? "",
      verified: map["verified"] ?? false,
    );
  }
}
