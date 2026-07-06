class StudentVerificationModel {
  final String id;
  final String studentId;
  final String studentName;
  final String institution;
  final String verificationStatus;
  final DateTime submittedAt;

  StudentVerificationModel({
    required this.id,
    required this.studentId,
    required this.studentName,
    required this.institution,
    required this.verificationStatus,
    required this.submittedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "studentId": studentId,
      "studentName": studentName,
      "institution": institution,
      "verificationStatus": verificationStatus,
      "submittedAt": submittedAt.toIso8601String(),
    };
  }

  factory StudentVerificationModel.fromMap(
      Map<String, dynamic> map) {
    return StudentVerificationModel(
      id: map["id"] ?? "",
      studentId: map["studentId"] ?? "",
      studentName: map["studentName"] ?? "",
      institution: map["institution"] ?? "",
      verificationStatus:
          map["verificationStatus"] ?? "Pending",
      submittedAt: DateTime.tryParse(
              map["submittedAt"] ?? "") ??
          DateTime.now(),
    );
  }
}
