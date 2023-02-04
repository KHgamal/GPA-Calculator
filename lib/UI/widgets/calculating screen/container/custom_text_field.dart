import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText, required this.controller}) : super(key: key);
   final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
       decoration: InputDecoration(
         contentPadding: const EdgeInsets.all(8),
         hintText: hintText,
       ),
      controller:controller,
    );
  }
}
