import 'package:flutter/material.dart';
import 'package:growhub/add_plant/page/add_plant_page.dart';
import 'package:growhub/community/community.dart';
import 'package:growhub/discover_page.dart';
import 'package:growhub/home_page.dart';
import 'package:growhub/pallete.dart';
import 'package:growhub/profile/profile_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Pallete.greenSecondary,
        height: 70,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Pallete.greenBasic,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              size: 40,
              color: Pallete.greenTertiary,
            ),
            icon: Icon(
              Icons.home_outlined,
              size: 40,
              color: Pallete.greenBasic,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.search,
              size: 40,
              color: Pallete.greenTertiary,
            ),
            icon: Icon(
              Icons.search_outlined,
              size: 40,
              color: Pallete.greenBasic,
            ),
            label: 'Discover',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.add,
              size: 40,
              color: Pallete.greenTertiary,
            ),
            icon: Icon(
              Icons.add,
              size: 40,
              color: Pallete.greenBasic,
            ),
            label: 'Add Plant',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.group,
              size: 40,
              color: Pallete.greenTertiary,
            ),
            icon: Icon(
              Icons.group_outlined,
              size: 40,
              color: Pallete.greenBasic,
            ),
            label: 'Community',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person_rounded,
              size: 40,
              color: Pallete.greenTertiary,
            ),
            icon: Icon(
              Icons.person_outline_rounded,
              size: 40,
              color: Pallete.greenBasic,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        const HomePage(),
        const DiscoverPage(),
        const AddPlantPage(),
        const CommunityPage(),
        ProfilePage(),
      ][currentPageIndex],
    );
  }
}
