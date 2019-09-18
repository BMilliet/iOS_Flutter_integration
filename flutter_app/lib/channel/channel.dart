import 'package:flutter/services.dart';

class Channel {
  final MethodChannel _methodChannel =
      const MethodChannel("flutter_app_channel");

  static final Channel _instance = Channel._internal();
  factory Channel() => _instance;
  Channel._internal();

  void sendMessageToIOS(String string) {
    _methodChannel.invokeMethod("sendMessageToIOS", string);
  }

  void openiOSView() {
    _methodChannel.invokeMethod("openiOSView");
  }

  void openFlutterView() {
    _methodChannel.invokeMethod("openFlutterView");
  }

  Future<String> getMessageFromIOS() async {
    try {
      return await _methodChannel.invokeMethod("getMessageFromIOS");
    } catch (error) {
      throw Exception();
    }
  }
}
