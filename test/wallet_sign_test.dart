import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_sign/wallet_sign.dart';

void main() {
  const MethodChannel channel = MethodChannel('wallet_sign');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WalletSign.platformVersion, '42');
  });
}
