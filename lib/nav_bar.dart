import 'package:flutter/material.dart';
import 'package:growhub/home_page.dart';

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
        // height: 70,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.white54,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, size: 40,),
            icon: Icon(Icons.home_outlined, size: 40,),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.search, size: 40,),
            icon: Icon(Icons.search_outlined, size: 40,),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.group, size: 40,),
            icon: Icon(Icons.group_outlined, size: 40,),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_rounded, size: 40,),
            icon: Icon(Icons.person_outline_rounded, size: 40,),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        const HomePage(),
        const Center(child: Text("Discover")),
        const Center(child: Text("Community")),
        const Center(child: Text("Profile")),
      ][currentPageIndex],
    );
  }
}
