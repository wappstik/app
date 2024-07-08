import 'package:flutter/material.dart';
import 'package:wappstik/components/button.dart';

class ModalComponent extends StatelessWidget {
  final String title;
  final String description;
  final ButtonComponent? action;

  const ModalComponent(
      {super.key, required this.title, required this.description, this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          action ?? const SizedBox.shrink(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
