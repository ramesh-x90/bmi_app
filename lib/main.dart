import 'package:bmi_app/Controllers/BmiAppController.dart';
import 'package:bmi_app/Layouts/BottomNavBar.dart';
import 'package:bmi_app/Pages/AboutScreen.dart';
import 'package:bmi_app/Pages/BmiCalculatorScreen.dart';
import 'package:bmi_app/Pages/InfoScreen.dart';
import 'package:bmi_app/components/BmiAppTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
      ),
      home: BMICalculator(),
    );
  }
}

class BMICalculator extends StatelessWidget {
  final BmiAppController controller = Get.put(BmiAppController());

  BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: bmiAppTitle(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            CalculateScreen(),
            InformationScreen(bmi: controller.bmi.value),
            const CommonBMIInfo()
          ],
        ),
      ),
      bottomNavigationBar: bmiAppBottomNavBar(),
    );
  }
}



// The HomeController class from the previous snippet goes here unchanged.




