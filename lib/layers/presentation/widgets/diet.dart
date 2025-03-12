import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class Diet extends StatefulWidget {
  const Diet({Key? key}) : super(key: key);

  @override
  State<Diet> createState() => _DietState();
}

class _DietState extends State<Diet> {
  int sortIndex = 1;
  bool isAscending = false;

  List<DataRow> rows = [];

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      setState(() {
        rows.add(
          DataRow2(
            cells: <DataCell>[
              DataCell(Text('Sarah dsas')),
              DataCell(Text('19')),
              DataCell(Text('Student')),
              DataCell(Text('Student')),
            ],
          ),
        );
      });
    }
    super.initState();
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
  Widget build(BuildContext context) {
    return DataTable2(
      sortColumnIndex: sortIndex,
      sortAscending: isAscending,
      columns: [
        DataColumn2(
          label: Expanded(
            child: Text('Meal', style: TextStyle(fontStyle: FontStyle.italic)),
          ),
          onSort: onSort,
        ),
        DataColumn2(
          label: Expanded(
            child: Text(
              'Time',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          onSort: onSort,
        ),
        DataColumn2(
          label: Expanded(
            child: Text(
              'Grams',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          onSort: onSort,
        ),
        DataColumn2(
          label: Expanded(
              child: Text('Options',
                  style: TextStyle(fontStyle: FontStyle.italic))),
        ),
      ],
      rows: rows,
    );
  }
}
