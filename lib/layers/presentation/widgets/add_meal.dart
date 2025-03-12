import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_drop_down_menu.dart';
import 'my_text_input.dart';

class AddMeal extends StatefulWidget {
  TextEditingController _mealController;
  TextEditingController _timeController;
  TextEditingController _quantityController;

  AddMeal({
    Key? key,
    TextEditingController? mealController,
    TextEditingController? timeController,
    TextEditingController? quantityController,
  })  : _mealController = mealController ?? TextEditingController(),
        _timeController = timeController ?? TextEditingController(),
        _quantityController = quantityController ?? TextEditingController(),
        super(key: key);

  @override
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
  List<String> meals = ["Carne", "leite", "Queijo", "Arroz"];
  String mealSelected = "Carne";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyDropDownMenu(
              selectedValue: mealSelected,
              controller: widget._mealController,
              entries: meals,
              expand: true,
            ),
          ),
        ),
        Expanded(
          child: MyTextInput(
            label: "Time",
            controller: widget._timeController,
            labelText: "Time",
          ),
        ),
        Expanded(
          child: MyTextInput(
            label: "Quantity",
            controller: widget._quantityController,
            labelText: "Quantity",
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: Colors.pink,
              shadowColor: Colors.black,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
