import 'package:flutter/material.dart';
import 'package:growhub/constants/shadow.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/rounded_container.dart';

class TCommunityPost extends StatelessWidget {
  const TCommunityPost({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 350,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: Colors.white,
        ),
        child: Column(
          children: [
            // Thumbnail
            const TRoundedContainer(
              height: 20,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: Colors.white24,
            ),

            // const SizedBox(height: TSizes.spaceBtwItems / 2),

            //Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Post something here',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Share button
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 8), // Add padding
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 43, 59, 72),
                    borderRadius: BorderRadius.circular(8), // Add border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    'Post', // Text displayed on the button
                    style: TextStyle(color: Colors.white), // Text color
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
          ],
        ),
      ),
    );
  }
}
