import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final bool isDisabled;
  final EdgeInsetsGeometry padding;

  final VoidCallback onPressed;

  const BaseButton({
    super.key,
    required this.text,
    this.icon,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.borderColor = Colors.transparent,
    this.borderWidth = 2.0,
    this.isDisabled = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: !isDisabled ? onPressed : null,
      icon: icon != null ? Icon(icon, color: textColor) : Container(),
      label: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: !isDisabled ? backgroundColor : WappstikPalette.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: padding,
        textStyle: const TextStyle(fontSize: 18),
        side: BorderSide(
          color: borderColor,
          width: borderWidth,
        ),
      ),
    );
  }
}

class ButtonComponent extends BaseButton {
  const ButtonComponent({
    super.key,
    required super.text,
    super.icon,
    super.textColor = Colors.white,
    super.backgroundColor = Colors.blue,
    super.borderColor = Colors.transparent,
    super.borderWidth = 2.0,
    super.padding,
    super.isDisabled = false,
    required super.onPressed,
  });
}
