import 'package:flutter/material.dart';
 AppBar appbar=  AppBar(
  elevation :0.0,
  backgroundColor: Colors.transparent,
  leading:Image.asset('assets/calculator.png') ,
  title: const Text("GPA Calculator",style: TextStyle(color:Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold),) ,
  actions:[IconButton(onPressed: (){}, icon: Image.asset('assets/list.png'))],
);
const bgColor= Color(0xffd3e2ed);
const customColor=Color(0xff2470a7);
