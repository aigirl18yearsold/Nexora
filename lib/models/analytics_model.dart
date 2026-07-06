class AnalyticsModel {
  final int totalOpportunities;
  final int totalApplications;
  final int totalStudents;
  final int acceptedApplications;
  final int rejectedApplications;

  AnalyticsModel({
    required this.totalOpportunities,
    required this.totalApplications,
    required this.totalStudents,
    required this.acceptedApplications,
    required this.rejectedApplications,
  });

  Map<String, dynamic> toMap() {
    return {
      "totalOpportunities": totalOpportunities,
      "totalApplications": totalApplications,
      "totalStudents": totalStudents,
      "acceptedApplications": acceptedApplications,
      "rejectedApplications": rejectedApplications,
    };
  }

  factory AnalyticsModel.fromMap(Map<String, dynamic> map) {
    return AnalyticsModel(
      totalOpportunities: map["totalOpportunities"] ?? 0,
      totalApplications: map["totalApplications"] ?? 0,
      totalStudents: map["totalStudents"] ?? 0,
      acceptedApplications: map["acceptedApplications"] ?? 0,
      rejectedApplications: map["rejectedApplications"] ?? 0,
    );
  }
}
