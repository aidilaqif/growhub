import 'package:flutter/material.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/data/sharing_session_item.dart';
import 'package:growhub/group/widget/group_card.dart';
import 'package:growhub/layout/layout_horizontal.dart';

class SeminarList extends StatelessWidget {
   SeminarList({Key? key});


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
        title: const Text('Sharing Session'),
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
                    itemCount: sessions.length,
                    itemBuilder: (_, index) {
                      final session = sessions[index];
                      return GroupCard(
                        groupName: session['name'],
                        memberCount: session['memberCount'],
                        imageUrl: session['imageUrl'],
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
