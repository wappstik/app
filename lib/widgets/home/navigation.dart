import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentSelectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
        circleColor: WappstikPalette.purple,
        inactiveIconColor: WappstikPalette.black45,
        tabs: [
          TabData(iconData: Icons.home, title: 'Home'),
          TabData(iconData: Icons.search, title: 'Search'),
          TabData(iconData: Icons.settings, title: 'Settings')
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentSelectedIndex = position;
          });
        });
  }
}
