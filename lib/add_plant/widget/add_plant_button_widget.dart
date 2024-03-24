@ -1,28 +1,30 @@
import 'package:flutter/material.dart';
import 'package:growhub/pallete.dart';

class AddPlantButtonWidget extends StatelessWidget {
  const AddPlantButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Pallete.greenBasic
      ),
      child: TextButton(
        onPressed: (){},
        child: const Text(
          'ADD PLANT',
          style: TextStyle(
            color: Pallete.greenTertiary,
            fontSize: 18,
            fontWeight: FontWeight.w800
          ),
        )
      ),
    );
  }
}
