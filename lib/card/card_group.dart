import 'package:flutter/material.dart';
// import 'package:growhub/card/card_text.dart';
import 'package:growhub/card/card_text_verification.dart';
import 'package:growhub/card/card_title_text.dart';
import 'package:growhub/constants/shadow.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:iconsax/iconsax.dart';

class TCardGroup extends StatelessWidget {
  const TCardGroup({super.key});

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
            // Thumbnail
            const TRoundedContainer(
              height: 20,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: Colors.white24,
            ),

            // const SizedBox(height: TSizes.spaceBtwItems / 2),

            //Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(
                      title: 'Group Name',
                      smallSize: true,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems / 2),
                    TBrandTitleWithVerifiedIcon(
                        title: 'Description of the group'),
                      SizedBox(height: TSizes.spaceBtwItems / 2),

                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '50 Members', // Price value
                    style: TextStyle(
                      fontSize: 13, // Adjust the font size as needed
                      fontWeight: FontWeight
                          .bold, // You can adjust the font weight as needed
                    ),
                  ),
                ),
                // Share button
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.user_add, color: Colors.white),
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
