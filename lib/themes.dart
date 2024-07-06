import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

ColorScheme colorScheme = const ColorScheme.light().copyWith(
  surface: WappstikPalette.surface
);

final ThemeData themeData = ThemeData.light().copyWith(
  colorScheme: colorScheme
);
