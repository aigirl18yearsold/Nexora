class CitationModel {
  final String id;
  final String title;
  final String authors;
  final String journal;
  final int year;
  final String doi;
  final String citationStyle;

  CitationModel({
    required this.id,
    required this.title,
    required this.authors,
    required this.journal,
    required this.year,
    required this.doi,
    required this.citationStyle,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "authors": authors,
      "journal": journal,
      "year": year,
      "doi": doi,
      "citationStyle": citationStyle,
    };
  }

  factory CitationModel.fromMap(Map<String, dynamic> map) {
    return CitationModel(
      id: map["id"] ?? "",
      title: map["title"] ?? "",
      authors: map["authors"] ?? "",
      journal: map["journal"] ?? "",
      year: map["year"] ?? 0,
      doi: map["doi"] ?? "",
      citationStyle: map["citationStyle"] ?? "APA",
    );
  }
}
