import 'package:flutter/material.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/data/group_item.dart';
import 'package:growhub/community/group/widget/group_card.dart';
import 'package:growhub/layout/layout_horizontal.dart';

class GroupList extends StatelessWidget {
  GroupList({Key? key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text('Group List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Body content
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Product popular
                  TGridLayoutHorizontal(
                    itemCount: groups.length,
                    itemBuilder: (_, index) {
                      final group = groups[index];
                      return GroupCard(
                        groupName: group['name'],
                        memberCount: group['memberCount'],
                        imageUrl: group['imageUrl'],
                      );
                    },
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
