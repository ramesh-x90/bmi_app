import 'package:flutter/material.dart';

class BMICategoryItemCard extends StatelessWidget {
  final String category;
  final String range;
  final Color textColor;
  final Color backgroundColor;

  const BMICategoryItemCard(
      {super.key,
      required this.category,
      required this.range,
      required this.textColor,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              category,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Range: $range (kg/m²)',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
