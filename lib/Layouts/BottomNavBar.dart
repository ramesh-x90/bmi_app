import 'package:bmi_app/Controllers/BmiAppController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Returns a bottom navigation bar widget for the BMI App.
///
/// This widget displays a bottom navigation bar with three items:
/// - Calculate BMI
/// - BMI Data
/// - About
///
/// The selected item is determined by the [BmiAppController]'s [selectedIndex] value.
/// Tapping on an item calls the [changeIndex] method of the [BmiAppController].
///
/// The selected item is displayed with a blue accent color, while the unselected items
/// are displayed with a black45 color.
Obx bmiAppBottomNavBar() {
  final BmiAppController controller = Get.find();

  return Obx(
    () => BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate),
          label: 'Calculate BMI',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'BMI Data',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About',
        ),
      ],
      currentIndex: controller.selectedIndex.value,
      onTap: controller.changeIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.black45,
    ),
  );
}
