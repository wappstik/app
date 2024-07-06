import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

ColorScheme colorScheme =
    const ColorScheme.light().copyWith(surface: WappstikPalette.surface);

final ThemeData themeData = ThemeData.light().copyWith(
    colorScheme: colorScheme,
    textTheme: const TextTheme(
      displayLarge:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.bold),
      displayMedium:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.bold),
      displaySmall:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.bold),
      headlineLarge:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.bold),
      headlineMedium:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.bold),
      headlineSmall:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.bold),
      titleLarge:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.bold),
      titleMedium:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
      titleSmall:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
      bodyLarge:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
      bodyMedium:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
      bodySmall:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
      labelLarge:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
      labelMedium:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
      labelSmall:
          TextStyle(fontFamily: 'Maison Neue', fontWeight: FontWeight.normal),
    ));
