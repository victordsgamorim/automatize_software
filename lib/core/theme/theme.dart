import 'package:automatize/core/theme/theme_color.dart';
import 'package:automatize/core/theme/theme_values.dart';
import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  primarySwatch: ThemeColor.primaryColor,
  primaryColor: ThemeColor.primaryColor,
  fontFamily: ThemeValues.fontFamily,
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontFamily: ThemeValues.fontFamilyStore,
      fontSize: 45,
      fontWeight: FontWeight.w700,
    ),
    displayLarge: TextStyle(
      fontFamily: ThemeValues.fontFamilyStore,
      fontSize: 100,
      // fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ThemeColor.inputTextColor,
    ),
    bodyMedium: TextStyle(fontSize: 10),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      fontFamily: ThemeValues.fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 16,
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ThemeValues.formFieldRadius),
        borderSide: const BorderSide(
          width: 0,
          color: ThemeColor.enabledBorder,
        )),
    fillColor: ThemeColor.formFieldBg,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ThemeValues.formFieldRadius),
      borderSide: const BorderSide(
        color: ThemeColor.primaryColor,
        width: ThemeValues.formFieldEnabledBorderWidth,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ThemeValues.formFieldRadius),
      borderSide: const BorderSide(
        color: ThemeColor.errorColor,
        width: ThemeValues.formFieldEnabledBorderWidth,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ThemeValues.formFieldRadius),
      borderSide: const BorderSide(
        color: ThemeColor.errorColor,
        width: ThemeValues.formFieldEnabledBorderWidth,
      ),
    ),
  ),
);
