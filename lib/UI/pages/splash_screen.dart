import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/home_screen.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';
class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // duration: for the screen appearance duration
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/calculator.png',),
          const Padding(
            padding:EdgeInsets.all(8.0),
            child: Text("GPA Calculator",style: TextStyle(fontSize: 25, color: customColor,
                fontWeight: FontWeight.bold),),
          ),
        ],
      ),
      nextScreen: const Home(),
      splashIconSize: 400,
     splashTransition: SplashTransition.fadeTransition,
      //for the fadeTransition ( splashTransition ) duration
      animationDuration: const Duration(seconds: 2),
      backgroundColor: bgColor,
    );
  }
}
