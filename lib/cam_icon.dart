import 'package:flutter/material.dart';
import 'package:growhub/arpage.dart';
import 'package:iconsax/iconsax.dart';

class TCamIcon extends StatelessWidget {
  const TCamIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ARPage()));
            },
            icon: const Icon(
              Iconsax.camera,
              color: Colors.black,
              size: 23,
            )),
      ],
    );
  }
}
