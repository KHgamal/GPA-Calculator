import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/components.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';

class TheList extends StatelessWidget {
  const TheList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: myAppBar(true,'اللائحة',IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon:const Icon(Icons.arrow_forward_ios_outlined,color: customColor,) ,
      ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: Image.asset('assets/img.png',),
            ),
           const Text(': ملحوظة ',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('ممكن اللايحة بتاعتنا متكونش نفس النظام المتبع عندكم في الكلية'
                  ' ، فشوف المعدل بتاعك وبعدين قارنه بلايحتك ، بالتوفيق',
                textAlign: TextAlign.right
                ,style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.9)
                ),),
            )
          ],
        ),
      ),
    );
  }
}