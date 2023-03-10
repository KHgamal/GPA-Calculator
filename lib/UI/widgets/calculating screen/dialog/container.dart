import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';
class Content extends StatelessWidget {
  const Content({Key? key, required this.result}) : super(key: key);
  final double result;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.all(10),
      decoration: const  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children:[
          Row(
            children: [
              IconButton(icon: Image.asset("assets/exit.png",width: 40, height: 40,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Center(
            child:result<2.0? const Text("احنا اسفين" , textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Color(0xffF67F7F)),
            ):
            const Text("عااش" , textDirection: TextDirection.rtl,style:
           TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Color(0xff0D883E)),),

          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child:result<2.0? const Text("معلش ، ربنا يعوضك ان شاء الله وخيرها في غيرها ، استعن بالله ولا تعجز . " ,
              textDirection: TextDirection.rtl,style:TextStyle(fontSize: 20, )):
            const Text(".ماشاء الله ، ربنا يبارك ، روح فرح الحاج والحاجة بقا وادعيلنا" ,
              textDirection: TextDirection.rtl,style:TextStyle(fontSize: 20, )),

          ),
          const Center(
            child:  Text("Your GPA is" ,style:
            TextStyle(fontSize: 25, fontWeight: FontWeight.w400, ),),
          ),
           Center(
            child: Text(result.toStringAsFixed(3),style:const TextStyle(fontSize: 50, color: customColor,
               ),),
          ),
        ],

    ),
    );
  }
}
