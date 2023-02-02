import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  const CustomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.only(right: 25 , top: 10),
      child:  Text(
        "بسم الله نبدأ ...",
        textDirection: TextDirection.rtl,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
