import 'package:flutter/material.dart';
import 'package:growhub/constants/shadow.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/image_container.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:growhub/custom_shapes/card_circular_icon.dart';
import 'package:growhub/custom_shapes/card_text_verification.dart';
import 'package:growhub/custom_shapes/card_title_text.dart';
import 'package:iconsax/iconsax.dart';


class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: Colors.white,
        ),
        child: Column(
          children: [
            //Thumbnail
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: Colors.white,
              child: Stack(
                children: [
                  ///Thumbnail image
                  const TRoundedImage(imageUrl: "cili.jpeg", applyImageRadius: true),

                  ///Sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: Colors.white.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: Colors.black)),
                    ),
                  ),

                  ///Favourite Icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            //Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),

            //TODO: Add Spacer() here to keep the height of each box some in case 1 or 2 lines of headings
            Spacer(),

            //price row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("hi"),
                ),

                //add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child:
                        Center(child: Icon(Iconsax.add, color: Colors.white)),
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

