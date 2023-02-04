import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/components.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Designer','ضحي محمد','Developer','خديجة جمال','رحمة أسامة','الاء نبيل'] ;
    List jobs = ['','UI/UX Designer','','Flutter Developer','Flutter Developer','Flutter Developer'] ;
    return Scaffold(
      appBar: myAppBar(true,'اعرف عننا',IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon:const Icon(Icons.arrow_forward_ios_outlined,color: customColor,) ,
      ),),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(itemBuilder: (ctx , index){
          if(index == 0 || index == 2) {
            return  Container(
                alignment: Alignment.centerLeft,
                height: 40,child: Text(names[index],style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),)
            );
          }

          return SizedBox(
            height: 80,
            child: Row(
              children: [
               const Expanded( flex: 1,
                    child: Icon(Icons.person_pin,size: 50,color:customColor)),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(names[index],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),

                        ),
                        const SizedBox(height: 3,),
                        Text('${jobs[index]}',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15,
                              fontWeight:FontWeight.bold
                          ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
            separatorBuilder: (ctx , index ){
              return const Divider(height: 3,color: Color(0xFF2470A7),);

            }, itemCount: 6),
      ),);
  }
}