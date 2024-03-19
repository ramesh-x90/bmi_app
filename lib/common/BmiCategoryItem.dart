import 'package:flutter/material.dart';

/// Represents a BMI category item.
class BMICategoryItem {
  final String category;
  final String range;
  final Color color;
  final Color backgroundColor;

  /// Constructs a [BMICategoryItem] with the given properties.
  BMICategoryItem({
    required this.category,
    required this.range,
    required this.color,
    required this.backgroundColor,
  });

  /// A list of predefined [BMICategoryItem] objects.
  static final List<BMICategoryItem> bmiItems = [
    BMICategoryItem(
      category: 'Severe undernourishment',
      range: '< 16',
      color: Colors.red,
      backgroundColor: Colors.red[100]!,
    ),
    BMICategoryItem(
      category: 'Medium undernourishment',
      range: '16 - 16.9',
      color: Colors.orange,
      backgroundColor: Colors.orange[100]!,
    ),
    BMICategoryItem(
      category: 'Slight undernourishment',
      range: '17 - 18.4',
      color: Colors.yellow[900]!,
      backgroundColor: Colors.yellow[100]!,
    ),
    BMICategoryItem(
      category: 'Normal nutrition state',
      range: '18.5 - 24.9',
      color: Colors.green,
      backgroundColor: Colors.green[100]!,
    ),
    BMICategoryItem(
      category: 'Overweight',
      range: '25 - 29.9',
      color: Colors.orange,
      backgroundColor: Colors.orange[100]!,
    ),
    BMICategoryItem(
      category: 'Obesity',
      range: '30 - 39.9',
      color: Colors.red,
      backgroundColor: Colors.red[100]!,
    ),
    BMICategoryItem(
      category: 'Pathological obesity',
      range: '> 40',
      color: Colors.red,
      backgroundColor: Colors.red[100]!,
    ),
  ];
}
