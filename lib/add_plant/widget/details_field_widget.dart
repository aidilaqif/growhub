import 'package:flutter/material.dart';
import 'package:growhub/pallete.dart';

class DetailsFieldWidget extends StatelessWidget {
  final String details;
  const DetailsFieldWidget({
    super.key,
    required this.details
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:56,
      decoration: BoxDecoration(
        color:Pallete.blackTertiary,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Pallete.blackSecondary,
          width: 1
        )
      ),
      child: TextField(
        style: const TextStyle(color:Pallete.blackPrimary),
        cursorColor: Pallete.blackPrimary,
        decoration: InputDecoration(
          hintText: details,
          hintStyle: const TextStyle(
            fontSize: 15,
            color:Pallete.blackSecondary
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
          alignLabelWithHint: true,
        ),
        // onChanged: (){},
      ),
    );
  }
}