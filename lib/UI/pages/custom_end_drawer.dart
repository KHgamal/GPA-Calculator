import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/pages/about_us.dart';
import 'package:gpa_calculator/UI/pages/thelist.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';
class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Drawer(
              backgroundColor: bgColor,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: [
                    const ListTile(
                      title: Center(
                        child: Text('القائمة',
                          style: TextStyle(
                              color: Color(0xFF145885),
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                    const Divider(thickness: 1, color: Color(0xFF145885)),
                    ListTile(
                            title: listTileTitle(
                                text: "اللائحة",
                                icon: Icons.calendar_today
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const TheList();
                                  }));

                              // setState(() {
                              //
                              // });

                              // Update the state of the app.
                              // ...
                            },
                          ),
                    ListTile(
                            title: listTileTitle(
                                text: "مشاركة",
                                icon: Icons.share
                            ),
                            onTap: () {

                            },
                          ),
                    ListTile(
                            title: listTileTitle(
                                text: "اعرف عننا",
                                icon: Icons.call_outlined
                            ),
                            onTap: () {
                              // title = "اعرف عننا";
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const AboutUs();
                                  }));

                              // setState(() {
                              //
                              // });

                            },
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
                      return IconButton(icon: const Icon(
                        Icons.arrow_forward_ios, color: Color(0xFF145885),),
                        onPressed: () {
                          Navigator.pop(context);
                        },

                      );
                    }
                ),
              )
          )
        ],
      ),
    );
  }

}
Widget listTileTitle ({
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
}
