import 'package:flutter/material.dart';
import 'package:gpa_calculator/UI/widgets/container.dart';
import 'package:gpa_calculator/UI/widgets/stickers.dart';
displayDialog(BuildContext context)  {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child:Stack(
            children: const [
              Content(),
              Sticker(),
            ],
          ) ,
        );
      }
  );
}

