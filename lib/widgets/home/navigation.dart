import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final Function(int) onTabChanged;

  const BottomNavigationBarWidget({super.key, required this.onTabChanged});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentSelectedIndex = 0;

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
          widget.onTabChanged(position);
        });
  }
}
