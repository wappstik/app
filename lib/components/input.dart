import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

class InputComponent extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool isSecure;
  final bool hasSuffix;
  final IconButton? suffixAction;

  const InputComponent(
      {super.key,
      required this.icon,
      required this.hintText,
      required this.controller,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.send,
      this.isSecure = false,
      this.hasSuffix = false,
      this.suffixAction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isSecure,
        style: Theme.of(context).textTheme.bodyMedium,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: hasSuffix ? suffixAction : null,
            prefixIcon: Icon(
              icon,
              color: WappstikPalette.grey,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: WappstikPalette.grey)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: WappstikPalette.grey)),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium));
  }
}
