import 'package:flutter/material.dart';

import 'style_theme_light.dart';
import 'text_theme_light.dart';

ThemeData themeDataLight = ThemeData(
  primaryColor: StyleTheme.primary,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: textThemeLight,
  splashColor: Colors.black.withOpacity(0.008),
  hoverColor: Colors.black.withOpacity(0.008),
  highlightColor: Colors.black.withOpacity(0.08),
  brightness: Brightness.light,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black12,
      surfaceTintColor: Colors.black.withOpacity(0.001),
    ),
  ),
);
