import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/constants.dart';


class SecondButton extends StatelessWidget {
  const SecondButton({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 180,
        height: 40,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor:  MaterialStateProperty.all<Color>(customColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                  )
              )
          ),
          child: const Text("احسب",textDirection: TextDirection.rtl,
            style: TextStyle(fontSize:23,
              fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
