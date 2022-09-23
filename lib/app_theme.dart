import 'package:flutter/material.dart';

import 'component/colors_app.dart';

class AppTheme {
  static final ThemeData light = ThemeData.light(useMaterial3: true).copyWith(
    primaryColor: ColorsApp.primaryColor,
    appBarTheme: ThemeData.light(useMaterial3: true)
        .appBarTheme
        .copyWith(backgroundColor: ColorsApp.primaryColor),
  );

  static final ThemeData dark = ThemeData.dark(useMaterial3: true);
}
