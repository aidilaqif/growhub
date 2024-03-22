import 'package:flutter/material.dart';
import 'package:growhub/community/widget/content.dart';
import 'package:growhub/community/widget/group.dart';
import 'package:growhub/community/widget/post.dart';
import 'package:growhub/community/widget/promo_slider.dart';
import 'package:growhub/constants/image_strings.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/texts/section_heading.dart';
import 'package:growhub/widgets/grid_layout.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.white54,
          title: const Text(
            "Community",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Header

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  //Heading
                  TSectionHeading(title: 'Sharing Session', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                  const TPromoSlider(banners: [
                    TImages.promo1,
                    TImages.promo2,
                    TImages.promo3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  const TCommunityPost(),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  //product popular
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TCommunityContent(),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TGridLayout(
                    itemCount: 1,
                    itemBuilder: (_, index) => const TCommunityGroup(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
