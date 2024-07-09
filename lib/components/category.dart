import 'package:flutter/material.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      width: 75,
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              'https://www.fantastick.in/cdn/shop/products/CACU046_1024x1024.jpg?v=1705407866',
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "Cute",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
