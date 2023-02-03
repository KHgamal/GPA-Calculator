import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/thelist.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';

import '../pages/about_us.dart';

//appbar
AppBar myAppBar(
    ){
  return AppBar(
    backgroundColor: bgColor,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('assets/calculator.png'),
    ),
    title: const Text("GPA Calculator",
      style: TextStyle(
          color: Colors.black
      ),
    ),
    actions: [
      Builder(
          builder: (context) {
            return IconButton(onPressed: (){
              return Scaffold.of(context).openEndDrawer();
            }, icon: Image.asset('assets/list.png'));
          }
      )
    ],
  );
}

//calculationButton
/*
Widget calculationButton(
{
  required String text,
  double width=180,
  double height=40,
  double radius = 20,
}
    ){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: customColor,
    ),
    alignment: Alignment.center,
    height: height,
    width: width,

    child: Text(
      text,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
*/

//بسم الله نبدأ ...
/*Widget headingText({String text ="بسم الله نبدأ ...",})
{
  return  Text(
  text,
    textDirection: TextDirection.rtl,
    style: TextStyle(
fontSize: 28,
color: Colors.black.withOpacity(.7),
fontWeight: FontWeight.bold,
),

);
}*/

/*Widget secondaryText({required String text, required Color color,}) {
  return Text(
    text,
    textDirection: TextDirection.rtl,
    style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: color
    ),
  );
}*/

/*Widget listTileTitle ({
  required String text,
  required IconData icon
}
    ){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(text,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF145885),
          fontWeight: FontWeight.bold,
        ),
      ),
     const SizedBox(width: 8,),
      Icon(icon,
        color:const Color(0xFF145885),
        size: 18,
      ),

    ],
  );
}*/

/*Widget customEndDrawer (){
  return SafeArea(
    child: Row(

      children: [

        Expanded(
          flex: 3,
          child: Drawer(

            backgroundColor:bgColor,
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                 const ListTile(
                    title : Center(
                      child: Text('القائمة',
                        style: TextStyle(
                            color: Color(0xFF145885),
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                 const Divider(thickness: 1,color: Color(0xFF145885)),
                  Builder(
                      builder: (context) {
                        return ListTile(
                          title:  listTileTitle(
                              text: "اللائحة" ,
                              icon: Icons.calendar_today
                          ),
                          onTap: () {

                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                               return const TheList();
                                 }));

                            // setState(() {
                            //
                            // });

                            // Update the state of the app.
                            // ...
                          },
                        );
                      }
                  ),
                  Builder(
                      builder: (context) {
                        return ListTile(
                          title:  listTileTitle(
                              text: "مشاركة" ,
                              icon: Icons.share
                          ),
                          onTap: () {

                          },
                        );
                      }
                  ),
                  Builder(
                      builder: (context) {
                        return ListTile(
                          title:  listTileTitle(
                              text: "اعرف عننا" ,
                              icon: Icons.call_outlined
                          ),
                          onTap: () {
                            // title = "اعرف عننا";
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                              return const AboutUs();
                            }));

                            // setState(() {
                            //
                            // });

                          },
                        );
                      }
                  ),
                  // Builder(
                  //   builder: (context) {
                  //     return ListTile(
                  //       title:  listTileTitle(
                  //           text: "الشاشة الرئيسية" ,
                  //           icon: Icons.home
                  //       ),
                  //       onTap: () {
                  //         title="الشاشة الرئيسية";
                  //         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  //           return Home();
                  //         }));
                  //
                  //       },
                  //     );
                  //   }
                  // ),

                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              height: double.infinity,
              color: Colors.white,
              child: Builder(
                  builder: (context) {
                    return IconButton(icon : const Icon(Icons.arrow_forward_ios , color: Color(0xFF145885),),onPressed:(){
                      Navigator.pop(context);
                    } ,

                    );
                  }
              ),
            )
        )
      ],
    ),
  );
}*/