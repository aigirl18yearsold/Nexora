class PrivacySettingsModel {
  final bool profileVisible;
  final bool showEmail;
  final bool showPhoneNumber;
  final bool allowMentorMessages;
  final bool analyticsEnabled;

  PrivacySettingsModel({
    required this.profileVisible,
    required this.showEmail,
    required this.showPhoneNumber,
    required this.allowMentorMessages,
    required this.analyticsEnabled,
  });

  Map<String, dynamic> toMap() {
    return {
      "profileVisible": profileVisible,
      "showEmail": showEmail,
      "showPhoneNumber": showPhoneNumber,
      "allowMentorMessages": allowMentorMessages,
      "analyticsEnabled": analyticsEnabled,
    };
  }

  factory PrivacySettingsModel.fromMap(
      Map<String, dynamic> map) {
    return PrivacySettingsModel(
      profileVisible:
          map["profileVisible"] ?? true,
      showEmail:
          map["showEmail"] ?? false,
      showPhoneNumber:
          map["showPhoneNumber"] ?? false,
      allowMentorMessages:
          map["allowMentorMessages"] ?? true,
      analyticsEnabled:
          map["analyticsEnabled"] ?? true,
    );
  }
}
