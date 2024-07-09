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
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: WappstikPalette.purple,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: WappstikPalette.black45,
              ))
        ],
      ),
    );
  }
}
