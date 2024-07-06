import 'package:flutter/material.dart';
import 'package:wappstik/constants.dart';

ColorScheme colorScheme =
    const ColorScheme.light().copyWith(surface: WappstikPalette.surface);

final ThemeData themeData = ThemeData.light().copyWith(
    colorScheme: colorScheme,
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.bold,
          color: WappstikPalette.textGrey),
      displayMedium: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.bold,
          color: WappstikPalette.textGrey),
      displaySmall: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.bold,
          color: WappstikPalette.textGrey),
      headlineLarge: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.bold,
          color: WappstikPalette.textGrey),
      headlineMedium: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.bold,
          color: WappstikPalette.textGrey),
      headlineSmall: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.bold,
          color: WappstikPalette.textGrey),
      titleLarge: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.bold,
          color: WappstikPalette.textGrey),
      titleMedium: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
      titleSmall: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
      bodyLarge: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
      bodyMedium: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
      bodySmall: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
      labelLarge: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
      labelMedium: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
      labelSmall: TextStyle(
          fontFamily: 'Maison Neue',
          fontWeight: FontWeight.normal,
          color: WappstikPalette.textGrey),
    ));
