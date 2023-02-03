import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  const EdgeInsets.only(right: 25 , top: 10),
      child: Text(
        text,
        textDirection: TextDirection.rtl,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
