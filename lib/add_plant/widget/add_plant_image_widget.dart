@ -1,55 +1,55 @@
import 'package:flutter/material.dart';
import 'package:growhub/pallete.dart';

class AddPlantImageWidget extends StatelessWidget {
  const AddPlantImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 241.9,
      width: 241.9,
      child: Stack(
        children: [
          Container(
            height: 241.9,
            width: 241.9,
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.blackSecondary,
                width: 6,
              ),
              shape: BoxShape.circle,
              color: Pallete.blackTertiary
            ),
            child: const Icon(
              Icons.photo_size_select_actual_rounded,
              size: 100,
              color: Pallete.blackSecondary,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Pallete.greenPrimary,
              ),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.add,
                  size: 40,
                  color: Pallete.greenTertiary,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
