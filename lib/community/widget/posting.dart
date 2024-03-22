import 'package:flutter/material.dart';
import 'package:growhub/constants/enums.dart';
import 'package:growhub/constants/image_strings.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:growhub/containers/t_circular_image.dart';
import 'package:growhub/custom_shapes/card_text_verification.dart';

class OtherPosting extends StatelessWidget {
  const OtherPosting({
    super.key, 
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
     child: TRoundedContainer(
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Icon
          const Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.group1,
              backgroundColor: Colors.transparent,
              overLayColor: Colors.white,
            ),
          ),
           const SizedBox(height: TSizes.spaceBtwItems / 2),
     
          //Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TBrandTitleWithVerifiedIcon(title: 'Name', brandTextSize: TextSizes.large),
                Text(
                  'Hi everyone, I have something to share about taking care of plant in hot weather.',
                  // overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                                     
              ],
            ),
          )
     
        ],),
     ),
                             );
  }
}