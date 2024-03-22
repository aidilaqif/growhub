import 'package:flutter/material.dart';
import 'package:growhub/community/widget/posting.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:growhub/custom_shapes/card_circular_icon.dart';
import 'package:iconsax/iconsax.dart';

class MessagePosted extends StatefulWidget {
  const MessagePosted({Key? key}) : super(key: key);

  @override
  _MessagePostedState createState() => _MessagePostedState();
}

class _MessagePostedState extends State<MessagePosted> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: Colors.grey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(TSizes.md),
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          const Column(
            children: [
              // Brand with product count
              OtherPosting(showBorder: false),
              SizedBox(height: TSizes.spaceBtwItems),
              // Brand top 3 product image
              // Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
            ],
          ),
          Positioned(
            top: 0,
            right: 0, // Adjust the position as needed
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              child: TCircularIcon(
                icon: Iconsax.heart5,
                color: isLiked ? Colors.red : Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                // Handle reply button tap
              },
              child: const TCircularIcon(
                icon: Iconsax.arrow_right_1,
                color: Colors.black, // Set the color as desired
              ),
            ),
          ),
        ],
      ),
    );
  }
}
