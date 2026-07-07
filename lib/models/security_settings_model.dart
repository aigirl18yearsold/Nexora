class SecuritySettingsModel {
  final bool biometricEnabled;
  final bool twoFactorEnabled;
  final bool appLockEnabled;
  final DateTime? lastPasswordChange;

  SecuritySettingsModel({
    required this.biometricEnabled,
    required this.twoFactorEnabled,
    required this.appLockEnabled,
    this.lastPasswordChange,
  });

  Map<String, dynamic> toMap() {
    return {
      "biometricEnabled": biometricEnabled,
      "twoFactorEnabled": twoFactorEnabled,
      "appLockEnabled": appLockEnabled,
      "lastPasswordChange":
          lastPasswordChange?.toIso8601String(),
    };
  }

  factory SecuritySettingsModel.fromMap(
      Map<String, dynamic> map) {
    return SecuritySettingsModel(
      biometricEnabled:
          map["biometricEnabled"] ?? false,
      twoFactorEnabled:
          map["twoFactorEnabled"] ?? false,
      appLockEnabled:
          map["appLockEnabled"] ?? false,
      lastPasswordChange:
          map["lastPasswordChange"] != null
              ? DateTime.parse(
                  map["lastPasswordChange"])
              : null,
    );
  }
}
