import 'package:flutter/material.dart';
import 'package:wappstik/components/button.dart';
import 'package:wappstik/components/modal.dart';
import 'package:wappstik/constants.dart';

class ModalErrorWidget extends StatelessWidget {
  final String description;
  final String actionText;
  final VoidCallback onPressed;

  const ModalErrorWidget(
      {super.key,
      required this.description,
      required this.onPressed,
      this.actionText = "Close"});

  @override
  Widget build(BuildContext context) {
    return ModalComponent(
      title: "Error",
      description: description,
      action: ButtonComponent(
        text: actionText,
        onPressed: onPressed,
        backgroundColor: WappstikPalette.purple,
      ),
    );
  }
}
