import 'dart:async';

import 'package:flutter/services.dart';

class Tcos {
  static const MethodChannel _channel =
      const MethodChannel('tcos');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
