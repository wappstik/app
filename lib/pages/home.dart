import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';
import 'package:wappstik/widgets/home/categories.dart';
import 'package:wappstik/widgets/home/navigation.dart';
import 'package:wappstik/widgets/home/search.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int currentIndex = 0;

  void _onTabChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WappstikPalette.surface,
      bottomNavigationBar: BottomNavigationBarWidget(
        onTabChanged: _onTabChanged,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: getPage(),
          ),
        ),
      ),
    );
  }

  getPage() {
    switch (currentIndex) {
      case 0:
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchWidget(),
            SizedBox(
              height: 10,
            ),
            CategoriesWidget()
          ],
        );
      case 1:
        return const Column(
          children: [Text('Search')],
        );
      case 2:
        return const Column(
          children: [Text('Settings')],
        );
      default:
        return const Column(
          children: [Text('Default')],
        );
    }
  }
}
