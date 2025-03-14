import 'package:flutter/material.dart';

class Satisfaction extends StatelessWidget {
  final double satisfaction;
  const Satisfaction({super.key, required this.satisfaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox.square(
                dimension: 112,
                child: CircularProgressIndicator(
                  value: satisfaction / 100.0,
                  color: Colors.pinkAccent,
                  strokeWidth: 24.0,
                ),
              ),
              Text(
                '$satisfaction%',
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Text(
          "Satisfaction",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
