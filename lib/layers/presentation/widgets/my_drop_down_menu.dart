import 'dart:developer';

import 'package:flutter/material.dart';

class MyDropDownMenu extends StatefulWidget {
  final String? _selectedValue;
  final TextEditingController _controller;
  final List<String> _entries;
  final _expand;

  const MyDropDownMenu(
      {super.key,
      bool expand = false,
      required String? selectedValue,
      required TextEditingController controller,
      required List<String> entries})
      : _controller = controller,
        _selectedValue = selectedValue,
        _entries = entries,
        _expand = expand;

  @override
  State<MyDropDownMenu> createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {
  String? _selectedValue;
  TextEditingController _controller = TextEditingController();
  List<String> _entries = [];
  bool _expand = false;

  @override
  void initState() {
    _selectedValue = widget._selectedValue;
    _controller = widget._controller;
    _entries = widget._entries;
    _expand = widget._expand;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pink[50],
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return DropdownMenu(
              width: _expand ? constraints.maxWidth : null,
              initialSelection: _selectedValue,
              controller: _controller,
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBABDC0)),
                ),
              ),
              dropdownMenuEntries: _entries
                  .map(
                    (String entry) => DropdownMenuEntry<String>(
                      label: entry,
                      value: entry,
                    ),
                  )
                  .toList(),
              onSelected: (String? selected) {
                log(selected ?? "Não selecionado");
                setState(() {
                  _selectedValue = selected;
                });
              },
            );
          },
        ));
  }
}
