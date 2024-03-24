import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                color: const Color(0XFF545454),
                width: 4,
              ),
              shape: BoxShape.circle,
              color: const Color(0XFFE0E4E5)
            ),
            child: const Icon(
              Icons.photo_size_select_actual_rounded,
              size: 100,
              color: Color(0XFF545454),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}