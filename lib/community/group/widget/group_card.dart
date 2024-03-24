import 'package:flutter/material.dart';
import 'package:growhub/constants/colors.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/image_container.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:growhub/custom_shapes/card_title_text.dart';
import 'package:growhub/pallete.dart';

class GroupCard extends StatefulWidget {
  const GroupCard({
    Key? key,
    required this.groupName,
    required this.memberCount,
    required this.imageUrl,
  }) : super(key: key);

  final String groupName;
  final int memberCount;
  final String imageUrl;

  @override
  _GroupCardState createState() => _GroupCardState();
}

class _GroupCardState extends State<GroupCard> {
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
                        ? Pallete.widgetColorPrimary
                        : Pallete.widgetColorSecondary,
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
