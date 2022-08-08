import 'package:flutter/material.dart';

import 'style_theme_light.dart';

TextTheme textThemeLight = const TextTheme(
  bodyMedium: TextStyle(
    color: StyleTheme.colorText,
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.normal,
    overflow: TextOverflow.ellipsis,
  ),
  titleMedium: TextStyle(
    color: StyleTheme.colorText,
    fontSize: 18,
    height: 1.3,
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.ellipsis,
  ),
);
