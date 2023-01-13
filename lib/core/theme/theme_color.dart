import 'package:flutter/material.dart';

class ThemeColor {
  static const MaterialColor primaryColor =
      MaterialColor(0xff6699CC, <int, Color>{
    50: Color(0x0D6699CC),
    100: Color(0x1A6699CC),
    200: Color(0x336699CC),
    300: Color(0x4D6699CC),
    400: Color(0x666699CC),
    500: Color(0x806699CC),
    600: Color(0x996699CC),
    700: Color(0xb36699CC),
    800: Color(0xcc6699CC),
    900: Color(0xff6699CC),
  });

  static const Color errorColor = Color(0xFFFF4444);
  static const Color inputTextColor = Color(0xff336699);

  static Color? formFieldBg = Colors.grey[300];
  static const Color enabledBorder = Colors.transparent;

  //Cores usadas e que não estão no theme.
  static const MaterialColor darkBlue = MaterialColor(
    0xff000099,
    <int, Color>{
      50: Color(0x0D000099),
      100: Color(0x1A000099),
      200: Color(0x33000099),
      300: Color(0x4D000099),
      400: Color(0x66000099),
      500: Color(0x80000099),
      600: Color(0x99000099),
      700: Color(0xb3000099),
      800: Color(0xcc000099),
      900: Color(0xff000099),
    },
  );
  static const MaterialColor aqua = MaterialColor(
    0xff00FFFF,
    <int, Color>{
      50: Color(0x0D00FFFF),
      100: Color(0x1A00FFFF),
      200: Color(0x3300FFFF),
      300: Color(0x4D00FFFF),
      400: Color(0x6600FFFF),
      500: Color(0x8000FFFF),
      600: Color(0x9900FFFF),
      700: Color(0xb300FFFF),
      800: Color(0xcc00FFFF),
      900: Color(0xff00FFFF),
    },
  );

  //NÃO ESTÃO SENDO USADAS
  //lista de cores para a paleta
  final color2 = const Color(0xff333399);
  final color3 = const Color(0xff87ceeb);
  final color4 = const Color(0xff6699CC);
  final color5 = const Color(0xff3366CC);
  final color6 = const Color(0xff40E0D0);

  Color lightRed = const Color(0xFFFFCCCB);
  Color mediumRed = const Color(0xFFFF4444);
  Color darkRed = const Color(0xFFCC0000);
}
