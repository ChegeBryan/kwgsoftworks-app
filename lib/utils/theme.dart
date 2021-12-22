import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  // light theme
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: kPrimaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSwatch(accentColor: kAccentColor),
    );
  }

  // support for darktheme is available
  static ThemeData dark() {
    return ThemeData(
      primaryColor: kPrimaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSwatch(accentColor: kAccentColor),
    );
  }
}
