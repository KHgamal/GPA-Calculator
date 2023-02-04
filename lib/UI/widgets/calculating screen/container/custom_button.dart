import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onPressed}) : super(key: key);
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 151,
        height: 50,
        child: ElevatedButton(onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(
                        width: 2.0,
                          color:customColor)
                  )
              )
          ),
          child: Row(
            children: const [
              Icon(Icons.add,color: customColor,),
              Text("Add Course",style: TextStyle(color: customColor,fontSize:18,
                  fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
