class BackupRestoreModel {
  final DateTime? lastBackup;
  final bool autoBackupEnabled;
  final String backupLocation;
  final bool offlineModeEnabled;

  BackupRestoreModel({
    this.lastBackup,
    required this.autoBackupEnabled,
    required this.backupLocation,
    required this.offlineModeEnabled,
  });

  Map<String, dynamic> toMap() {
    return {
      "lastBackup": lastBackup?.toIso8601String(),
      "autoBackupEnabled": autoBackupEnabled,
      "backupLocation": backupLocation,
      "offlineModeEnabled": offlineModeEnabled,
    };
  }

  factory BackupRestoreModel.fromMap(
      Map<String, dynamic> map) {
    return BackupRestoreModel(
      lastBackup: map["lastBackup"] != null
          ? DateTime.parse(map["lastBackup"])
          : null,
      autoBackupEnabled:
          map["autoBackupEnabled"] ?? false,
      backupLocation:
          map["backupLocation"] ?? "Cloud",
      offlineModeEnabled:
          map["offlineModeEnabled"] ?? false,
    );
  }
}
