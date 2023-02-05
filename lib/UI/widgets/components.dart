import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';


//appbar
AppBar myAppBar(bool centerTitle,String text ,Widget action ){
  return AppBar(
    backgroundColor: bgColor,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('assets/calculator.png'),
    ),
    centerTitle: centerTitle,
    title:Text(text,
      style: const TextStyle(
          color: Colors.black
      ),
    ),
    actions: [action],
  );
}
