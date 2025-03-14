import 'dart:developer';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import 'classes/meal.dart';

class Diet extends StatefulWidget {
  List<Meal> meals;
  Function(List<Meal>)? onRemove;

  Diet({super.key, this.meals = const [], this.onRemove});

  @override
  State<Diet> createState() => _DietState();
}

class _DietState extends State<Diet> {
  int sortIndex = 1;
  bool isAscending = false;
  List<Meal> meals = [];

  List<DataRow> rows = [];

  @override
  void initState() {
    meals = widget.meals;
    super.initState();

    loadingMeals();
  }

  Future<void> loadingMeals() async {
    rows.clear();

    for (Meal meal in meals) {
      rows.add(
        DataRow2(
          cells: <DataCell>[
            DataCell(Text(meal.name)),
            DataCell(Text('${(meal.time / 60).toInt()}:${meal.time % 60}')),
            DataCell(Text('${meal.grams}')),
            DataCell(ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.pink,
                shadowColor: Colors.black,
              ),
              onPressed: () {
                log(meal.name);

                List<Meal> newMeals = [];

                newMeals = meals.where((el) => el.name != meal.name).toList();

                meals = newMeals;

                loadingMeals();
              },
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
            )),
          ],
        ),
      );
    }
    setState(() {
      rows = rows;
    });
  }

  void onSort(int columnIndex, bool ascending) {
    setState(() {
      sortIndex = columnIndex;
    });
    print("${columnIndex}, ${ascending}");
    setState(() {
      isAscending = ascending;
    });
  }

  @override
  void didChangeDependencies() {
    loadingMeals();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return DataTable2(
      sortColumnIndex: sortIndex,
      sortAscending: isAscending,
      columns: [
        DataColumn2(
          label: Text('Meal', style: TextStyle(fontStyle: FontStyle.italic)),
          onSort: onSort,
        ),
        DataColumn2(
          label: Text(
            'Time',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          onSort: onSort,
        ),
        DataColumn2(
          label: Text(
            'Grams',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          onSort: onSort,
        ),
        DataColumn2(
          label: Text('Options', style: TextStyle(fontStyle: FontStyle.italic)),
        ),
      ],
      rows: rows,
    );
  }
}
