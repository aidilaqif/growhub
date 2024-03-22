import 'package:flutter/material.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/custom_shapes/product_card_vertical.dart';
import 'package:growhub/layout/layout_horizontal.dart';

class GroupList extends StatelessWidget {
  const GroupList({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Text('Group List'),
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
                    itemCount: 6,
                    itemBuilder: (_, index) => const TProductCardVertical(),
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
