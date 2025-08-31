import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiDropdown(
      items: [
        DropdownItem(label: "Male", value: "value"),
        DropdownItem(label: "Female", value: "value")
        //todo check these values
      ],
      singleSelect: true,
      chipDecoration: ChipDecoration(border: Border.all(color: Colors.blue)),
      fieldDecoration: const FieldDecoration(
          showClearIcon: false,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEAECF0)),
              borderRadius: BorderRadius.all(Radius.circular(8)))),
      dropdownItemDecoration: const DropdownItemDecoration(
          selectedTextColor: Color(0xFF474747),
          selectedBackgroundColor: Color(0xFFFFEDE3),
          disabledBackgroundColor: Colors.white,
          disabledTextColor: Color(0xFF474747),
          selectedIcon: Icon(CupertinoIcons.check_mark)),
    );
  }
}
