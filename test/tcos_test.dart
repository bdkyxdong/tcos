import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tcos/tcos.dart';

void main() {
  const MethodChannel channel = MethodChannel('tcos');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Tcos.platformVersion, '42');
  });
}
