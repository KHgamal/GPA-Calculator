import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/custom_end_drawer.dart';
import 'package:gpa_calculator/UI/pages/home_screen.dart';
import 'package:gpa_calculator/UI/widgets/components.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:const Color(0xFFD3E2ED),
        appBar:myAppBar(),
        endDrawer: const CustomEndDrawer(),
        body: const Home(),
      ),
    );
  }
}
