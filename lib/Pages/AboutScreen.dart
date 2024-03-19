import 'package:bmi_app/common/BmiCategoryItem.dart';
import 'package:bmi_app/components/BmiCategoryItemCard.dart';
import 'package:flutter/material.dart';

/// A widget that displays common BMI information.
class CommonBMIInfo extends StatelessWidget {
  const CommonBMIInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Card(
          color: Colors.blueGrey[50],
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "All BMI Categories",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              subtitle: ListView.builder(
                  itemBuilder: (context, index) => BMICategoryItemCard(
                        category: BMICategoryItem.bmiItems[index].category,
                        range: BMICategoryItem.bmiItems[index].range,
                        textColor: BMICategoryItem.bmiItems[index].color,
                        backgroundColor:
                            BMICategoryItem.bmiItems[index].backgroundColor,
                      ),
                  itemCount: BMICategoryItem.bmiItems.length),
            ),
          ),
        ),
      ),
    );
  }

  /// Builds a widget for displaying a BMI category item.
  ///
  /// The [category] parameter represents the category name.
  /// The [range] parameter represents the range of the category.
  /// The [color] parameter represents the text color of the category.
  Widget buildBMICategoryItem(String category, String range, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: TextStyle(
              fontSize: 16,
              color: color,
            ),
          ),
          Text(
            range,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
