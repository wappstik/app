import 'package:flutter/material.dart';
import 'package:wappstik/components/input.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return InputComponent(
        icon: Icons.search, hintText: 'Search', controller: controller);
  }
}
