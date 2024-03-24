import 'package:flutter/material.dart';
import 'package:growhub/community/widget/categories.dart';
import 'package:growhub/community/widget/category_tab.dart';
import 'package:growhub/community/widget/noti_icon.dart';
import 'package:growhub/community/widget/post.dart';
import 'package:growhub/community/widget/promo_slider.dart';
import 'package:growhub/community/widget/tappbar.dart';
import 'package:growhub/constants/image_strings.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/community/group/list_group.dart';
import 'package:growhub/community/seminar/seminar.dart';
import 'package:growhub/texts/section_heading.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Community",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            TNotiIcon(
              onPressed: () {},
              iconColor: Colors.white,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: Colors.white,
                expandedHeight: 580,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      TSectionHeading(
                          title: 'Sharing Session',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeminarList()),
                            );
                          }),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 10),
                      const TPromoSlider(banners: [
                        TImages.promo1,
                        TImages.promo2,
                        TImages.promo3
                      ]),
                      const SizedBox(height: TSizes.spaceBtwSections / 10),

                      TSectionHeading(
                        title: 'Group',
                        onPressed: () {
                          // Navigate to the desired page when "Group" section heading is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GroupList()),
                          );
                        },
                      ),
                      DashboardCategories(
                        txtTheme: txtTheme,
                        context: context,
                      ),

                      // ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                      const TCommunityPost(),
                    ],
                  ),
                ),
                //Tabs
                bottom: const TTabBar(
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
