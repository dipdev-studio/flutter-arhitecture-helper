import 'dart:async';

import 'package:flutter/services.dart';

class FlutterArhitectureHelper {
  static const MethodChannel _channel =
      const MethodChannel('flutter_arhitecture_helper');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
