import 'package:flutter/foundation.dart';

class LiveActivityService {
  Future<void> startListening() async {
    debugPrint("Started listening for live updates");
  }

  Future<void> stopListening() async {
    debugPrint("Stopped listening");
  }

  Future<void> refreshFeed() async {
    debugPrint("Refreshing activity feed");
  }
}
