import 'package:flutter/material.dart';
import 'package:growhub/discover_items.dart';

class DiscoverItemsWidget extends StatelessWidget {
  final DiscoverItems discoverItems;

  const DiscoverItemsWidget({
    super.key,
    required this.discoverItems,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: Column(
        children: [
          Container(
            height: 203.7,
            width: 372.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(discoverItems.image),
                fit: BoxFit.fill,
                )
            ),
          ),
          SizedBox(
            width: 372.2,
            child: Text(
              discoverItems.caption,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            )
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}