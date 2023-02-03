
import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/model.dart';
import 'package:gpa_calculator/UI/pages/custom_end_drawer.dart';
import 'package:gpa_calculator/UI/widgets/alert_dialog.dart';
import 'package:gpa_calculator/UI/widgets/components.dart';
import 'package:gpa_calculator/UI/widgets/custom_button.dart';
import 'package:gpa_calculator/UI/widgets/drop_down_button.dart';
import 'package:gpa_calculator/UI/widgets/second_button.dart';

import '../widgets/constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_field.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    List<TableC> list = [];
    TextEditingController courseName = TextEditingController();
    TextEditingController hours = TextEditingController();
    addingCourse() {
      setState(() {
        list.add(TableC(courseName.text,DropDown.selectedItem! , hours.text));
        print(list[0].gpa+list[0].hours+list[0].courseName+'\n');
        print(list.length);
        courseName.clear();
        hours.clear();
      });
    }

    return Scaffold(
      backgroundColor: bgColor,
      appBar: myAppBar(),
      endDrawer: const CustomEndDrawer(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const CustomText(
            text: "بسم الله نبدأ ...",
          ),
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                list.isEmpty?
            Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Table(
                    border: TableBorder.all(
                      color: Colors.grey,
                    ),
                    children: [
                      TableRow(children: [
                        CustomTextField(
                          hintText: 'Name of course',
                          controller: courseName,
                        )
                      ]),
                      TableRow(children: [
                        Table(
                            border: TableBorder.all(
                              color: Colors.grey,
                            ),
                            children: [
                              TableRow(children: [
                                const DropDown(
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
                                CustomTextField(
                                  hintText: 'Hours of subjects',
                                  controller: hours,
                                )
                              ]),
                            ]),
                      ]),
                    ],
                  ),
                ) : ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Table(
                          border: TableBorder.all(
                            color: Colors.grey,
                          ),
                          children: [
                            TableRow(children: [
                              SizedBox(
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
                                   const Icon(
                                      Icons.edit,
                                      size: 25,
                                      color: customColor,
                                    ),
                                   const SizedBox(
                                      width: 8,
                                    ),
                                   const Icon(
                                      Icons.delete,
                                      size: 25,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              )
                            ]),
                            TableRow(children: [
                              Table(
                                  border: TableBorder.all(
                                    color: Colors.grey,
                                  ),
                                  children: [
                                    TableRow(children: [
                                      Text(list[index].gpa),
                                      Text(list[index].hours)
                                    ]),
                                  ]),
                            ]),
                          ],
                        ),
                      );
                    }),
                 CustomButton(onPressed: ()=>addingCourse(),),
              ],
            ),
          ),
          SecondButton(
            text: 'احسب',
            onPressed: () => displayDialog(context),
          ),
        ]),
      ),
    );
  }
}
