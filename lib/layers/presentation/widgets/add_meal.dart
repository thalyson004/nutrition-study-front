import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_drop_down_menu.dart';

class AddMeal extends StatefulWidget {
  const AddMeal({Key? key}) : super(key: key);

  @override
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
  List<String> meals = ["Carne", "leite", "Queijo", "Arroz"];
  TextEditingController mealController = TextEditingController();
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
              controller: mealController,
              entries: meals,
              expand: true,
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          width: 100,
        ),
        Container(
          color: Colors.brown,
          width: 100,
        ),
        Container(
          color: Colors.yellowAccent,
          width: 25,
          height: 25,
        ),
      ],
    );
  }
}
