import 'package:flutter/cupertino.dart';

class NutrientsGraph extends StatelessWidget {
  const NutrientsGraph({
    Map<String, double>? nutrients,
    Map<String, double>? nutrientsRecommended,
    super.key,
  })  : _nutrients = nutrients,
        _nutrientsRecommended = nutrientsRecommended;

  final Map<String, double>? _nutrients;
  final Map<String, double>? _nutrientsRecommended;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _nutrients!.entries.map((element) {
          return Text(
              "${element.key}: ${element.value} / ${_nutrientsRecommended![element.key]}");
        }).toList(),
      ),
    );
  }
}
