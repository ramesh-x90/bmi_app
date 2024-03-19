import '../common/BmiCategories.dart';
import 'package:flutter/material.dart';

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
