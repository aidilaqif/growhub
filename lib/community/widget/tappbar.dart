import 'package:flutter/material.dart';
import 'package:growhub/constants/colors.dart';
import 'package:growhub/layout/device_utility.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrop then in Material widget.
  /// To do that we need [PreferredSized] Widget and that's why created custom class. (PreferredSizeWidget]
  const TTabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor:Colors.white,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
