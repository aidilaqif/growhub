import 'package:flutter/material.dart';

class ARPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Fills the entire screen
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/images/ar_chillies.jpg', // Replace 'your_image.jpg' with your local image path
        fit: BoxFit
            .cover, // Adjusts the image size to cover the entire container
      ),
    );
  }
}
