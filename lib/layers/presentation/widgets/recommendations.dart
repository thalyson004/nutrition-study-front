import 'dart:developer';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import 'classes/recommendation.dart';

class Recommendations extends StatefulWidget {
  final List<Recommendation> recommendations;
  final Function(List<Recommendation>)? onRemove;

  const Recommendations(
      {super.key, this.recommendations = const [], this.onRemove});

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  int sortIndex = 1;
  bool isAscending = false;
  List<Recommendation> recommendations = [];

  List<DataRow> rows = [];

  @override
  void initState() {
    recommendations = widget.recommendations;
    super.initState();

    loadingRecommendations();
  }

  Future<void> loadingRecommendations() async {
    rows.clear();

    for (Recommendation recommendation in recommendations) {
      rows.add(
        DataRow2(
          cells: <DataCell>[
            DataCell(Text(recommendation.name)),
            DataCell(Text(
                '${recommendation.satisfaction > 0 ? "+" : ""}${recommendation.satisfaction}')),
            DataCell(ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.pink,
                shadowColor: Colors.black,
              ),
              onPressed: () {
                log(recommendation.name);

                List<Recommendation> newRecommendations = [];

                newRecommendations = recommendations
                    .where((el) => el.name != recommendation.name)
                    .toList();

                recommendations = newRecommendations;

                loadingRecommendations();
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

    setState(() {
      isAscending = ascending;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return DataTable2(
      sortColumnIndex: sortIndex,
      sortAscending: isAscending,
      columns: [
        DataColumn2(
          label: Text('Recommendation',
              style: TextStyle(fontStyle: FontStyle.italic)),
          onSort: onSort,
        ),
        DataColumn2(
          label: Text(
            'Satisfaction',
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
