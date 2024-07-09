import 'package:flutter/material.dart';
import 'package:wappstik/widgets/home/navigation.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
