import 'package:flutter/material.dart';


class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(
    this.title,
    this.heading,
    this.subHeading,
    this.onPress,
  );

  static List<DashboardCategoriesModel> list(BuildContext context) {
    return [
      DashboardCategoriesModel("S", "Small Farm", "30 members", null),
      DashboardCategoriesModel(
        "P",
        "Benih Mur",
        "78 members",
        () {
          // Implement navigation logic here when Policy category is clicked
          // For example, you can use Navigator.push to navigate to the Policy screen
          // Example
        },
      ),
      DashboardCategoriesModel(
        "C",
        "Cili Segar",
        "67 members",
        () {
          // Implement navigation logic here when Policy category is clicked
          // For example, you can use Navigator.push to navigate to the Policy screen
          // Example:

        },
      ),
      DashboardCategoriesModel("T", "Taman Indah", "More", null),
    ];
  }
}
