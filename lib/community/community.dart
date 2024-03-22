import 'package:flutter/material.dart';
import 'package:growhub/community/widget/content.dart';
import 'package:growhub/community/widget/group.dart';
import 'package:growhub/community/widget/post.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/texts/section_heading.dart';
import 'package:growhub/widgets/grid_layout.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  TSectionHeading(title: 'Community', onPressed: (){}),                  
                  const SizedBox(height: TSizes.spaceBtwInputFields/2),
                  
                  const TCommunityPost(),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  //product popular
                  TGridLayout(itemCount: 2, itemBuilder: (_ , index) => const TCommunityContent(),),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TGridLayout(itemCount: 1, itemBuilder: (_ , index) => const TCommunityGroup(),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
