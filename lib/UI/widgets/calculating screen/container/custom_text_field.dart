import 'package:flutter/material.dart';
import 'package:flutter/services.dart.';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText, required this.controller, required this.keyboardType,required this.filteringTextInputFormatter}) : super(key: key);
   final String hintText;
   final  TextInputType keyboardType;
  final TextEditingController controller;
  final dynamic filteringTextInputFormatter;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: <TextInputFormatter>[
        filteringTextInputFormatter,
      ],
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field is required';
        }
        return null;
      },
       decoration: InputDecoration(
         contentPadding: const EdgeInsets.all(8),
         hintText: hintText,
       ),
      controller:controller,
    );
  }
}
