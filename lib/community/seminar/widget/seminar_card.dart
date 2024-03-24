import 'package:flutter/material.dart';
import 'package:growhub/constants/sizes.dart';
import 'package:growhub/containers/image_container.dart';
import 'package:growhub/containers/rounded_container.dart';
import 'package:growhub/custom_shapes/card_title_text.dart';
import 'package:growhub/pallete.dart';

class SeminarCard extends StatefulWidget {
  const SeminarCard({
    super.key,
    required this.seminarTitle,
    required this.platform,
    required this.imageUrl,
    required this.address,
  });

  final String seminarTitle;
  final String platform;
  final String address;
  final String imageUrl;

  @override
  _SeminarCardState createState() => _SeminarCardState();
}

class _SeminarCardState extends State<SeminarCard> {
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
              padding: const EdgeInsets.all(TSizes.sm),
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
              padding: const EdgeInsets.only(left: TSizes.sm / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: widget.seminarTitle,
                    smallSize: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm / 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Platform: ${widget.platform}',
                      style: const TextStyle(
                        color: Pallete.blackBasic
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm /10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Adress: ${widget.address}',
                      style: const TextStyle(
                        color: Pallete.blackPrimary
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isJoined = !_isJoined;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _isJoined
                        ? Pallete.greenTertiary
                        : Pallete.greenPrimary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                    border: Border.all(
                      width: 1,
                      color: _isJoined
                        ? Pallete.greenPrimary
                        : Pallete.greenTertiary
                    )
                  ),
                  child: SizedBox(
                    width: TSizes.iconLg * 2.0,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Text(
                        _isJoined
                        ? 'Requested'
                        : 'Request',
                        style: TextStyle(
                          color: _isJoined
                          ? Pallete.greenPrimary
                          : Pallete.greenTertiary,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
