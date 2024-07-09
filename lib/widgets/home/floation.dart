import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

class FloationButtonwidget extends StatelessWidget {
  const FloationButtonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: WappstikPalette.surface,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tooltip: 'New Sticker',
      child: Icon(
        Icons.add,
        color: WappstikPalette.black45,
      ),
    );
  }
}
