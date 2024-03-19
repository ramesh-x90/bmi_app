import '../common/BmiCategories.dart';
import 'package:flutter/material.dart';

/// Returns the color corresponding to the given BMI value.
///
/// The color is determined based on the following ranges:
/// - BMI < 16: Returns Colors.red
/// - 16 <= BMI < 17: Returns Colors.red
/// - 17 <= BMI < 18.5: Returns Colors.orange
/// - 18.5 <= BMI < 25: Returns Colors.green
/// - 25 <= BMI < 30: Returns Colors.orange
/// - 30 <= BMI < 40: Returns Colors.red
/// - BMI >= 40: Returns Colors.red
Color getBMIColor(double bmi) {
  if (bmi < 16) {
    return Colors.red;
  } else if (bmi >= 16 && bmi < 17) {
    return Colors.red;
  } else if (bmi >= 17 && bmi < 18.5) {
    return Colors.orange;
  } else if (bmi >= 18.5 && bmi < 25) {
    return Colors.green;
  } else if (bmi >= 25 && bmi < 30) {
    return Colors.orange;
  } else if (bmi >= 30 && bmi < 40) {
    return Colors.red;
  } else {
    return Colors.red;
  }
}

/// Returns the BMI category corresponding to the given BMI value.
///
/// The category is determined based on the following ranges:
/// - BMI < 16: Returns BMI_CATEGORIES.SEVERE_UNDERNOURISHMENT
/// - 16 <= BMI < 17: Returns BMI_CATEGORIES.MEDIUM_UNDERNOURISHMENT
/// - 17 <= BMI < 18.5: Returns BMI_CATEGORIES.SLIGHT_UNDERNOURISHMENT
/// - 18.5 <= BMI < 25: Returns BMI_CATEGORIES.NORMAL_NUTRITION_STATE
/// - 25 <= BMI < 30: Returns BMI_CATEGORIES.OVERWEIGHT
/// - 30 <= BMI < 40: Returns BMI_CATEGORIES.OBESITY
/// - BMI >= 40: Returns BMI_CATEGORIES.PATHOLOGICAL_OBESITY
String bmiValueToCategory(double bmi) {
  if (bmi < 16) {
    return BMI_CATECORIES.SEVERE_UNDERNOURISHMENT;
  } else if (bmi >= 16 && bmi < 17) {
    return BMI_CATECORIES.MEDIUM_UNDERNOURISHMENT;
  } else if (bmi >= 17 && bmi < 18.5) {
    return BMI_CATECORIES.SLIGHT_UNDERNOURISHMENT;
  } else if (bmi >= 18.5 && bmi < 25) {
    return BMI_CATECORIES.NORMAL_NUTRITION_STATE;
  } else if (bmi >= 25 && bmi < 30) {
    return BMI_CATECORIES.OVERWEIGHT;
  } else if (bmi >= 30 && bmi < 40) {
    return BMI_CATECORIES.OBESITY;
  } else {
    return BMI_CATECORIES.PATHOLOGICAL_OBESITY;
  }
}
