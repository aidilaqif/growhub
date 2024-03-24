import 'package:flutter/material.dart';

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
        color: const Color(0XFFE0E4E5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0XFF545454),
          width: 1
        )
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: details,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Color(0XFF545454)
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