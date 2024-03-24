import 'package:flutter/material.dart';
import 'package:growhub/constants/colors.dart';
import 'package:growhub/layout/device_utility.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({Key? key, required this.tabs}) : super(key: key);

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TabBar(
              tabs: tabs,
              isScrollable: true,
              indicatorColor: TColors.primary,
              labelColor: Colors.white,
              unselectedLabelColor: TColors.darkGrey,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.arrow_upward,
                color: Colors.grey,
              ),
              const SizedBox(width: 4), // Adjust the width as needed
              const Text(
                'Swipe Up',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
