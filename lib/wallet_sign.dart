import 'dart:async';
import 'package:flutter/services.dart';

class WalletSign {
  static const MethodChannel _channel =
      const MethodChannel('wallet_sign');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
