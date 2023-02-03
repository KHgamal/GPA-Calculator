import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/custom_end_drawer.dart';
import 'package:gpa_calculator/UI/widgets/components.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';

class TheList extends StatelessWidget {
  const TheList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: myAppBar(),
      endDrawer:const CustomEndDrawer(),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(": ملحوظة",
            style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 18,
              color: Colors.black.withOpacity(0.9)
          ), ),
          Text(' ممكن اللايحة بتاعتنا متكونش نفس النظام المتبع عندكم في الكلية ، فشوف المعدل بتاعك وبعدين قارنه بلايحتك ، بالتوفيق . ',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.9)
            ),),
          Image.asset('assets/img.png'),
        ],
      ),
    );
  }
}