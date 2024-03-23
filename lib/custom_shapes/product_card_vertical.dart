import 'package:flutter/material.dart';
import 'package:growhub/constants/colors.dart';
import 'package:growhub/constants/image_strings.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/image_container.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:growhub/custom_shapes/card_title_text.dart';

class TProductCardVertical extends StatefulWidget {
  const TProductCardVertical({
    Key? key,
    required this.groupName,
    required this.memberCount,
    required this.imageUrl,
  }) : super(key: key);

  final String groupName;
  final int memberCount;
  final String imageUrl;

  @override
  _TProductCardVerticalState createState() => _TProductCardVerticalState();
}

class _TProductCardVerticalState extends State<TProductCardVertical> {
  bool _isJoined = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isJoined = !_isJoined;
        });
      },
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: Colors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: Colors.white,
              child: Stack(
                children: [
                  TRoundedImage(
                    imageUrl: widget.imageUrl, // Pass the imageUrl directly
                    applyImageRadius: true,
                  ),
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: TSizes.sm / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: widget.groupName,
                    smallSize: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('${widget.memberCount} Members'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isJoined = !_isJoined;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _isJoined
                          ? Color.fromARGB(255, 1, 30, 99)
                          : const Color.fromARGB(255, 105, 129, 246),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      ),
                    ),
                    child: SizedBox(
                      width: TSizes.iconLg * 1.5,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Text(
                          _isJoined ? 'Joined' : 'Join',
                          style: const TextStyle(
                            color: TColors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
