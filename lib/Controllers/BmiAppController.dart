import 'package:bmi_app/config/AppConfig.dart';
import 'package:bmi_app/util/BmiUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller class for the BMI App.
class BmiAppController extends GetxController {
  var selectedIndex = 0.obs;
  var bmi = (-1.0).obs;
  var bmiCategory = "".obs;
  var error = "".obs;

  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  /// Changes the selected index.
  ///
  /// If the index is 1 and the BMI value is less than or equal to 0.0,
  /// a snackbar is displayed indicating that the BMI needs to be calculated first.
  void changeIndex(int index) {
    if (index == 1 && bmi.value <= 0.0) {
      Get.snackbar(
        'Restricted Access',
        'You have to calculate your BMI first!',
        snackPosition: SnackPosition.TOP,
      );
      return;
    }
    selectedIndex.value = index;
  }

  /// Filters characters in the text field to allow only numbers and a decimal point.
  ///
  /// This method is used as a listener for the weight and height text fields.
  void filterCharacters(TextEditingController controller) {
    final text = controller.text;
    var filteredText = text.replaceAll(RegExp(r'[^0-9\.]'), '');
    if (text.contains(".")) {
      var parts = text.split(".");

      if (parts.length > 1) {
        filteredText = '${parts[0]}.${parts[1]}';

        if (parts[1].length > 2) {
          filteredText = '${parts[0]}.${parts[1].substring(0, 2)}';
        }
      }
    }

    if (text != filteredText) {
      controller.value = controller.value.copyWith(
        text: filteredText,
        selection: TextSelection.collapsed(offset: filteredText.length),
      );
    }
  }

  /// Checks if the form is valid.
  ///
  /// Returns true if there are no errors, false otherwise.
  bool isFormValid() {
    return error.value.isEmpty;
  }

  /// Clears the input fields.
  void clearInputs() {
    weightController.clear();
    heightController.clear();
  }

  /// Calculates the BMI.
  ///
  /// Parses the weight and height from the input fields and calculates the BMI value.
  /// Displays an error snackbar if the input is invalid.
  void calculateBMI() {
    try {
      double height = double.parse(heightController.text);
      double weight = double.parse(weightController.text);

      if (height <= 0 || weight <= 0) {
        error.value = "Input must be greater than 0";
        throw Exception("Input must be greater than 0");
      } else {
        error.value = "";
      }

      double bmiValue = weight / (height * height);

      bmiCategory.value = bmiValueToCategory(bmiValue);

      bmi.value = bmiValue;

      if (APP_CONFIG.MOVE_TO_BMI_INCO_AFTER_CAL) changeIndex(1);

      heightController.text = height.toStringAsFixed(2);
      weightController.text = weight.toStringAsFixed(2);
    } catch (e) {
      Get.snackbar(
        'Invalid Input',
        error.value.isNotEmpty
            ? error.value
            : 'Please enter a valid weight and height',
        snackPosition: SnackPosition.TOP,
        snackStyle: SnackStyle.GROUNDED,
      );
    }
  }

  @override
  void onInit() {
    weightController.addListener(() => filterCharacters(weightController));
    heightController.addListener(() => filterCharacters(heightController));
    super.onInit();
  }

  @override
  void onClose() {
    weightController.dispose();
    heightController.dispose();
    selectedIndex.close();
    bmi.close();
    bmiCategory.close();
    error.close();

    super.onClose();
  }

  /// Returns the current BMI category.
  String getCategory() {
    return bmiCategory.value;
  }
}
