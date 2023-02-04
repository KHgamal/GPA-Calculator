import 'package:flutter/material.dart';
class Information extends StatelessWidget {
  const Information({Key? key, required this.text}) : super(key: key);
   final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(text, style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300),)));
  }
}
