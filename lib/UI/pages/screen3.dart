import 'package:flutter/material.dart';
import 'package:flutter/services.dart.';
import 'package:gpa_calculator/UI/model.dart';
import 'package:gpa_calculator/UI/pages/custom_end_drawer.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/container/custom_text_field.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/container/informations.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/container/table.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/dialog/alert_dialog.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/container/box.dart';
import 'package:gpa_calculator/UI/widgets/components.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/container/custom_button.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/container/drop_down_button.dart';
import 'package:gpa_calculator/UI/widgets/common/second_button.dart';

import '../widgets/constants.dart';
import '../widgets/common/custom_text.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {List<TableC> list = [];
TextEditingController courseName = TextEditingController();
TextEditingController hours = TextEditingController();
final formKey = GlobalKey<FormState>();
int? selectedIndex;
bool edit=false;
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const CustomText(
            text: "بسم الله نبدأ ...",
          ),
          ContainerOfTables(
            child: Form(
              key:formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 !edit?
                 Column(children: [
                   TableElements(
                   element1: CustomTextField(
                     filteringTextInputFormatter: FilteringTextInputFormatter.allow(RegExp("[a-z A-Z 0-9 \u0621-\u064A0-9 ]")),
                     keyboardType:TextInputType.text,
                     hintText: 'Name of course',
                     controller: courseName,
                   ),
                   element2: const DropDown(
                     initialText: "Your GPA",
                     list: [
                       "A+",
                       "A",
                       "A-",
                       "B+",
                       "B",
                       "B-",
                       "C+",
                       "C",
                       "C-",
                       "D+",
                       "D",
                       "F"
                     ],
                   ),
                   element3:  CustomTextField(
                     filteringTextInputFormatter:FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                     keyboardType: TextInputType.number,
                     hintText: 'Hours of subjects',
                     controller: hours,
                   ),
                 ),
                   list.isEmpty?const SizedBox():
                 ListView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     scrollDirection: Axis.vertical,
                     shrinkWrap: true,
                     itemCount: list.length,
                     itemBuilder: (BuildContext context, int index) {
                       return TableElements(
                         element1:SizedBox(
                           height: 50,
                           child: Row(
                             children: [
                               const SizedBox(
                                 width: 10,
                               ),
                               Text(
                                 list[index].courseName,
                                 style: const TextStyle(
                                     fontSize: 25,
                                     fontWeight: FontWeight.w400),
                               ),
                               const Expanded(child:  SizedBox()),
                               IconButton(
                                 onPressed:()=>editingCourse(index) ,
                                 icon: const Icon(
                                   Icons.edit,
                                   size: 25,
                                   color: customColor,
                                 ),
                               ),
                               const SizedBox(
                                 width: 8,
                               ),
                               IconButton(
                                   icon: const Icon(
                                     Icons.delete,
                                     size: 25,
                                     color: Colors.red,
                                   ),
                                   onPressed: ()=>deletingCourse(index)
                               )
                             ],
                           ),
                         ) ,
                         element2:Information(text:list[index].gpa),
                         element3:Information(text:list[index].hours),
                       );
                     })],)
                     : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return selectedIndex==index?  TableElements(
                          element1: CustomTextField(
                            filteringTextInputFormatter: FilteringTextInputFormatter.allow(RegExp("[a-z A-Z 0-9 \u0621-\u064A0-9 ]")),
                            keyboardType:TextInputType.text,
                            hintText: 'Name of course',
                            controller: courseName,
                          ),
                          element2: const DropDown(
                            initialText: "Your GPA",
                            list: [
                              "A+",
                              "A",
                              "A-",
                              "B+",
                              "B",
                              "B-",
                              "C+",
                              "C",
                              "C-",
                              "D+",
                              "D",
                              "F"
                            ],
                          ),
                          element3:  CustomTextField(
                            filteringTextInputFormatter:FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            keyboardType: TextInputType.number,
                            hintText: 'Hours of subjects',
                            controller: hours,
                          ),
                        ) : TableElements(
                          element1:SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  list[index].courseName,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Expanded(child:  SizedBox()),
                                IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    onPressed: ()=>deletingCourse(index)
                                )
                              ],
                            ),
                          ) ,
                          element2:Information(text:list[index].gpa),
                          element3:Information(text:list[index].hours),
                        );
                      }),
                  CustomButton(onPressed: (){
                    if(formKey.currentState!.validate()) {
                      addingCourse();
                    }},),
                ],
              ),
            ),
          ),
          !edit? SecondButton(
            text: 'احسب',
            onPressed: () {
              if(list.isEmpty){
                if(formKey.currentState!.validate()&&list.isNotEmpty) {
                  displayDialog(context,list);
                }
              }
              else{
                displayDialog(context,list);
              }

            } ,
          ) :const SizedBox()
        ]),
      ),
    );

  }

  addingCourse() {
    setState(() {
      if(edit)list.removeAt(selectedIndex!);
      edit=false;
      double? value;
      if(DropDown.selectedItem=='A'||DropDown.selectedItem=='A+') {
        value=4.0;
      }
      else if(DropDown.selectedItem=='A-') {
        value=3.7;
      }
      else if(DropDown.selectedItem=='B+') {
        value=3.3;
      }
      else if(DropDown.selectedItem=='B') {
        value=3.0;
      }
      else if(DropDown.selectedItem=='B-') {
        value=2.7;
      }
      else if(DropDown.selectedItem=='C+') {
        value=2.3;
      }
      else if(DropDown.selectedItem=='C') {
        value=2.0;
      }
      else if(DropDown.selectedItem=='C-') {
        value=1.7;
      }
      else if(DropDown.selectedItem=='D+') {
        value=1.3;
      }
      else if(DropDown.selectedItem=='D') {
        value=1.0;
      }
      else if(DropDown.selectedItem=='F') {
        value=0.0;
      }
      list.add(TableC(courseName.text,DropDown.selectedItem! , hours.text,value!));
      courseName.clear();
      hours.clear();

    });
  }

deletingCourse(int index){
  setState(() {
    list.remove(list[index]);
  });
}

editingCourse(int index){
  setState(() {
    edit=true;
    selectedIndex=index;
    courseName.text=list[index].courseName;
    hours.text=list[index].hours;
    DropDown.selectedItem=list[index].gpa;
  });

}

}
