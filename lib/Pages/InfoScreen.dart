import 'package:bmi_app/Controllers/BmiAppController.dart';
import 'package:bmi_app/util/BmiUtil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationScreen extends StatelessWidget {
  final double bmi;
  final BmiAppController controller = Get.find();

  InformationScreen({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Mimic the mockup gradient and color scheme
      child: Center(
        child: Container(
          constraints: const BoxConstraints(
              maxWidth: 500, maxHeight: 200, minWidth: 400),
          child: Card(
            elevation: 10,
            color: Colors.blueGrey.shade100,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your BMI is: ${bmi.toStringAsFixed(2)}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    controller.getCategory(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: getBMIColor(controller.bmi.value),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
