import 'package:bmi_app/util/BmiUtil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test bmiValueToCategory', () {
    expect(
        bmiValueToCategory(10),
        equals(
            "Severe undernourishment")); // Should return "Severe undernourishment"

    expect(
        bmiValueToCategory(15.9),
        equals(
            "Severe undernourishment")); // Should return "Severe undernourishment"
    expect(
        bmiValueToCategory(16),
        equals(
            "Medium undernourishment")); // Should return "Medium undernourishment"

    expect(
        bmiValueToCategory(16.9),
        equals(
            "Medium undernourishment")); // Should return "Medium undernourishment"

    expect(
        bmiValueToCategory(17),
        equals(
            "Slight undernourishment")); // Should return "Slight undernourishment"

    expect(
        bmiValueToCategory(18.4),
        equals(
            "Slight undernourishment")); // Should return "Slight undernourishment"
    expect(
        bmiValueToCategory(18.5),
        equals(
            "Normal nutrition state")); // Should return "Normal nutrition state"

    expect(
        bmiValueToCategory(24.9),
        equals(
            "Normal nutrition state")); // Should return "Normal nutrition state"

    expect(bmiValueToCategory(25),
        equals("Overweight")); // Should return "Overweight"

    expect(bmiValueToCategory(29.9),
        equals("Overweight")); // Should return "Overweight"

    expect(
        bmiValueToCategory(30), equals("Obesity")); // Should return "Obesity"
    expect(
        bmiValueToCategory(39.9), equals("Obesity")); // Should return "Obesity"

    expect(bmiValueToCategory(40),
        equals("Pathological obesity")); // Should return "Pathological obesity"

    expect(bmiValueToCategory(100),
        equals("Pathological obesity")); // Should return "Pathological obesity"
  });
}
