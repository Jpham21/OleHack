import 'dart:async';

//import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignalService {
  static const MethodChannel _channel = MethodChannel('ios_data_manager');

  static Future<int> getSignalStrength() async {
    final int? signalStrength =
        await _channel.invokeMethod('getSignalStrength');
    return signalStrength ?? 0;
  }

  static Future<String> getNetworkType() async {
    final String? networkType = await _channel.invokeMethod('getNetworkType');
    return networkType ?? 'Unknown';
  }

  static Future<int> fetchSignalStrength() async {
    return await getSignalStrength();
  }

  static Future<String> fetchNetworkType() async {
    return await getNetworkType();
  }
}
