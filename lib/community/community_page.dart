import 'package:flutter/material.dart';
import 'package:growhub/community/group/list_group.dart';
import 'package:growhub/community/seminar/seminar.dart';
import 'package:growhub/community/widget/categories.dart';
import 'package:growhub/community/widget/category_tab.dart';
import 'package:growhub/community/widget/post.dart';
import 'package:growhub/community/widget/promo_slider.dart';
import 'package:growhub/constants/image_strings.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/pallete.dart';
import 'package:growhub/style/section_heading.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Pallete.greenBasic,
          title: const Text(
            "Community",
            style: TextStyle(
              fontSize: 30,
              color: Pallete.greenTertiary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: Colors.white,
                expandedHeight: MediaQuery.of(context).size.height - kToolbarHeight,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      TSectionHeading(
                        title: 'Sharing Session',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SeminarList()),
                          );
                        },
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 10),
                      TPromoSlider(banners: [
                        TImages.promo1,
                        TImages.promo2,
                        TImages.promo3,
                      ]),
                      const SizedBox(height: TSizes.spaceBtwSections / 10),
                      TSectionHeading(
                        title: 'Group',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GroupList()),
                          );
                        },
                      ),
                      DashboardCategories(
                        txtTheme: Theme.of(context).textTheme,
                        context: context,
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                      TCommunityPost(),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Scroll up to check posting",
                            style: TextStyle(
                              fontSize: 14,
                              color: Pallete.blackSecondary,
                            ),
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            color: Pallete.blackSecondary,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                bottom: const TabBar(
                  tabs: [
                    Tab(child: Text('Posting')),
                    Tab(child: Text('My Posting')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
