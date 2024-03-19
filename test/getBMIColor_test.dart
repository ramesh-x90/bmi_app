import 'package:bmi_app/util/BmiUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test getBMIColor', () {
    expect(getBMIColor(10), equals(Colors.red)); // Should return red
    expect(getBMIColor(16), equals(Colors.red)); // Should return red
    expect(getBMIColor(16.9), equals(Colors.red)); // Should return red
    expect(getBMIColor(17), equals(Colors.orange)); // Should return orange
    expect(getBMIColor(18.4), equals(Colors.orange)); // Should return orange
    expect(getBMIColor(18.5), equals(Colors.green)); // Should return green
    expect(getBMIColor(24.9), equals(Colors.green)); // Should return green
    expect(getBMIColor(25), equals(Colors.orange)); // Should return orange
    expect(getBMIColor(29.9), equals(Colors.orange)); // Should return orange
    expect(getBMIColor(30), equals(Colors.red)); // Should return red
    expect(getBMIColor(30.9), equals(Colors.red)); // Should return red
    expect(getBMIColor(40), equals(Colors.red)); // Should return red
    expect(getBMIColor(50), equals(Colors.red)); // Should return red
  });
}
