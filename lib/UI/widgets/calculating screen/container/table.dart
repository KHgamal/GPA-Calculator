import 'package:flutter/material.dart';

class TableElements extends StatelessWidget {
  const TableElements({Key? key, required this.element1, required this.element2, required this.element3}) : super(key: key);
  final Widget element1;
  final Widget element2;
  final Widget element3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:5),
      child: Table(
        border: TableBorder.all(
          color: Colors.grey,
        ),
        children: [
          TableRow(children: [
           element1
          ]),
          TableRow(children: [
            Table(
                border: TableBorder.all(
                  color: Colors.grey,
                ),
                children: [
                  TableRow(children: [
                   element2,
                    element3,

                  ]),
                ]),
          ]),
        ],
      ),
    );
  }
}
