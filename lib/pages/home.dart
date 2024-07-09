import 'package:flutter/material.dart';
import 'package:wappstik/widgets/home/floation.dart';
import 'package:wappstik/widgets/home/navigation.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloationButtonwidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
