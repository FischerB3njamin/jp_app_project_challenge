import 'package:flutter/material.dart';

ThemeData customTheme() => ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 26,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Colors.white.withAlpha((0.80 * 255).toInt()),
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: Colors.white.withAlpha((0.70 * 255).toInt()),
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
        headlineSmall: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 14,
          color: Colors.white,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          color: Colors.white.withAlpha((0.80 * 255).toInt()),
        ),
        labelMedium: TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
