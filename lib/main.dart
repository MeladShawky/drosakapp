import 'dart:io';
import 'package:drosak/app/my_app.dart';
import 'package:drosak/core/resources/routes_manger.dart';
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String routeName = await checkWhichScreen();

  runApp(MyApp(routesName: routeName));
}

Future<String> checkWhichScreen() async {
  String? androidVersion = await getAndroidVersion();
  if (androidVersion != null) {
    if (int.parse(androidVersion) >= 12) {
      return RoutesName.kSplashScreen;
    }
  }
  return RoutesName.kOnBoardingScreen;
}

Future<String?> getAndroidVersion() async {
  if (Platform.isAndroid) {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.version.release;
  }
  return null;
}
