import 'package:flutter/material.dart';
class ContainerOfTables extends StatelessWidget {
  const ContainerOfTables({Key? key, required this.child}) : super(key: key);
   final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child:child);
  }
}
