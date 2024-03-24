import 'package:flutter/material.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/data/sharing_session_item.dart';
import 'package:growhub/community/seminar/widget/seminar_card.dart';
import 'package:growhub/layout/layout_vertical.dart';
import 'package:growhub/pallete.dart';

class SeminarList extends StatelessWidget {
  const SeminarList({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Pallete.greenBasic,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Pallete.greenTertiary,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text(
          'Sharing Session',
          style: TextStyle(
            fontSize: 30,
            color: Pallete.greenTertiary,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                  TGridLayoutvertical(
                    itemCount: sessions.length,
                    itemBuilder: (_, index) {
                      final session = sessions[index];
                      return SeminarCard(
                        seminarTitle: session['name'],
                        platform: session['platform'],
                        address: session['address'],
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
