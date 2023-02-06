import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/splash_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled:false,
      builder: (context) {
        return const MyApp();
      }
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home:  CustomSplashScreen(),
    );
  }
}
