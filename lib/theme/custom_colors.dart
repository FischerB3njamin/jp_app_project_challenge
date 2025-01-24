import 'package:flutter/material.dart';

class CustomColors {
  static final Color black = Colors.black;
  static final Color white = Colors.white;
  static final Color white50 = Colors.white.withAlpha((0.5 * 255).toInt());
  static final Color white10 = Colors.white.withAlpha((0.1 * 255).toInt());

  static const Color black50 = Colors.black54;

  // Button Colors
  static const Color btnPink = Color(0xFFEA73C1);
  static const Color btnOrange = Color(0xFFF69CA6);
  static const Color btnOrange2 = Color(0xFFF96896);
  static const Color btnLila = Color(0xFF9357B6);
  static const Color btnBlueLila = Color(0xFF908CF5);
  static const Color btnBlueLila2 = Color(0xFF8C5BEA);
  static const Color btnPurple = Color(0xFFBB8DE1);
  static const Color btnLilaPink = Color(0xFFFFACE4);
  static final Color btnLilaPink50 =
      const Color(0xFFEA71C5).withAlpha((0.5 * 255).toInt());

  // Shadow Colors
  static final Color pinkShadow = const Color(0xFFEC3DD1).withAlpha(180);
  static final List<Color> btnPrimaryShadow = [pinkShadow, white];

  // Bottom Sheet Colors
  static const Color bottomSheetBlack50 = Colors.black54;
  static const Color bottomSheetBackground = Color(0xFF2A2927);
  static const Color bottomSheetBackground30 = Color(0x50343C33);
  static const Color bottomSheetBorderDarkGray = Color(0xFF616261);
  static const Color categoryItemActiveBg = Color(0x50FFFFFF);

  // General Colors
  static const Color backgroundColor = Color(0xFF3F3C3C); // Dark Gray
  static const Color foregroundColor = Color(0xFFD4CDCD); // Light Gray
  static const Color selectedBackgroundColor = Color(0xFF616261); // Medium Gray

  // Gradients
  static final LinearGradient linearGradientBtnPrimary = LinearGradient(
    colors: [btnPink, btnOrange],
  );
}
