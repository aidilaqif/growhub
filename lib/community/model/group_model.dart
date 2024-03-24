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
      DashboardCategoriesModel("P", "Petani Lama", "more", null),
      DashboardCategoriesModel(
        "H",
        "Hobi Bercucuk Tanam",
        "More",
        () {
          // Implement navigation logic here when Policy category is clicked
          // For example, you can use Navigator.push to navigate to the Policy screen
          // Example
        },
      ),
      DashboardCategoriesModel(
        "B",
        "Benih Sihat Murah",
        "More",
        () {
          // Implement navigation logic here when Policy category is clicked
          // For example, you can use Navigator.push to navigate to the Policy screen
          // Example:
        },
      ),
      DashboardCategoriesModel("F", "Farmers Johor", "More", null),
    ];
  }
}
