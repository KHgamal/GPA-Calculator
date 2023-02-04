import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/custom_end_drawer.dart';
import 'package:gpa_calculator/UI/pages/screen3.dart';
import 'package:gpa_calculator/UI/widgets/components.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';
import 'package:gpa_calculator/UI/widgets/common/custom_text.dart';
import 'package:gpa_calculator/UI/widgets/common/second_button.dart';

class Home extends StatelessWidget {

   const Home({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: myAppBar(false,"GPA Calculator",Builder(
          builder: (context) {
            return IconButton(onPressed: (){
                    return Scaffold.of(context).openEndDrawer();
                  }, icon: Image.asset('assets/list.png'));
          }
        ),),
        endDrawer: const CustomEndDrawer(),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/calculator.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
               const Padding(
                  padding: EdgeInsets.only(left: 30.0,right:30.0 ,top:30.0 ),
                  child:Text("يلا ابدأ واحسب ال GPA ، ادعي قبل ما تبدأ و نصيحه ابعد عن المكان اللي فيه الحاج و الحاجه",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),)
              ),
              const CustomText(text: "جاهز يا بطل ؟",),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SecondButton(
                    text: 'ابدأ بالحساب',
                    onPressed: ()=>  Navigator.push(context, MaterialPageRoute(builder:(ctx)=> const Screen3()))
                    ,
                  )
              )

            ],

          ),

    ),
      );
  }
}
