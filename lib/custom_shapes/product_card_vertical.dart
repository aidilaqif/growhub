import 'package:flutter/material.dart';
import 'package:growhub/constants/colors.dart';
import 'package:growhub/constants/image_strings.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/image_container.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:growhub/custom_shapes/card_circular_icon.dart';
import 'package:growhub/custom_shapes/card_text_verification.dart';
import 'package:growhub/custom_shapes/card_title_text.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatefulWidget {
  const TProductCardVertical({Key? key}) : super(key: key);

  @override
  _TProductCardVerticalState createState() => _TProductCardVerticalState();
}

class _TProductCardVerticalState extends State<TProductCardVertical> {
  bool _isJoined = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isJoined = !_isJoined;
        });
      },
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: Colors.white,
              child: Stack(
                children: [
                  TRoundedImage(
                      imageUrl: TImages.group1, applyImageRadius: true),
                  // Positioned(
                  //   top: 12,
                  //   child: TRoundedContainer(
                  //     radius: TSizes.sm,
                  //     backgroundColor: TColors.secondary.withOpacity(0.8),
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: TSizes.sm, vertical: TSizes.xs),
                  //     child: Text('25%',
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .labelLarge!
                  //             .apply(color: TColors.black)),
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 0,
                  //   right: 0,
                  //   child: TCircularIcon(
                  //     icon: Iconsax.heart5,
                  //     color: Colors.red,
                  //   ),
                  // )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm/2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Benih Segar Seremban',
                    smallSize: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('35 Members'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: TSizes.iconLg * 1.5,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Text(
                        _isJoined ? 'Joined' : 'Join',
                        style: TextStyle(
                          color: TColors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
