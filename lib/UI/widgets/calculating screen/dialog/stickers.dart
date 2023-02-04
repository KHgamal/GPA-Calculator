import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';
class Sticker extends StatelessWidget {
  const Sticker({Key? key, required this.result}) : super(key: key);
   final double result;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CircleAvatar(
       backgroundColor: customColor ,
        radius:25,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius:23,
          child:result<2.0?Image.asset("assets/sad.png"):
          Image.asset("assets/happy.png",),
        ),
      ),
    );
  }
}
