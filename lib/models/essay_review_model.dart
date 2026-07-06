class EssayReviewModel {
  final String id;
  final String userId;
  final String mentorId;
  final String essayTitle;
  final String status;
  final String submittedDate;
  final double price;

  EssayReviewModel({
    required this.id,
    required this.userId,
    required this.mentorId,
    required this.essayTitle,
    required this.status,
    required this.submittedDate,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "userId": userId,
      "mentorId": mentorId,
      "essayTitle": essayTitle,
      "status": status,
      "submittedDate": submittedDate,
      "price": price,
    };
  }

  factory EssayReviewModel.fromMap(Map<String, dynamic> map) {
    return EssayReviewModel(
      id: map["id"] ?? "",
      userId: map["userId"] ?? "",
      mentorId: map["mentorId"] ?? "",
      essayTitle: map["essayTitle"] ?? "",
      status: map["status"] ?? "Pending",
      submittedDate: map["submittedDate"] ?? "",
      price: (map["price"] ?? 0).toDouble(),
    );
  }
}
