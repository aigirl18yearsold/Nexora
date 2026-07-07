class AccessibilitySettingsModel {
  final double fontScale;
  final bool highContrast;
  final bool screenReaderSupport;
  final bool reduceAnimations;
  final bool voiceNavigation;

  AccessibilitySettingsModel({
    required this.fontScale,
    required this.highContrast,
    required this.screenReaderSupport,
    required this.reduceAnimations,
    required this.voiceNavigation,
  });

  Map<String, dynamic> toMap() {
    return {
      "fontScale": fontScale,
      "highContrast": highContrast,
      "screenReaderSupport": screenReaderSupport,
      "reduceAnimations": reduceAnimations,
      "voiceNavigation": voiceNavigation,
    };
  }

  factory AccessibilitySettingsModel.fromMap(
      Map<String, dynamic> map) {
    return AccessibilitySettingsModel(
      fontScale: (map["fontScale"] ?? 1.0).toDouble(),
      highContrast: map["highContrast"] ?? false,
      screenReaderSupport:
          map["screenReaderSupport"] ?? false,
      reduceAnimations:
          map["reduceAnimations"] ?? false,
      voiceNavigation:
          map["voiceNavigation"] ?? false,
    );
  }
}
