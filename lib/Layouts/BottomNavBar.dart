import 'package:bmi_app/Controllers/BmiAppController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
