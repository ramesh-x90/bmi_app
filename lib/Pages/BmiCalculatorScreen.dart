import 'package:bmi_app/Controllers/BmiAppController.dart';
import 'package:bmi_app/Layouts/HeightInput.dart';
import 'package:bmi_app/Layouts/WeightInput.dart';
import 'package:bmi_app/util/BmiUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculateScreen extends StatelessWidget {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final BmiAppController controller = Get.find();

  CalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.tightForFinite(width: 600),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Obx(() => Center(
                      child: BMICard(),
                    )),
                const SizedBox(height: 100),
                WeightInputField(),
                const SizedBox(height: 20),
                HeightInputField(),
                const SizedBox(height: 100),
                const SizedBox(height: 100),
                Container(
                  constraints: const BoxConstraints.tightForFinite(
                      width: 200, height: 50),
                  child: ElevatedButton(
                    onPressed: controller.calculateBMI,
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blueAccent, // background (button color)
                        foregroundColor: Colors.white,
                        elevation: 10 // foreground (text color)
                        ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward_ios),
                        Text('Calculate'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BMICard extends StatelessWidget {
  final BmiAppController controller = Get.find();
  late final double bmiValue;
  late final String bmiCategory;

  BMICard({super.key}) {
    bmiCategory = controller.bmiCategory.value;
    bmiValue = controller.bmi.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 600, minWidth: 500),
        child: bmiValue > 0
            ? Card(
                color: Colors.blueGrey.shade100,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Your BMI',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        controller.bmi.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: getBMIColor(bmiValue),
                        ),
                      ),
                      const SizedBox(height: 10),
                      bmiCategory.isNotEmpty
                          ? Text(
                              bmiCategory,
                              style: TextStyle(
                                  fontSize: 16, color: getBMIColor(bmiValue)),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              )
            : const SizedBox());
  }
}
