import 'package:flutter/material.dart';

class AddPlantButtonWidget extends StatelessWidget {
  const AddPlantButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green
      ),
      child: TextButton(
        onPressed: (){},
        child: const Text(
          'ADD PLANT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18
          ),
        )
      ),
    );
  }
}