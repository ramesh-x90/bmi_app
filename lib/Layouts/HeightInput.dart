import 'package:bmi_app/Controllers/BmiAppController.dart';
import 'package:bmi_app/components/BmiTextInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A widget that represents the height input field in the BMI app.
class HeightInputField extends StatelessWidget {
  final BmiAppController bmiAppController = Get.find();

  /// Constructs a [HeightInputField] widget.
  ///
  /// The [key] parameter is optional and is used for widget identification.
  HeightInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: BmIInputFelid(
        controller: bmiAppController.heightController,
        hintText: "Your Body Height",
        suffix: "m",
        prefixIcon: const Icon(
          Icons.person_2_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
