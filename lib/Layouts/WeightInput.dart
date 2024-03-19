import 'package:bmi_app/Controllers/BmiAppController.dart';
import 'package:bmi_app/components/BmiTextInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightInputField extends StatelessWidget {
  final BmiAppController bmiAppController = Get.find();

  WeightInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: BmIInputFelid(
        controller: bmiAppController.weightController,
        hintText: "Your Body Weight",
        suffix: "kg",
        prefixIcon: const Icon(
          Icons.line_weight,
          color: Colors.white,
        ),
      ),
    );
  }
}
