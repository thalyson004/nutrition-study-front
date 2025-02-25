import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropDownMenu extends StatefulWidget {
  String? _selectedValue;
  TextEditingController _controller;
  List<String> _entries;

  MyDropDownMenu(
      {super.key,
      required String? selectedValue,
      required TextEditingController controller,
      required List<String> entries})
      : _controller = controller,
        _selectedValue = selectedValue,
        _entries = entries;

  @override
  State<MyDropDownMenu> createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: DropdownMenu(
        initialSelection: widget._selectedValue,
        controller: widget._controller,
        dropdownMenuEntries: widget._entries
            .map(
              (String entry) => DropdownMenuEntry<String>(
                label: entry,
                value: entry,
              ),
            )
            .toList(),
        onSelected: (String? selected) {
          print(selected ?? "Não selecionado");
          setState(() {
            widget._selectedValue = selected;
          });
        },
      ),
    );
  }
}
