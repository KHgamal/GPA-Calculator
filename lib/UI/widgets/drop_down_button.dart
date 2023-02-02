import 'package:flutter/material.dart';
class DropDown extends StatefulWidget {
 const DropDown({Key? key, required this.initialText, required this.list}) : super(key: key);
 final String initialText;
 final List list;
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  List<DropdownMenuItem<String>> _createList(List list) {
    return list
        .map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
        value: e,
        child: Text(e),
      ),
    ) .toList();
  }

   String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButton(
        items: _createList(widget.list),
        hint: Text(widget.initialText),
        value: _selectedItem,
        onChanged: (String? value) => setState(() {
          _selectedItem = value ?? "";
        }),
      ),
    );
  }
}
