import 'package:flutter/material.dart';
import 'package:wappstik/components/category.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryComponent(),
            CategoryComponent(),
            CategoryComponent(),
            CategoryComponent(),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryComponent(),
            CategoryComponent(),
            CategoryComponent(),
            CategoryComponent(),
          ],
        ),
      ],
    );
  }
}
