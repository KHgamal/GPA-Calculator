import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/screen3.dart';
import 'package:gpa_calculator/UI/widgets/custom_text.dart';
import 'package:gpa_calculator/UI/widgets/second_button.dart';

class Home extends StatelessWidget {

   const Home({Key? key}) : super(key: key);

 // final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return
      Center(
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
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return const Screen3();
                    }));
                  },
                  child: SecondButton(
                    text: 'ابدأ بالحساب',
                    onPressed: ()=>  Navigator.push(context, MaterialPageRoute(builder:(ctx)=> const Screen3()))
                    ,
                  )
                  // onTap: Navigator.push(context, MaterialPageRoute(builder:(ctx)=>Screen2()));
                )
            )

          ],

        ),

    );
  }
}
