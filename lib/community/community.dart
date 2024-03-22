import 'package:flutter/material.dart';
import 'package:growhub/community/widget/categories.dart';
import 'package:growhub/community/widget/content.dart';
import 'package:growhub/community/widget/post.dart';
import 'package:growhub/community/widget/promo_slider.dart';
import 'package:growhub/constants/image_strings.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/group/list_group.dart';
import 'package:growhub/texts/section_heading.dart';
import 'package:growhub/layout/layout_vertical.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        title: const Text(
          "Community",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(TSizes.spaceBtwInputFields),
              child: Column(
                children: [
                  TSectionHeading(title: 'Sharing Session', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                  const TPromoSlider(banners: [
                    TImages.promo1,
                    TImages.promo2,
                    TImages.promo3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections/10),

                  TSectionHeading(
                    title: 'Group',
                    onPressed: () {
                      // Navigate to the desired page when "Group" section heading is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GroupList()),
                      );
                    },
                  ),        
                  DashboardCategories(
                    txtTheme: txtTheme,
                    context: context,
                  ),
                  
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TCommunityPost(),
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  TGridLayoutvertical(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TCommunityContent(),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // TGridLayout(
                  //   itemCount: 1,
                  //   itemBuilder: (_, index) => const TCommunityGroup(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
