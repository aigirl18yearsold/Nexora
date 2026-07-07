class AppSettingsModel {
  final bool darkMode;
  final bool notificationsEnabled;
  final bool biometricLogin;
  final String language;
  final bool offlineMode;

  AppSettingsModel({
    required this.darkMode,
    required this.notificationsEnabled,
    required this.biometricLogin,
    required this.language,
    required this.offlineMode,
  });

  Map<String, dynamic> toMap() {
    return {
      "darkMode": darkMode,
      "notificationsEnabled": notificationsEnabled,
      "biometricLogin": biometricLogin,
      "language": language,
      "offlineMode": offlineMode,
    };
  }

  factory AppSettingsModel.fromMap(
      Map<String, dynamic> map) {
    return AppSettingsModel(
      darkMode: map["darkMode"] ?? false,
      notificationsEnabled:
          map["notificationsEnabled"] ?? true,
      biometricLogin:
          map["biometricLogin"] ?? false,
      language: map["language"] ?? "English",
      offlineMode: map["offlineMode"] ?? false,
    );
  }
}
