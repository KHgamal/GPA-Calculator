import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/model.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/dialog/container.dart';
import 'package:gpa_calculator/UI/widgets/calculating%20screen/dialog/stickers.dart';
displayDialog(BuildContext context,List<TableC> list)  {
 double result= calculatingGPA(list);
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child:Stack(
            children:  [
              Content(result:result ),
              Sticker(result:result ,),
            ],
          ) ,
        );
      }
  );

}

calculatingGPA(List<TableC> list){
  double sum=0 ;
  int sumOfHours=0;
  for(int i=0;i<list.length;i++){
    sum+=list[i].gpaValue*int.parse(list[i].hours);
    sumOfHours+=int.parse(list[i].hours);
  }
  double result=sum/sumOfHours;
  return result;
}


