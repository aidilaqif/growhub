
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TNotiIcon extends StatelessWidget {
  const TNotiIcon({
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
            onPressed: () {},
            icon: Icon(Iconsax.notification_1,
                 color: Colors.grey)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text("2",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(
                            color: Colors.black,
                            fontSizeFactor: 0.8))),
          ),
        )
      ],
    );
  }
}
