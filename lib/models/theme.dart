import 'package:flutter/material.dart';
import 'default_colors.dart';

final appTheme = ThemeData(
    // App Colors
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: buildMaterialColor(regularPurple),
        backgroundColor: Colors.white),
    // Text Theme
    fontFamily: "Inter",
    // Elevated Button Style
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: pink,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.w700))),
    // Heading Style
    textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 40, color: regularPurple),
        displayMedium: TextStyle(
            fontFamily: "Poppins", fontSize: 24, fontWeight: FontWeight.w700),
        bodySmall: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          color: Color(0xffBCC1CD),
        )),
    // TextField Theme
    inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: regularPurple),
            borderRadius: BorderRadius.circular(10)),
        hintStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xffD9D9D9)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 16)));

// Build Material Color
MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
