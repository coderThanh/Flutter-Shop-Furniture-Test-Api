import 'package:flutter/material.dart';

import 'style_theme_light.dart';
import 'text_theme_light.dart';

ThemeData themeDataLight = ThemeData(
  primaryColor: StyleTheme.primary,
  backgroundColor: StyleTheme.onText,
  textTheme: textThemeLight,
  splashColor: Colors.white12,
  hoverColor: Colors.white.withOpacity(0.05),
  brightness: Brightness.light,
);
