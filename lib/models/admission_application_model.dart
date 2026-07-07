class AdmissionApplicationModel {
  final String id;
  final String universityName;
  final String programName;
  final DateTime applicationDeadline;
  final String applicationStatus;
  final bool documentsSubmitted;

  AdmissionApplicationModel({
    required this.id,
    required this.universityName,
    required this.programName,
    required this.applicationDeadline,
    required this.applicationStatus,
    required this.documentsSubmitted,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "universityName": universityName,
      "programName": programName,
      "applicationDeadline":
          applicationDeadline.toIso8601String(),
      "applicationStatus": applicationStatus,
      "documentsSubmitted": documentsSubmitted,
    };
  }

  factory AdmissionApplicationModel.fromMap(
      Map<String, dynamic> map) {
    return AdmissionApplicationModel(
      id: map["id"] ?? "",
      universityName: map["universityName"] ?? "",
      programName: map["programName"] ?? "",
      applicationDeadline:
          DateTime.tryParse(
                map["applicationDeadline"] ?? "",
              ) ??
              DateTime.now(),
      applicationStatus:
          map["applicationStatus"] ?? "Not Started",
      documentsSubmitted:
          map["documentsSubmitted"] ?? false,
    );
  }
}
