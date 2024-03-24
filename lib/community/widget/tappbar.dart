@ -1,50 +1,29 @@
import 'package:flutter/material.dart';
import 'package:growhub/constants/colors.dart';
import 'package:growhub/layout/device_utility.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Expanded(
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: TColors.primary,
          labelColor: Colors.white,
          unselectedLabelColor: TColors.darkGrey,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
