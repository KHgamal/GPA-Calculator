import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/custom_button.dart';
import 'package:gpa_calculator/UI/widgets/second_button.dart';

import '../widgets/constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/drop_down_button.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);
  static TextEditingController courseName = TextEditingController();
  static TextEditingController hours = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appbar,
      body: Column(
         crossAxisAlignment:CrossAxisAlignment.end,
          children: [
            const CustomText(),
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15 ),
                child: Table(
                  border: TableBorder.all(color: Colors.grey,),
                  children: [
                    TableRow(children: [
                      CustomTextField(
                        hintText: 'Name of course',
                        controller: courseName,
                      )
                    ]),
                    TableRow(children: [
                      Table(border: TableBorder.all(
                        color: Colors.grey,
                      ),

                          children: [
                            TableRow(children: [
                              const DropDown(
                                initialText: "Your GPA",
                                list: ["A+","A","A-","B+","B","B-","C+","C","C-","D+","D","F"],
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
              ),
             const CustomButton(),
            ],
          ),
        ),
            SecondButton(onPressed:  (){},),
      ]),
    );
  }
}
