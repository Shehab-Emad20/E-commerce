import 'package:e_commerce_app/consts/app_color.dart';
import 'package:flutter/material.dart';

class Styles {
  //NamedArgemints
  static ThemeData themeData({
    required bool isDarkthem,
    required BuildContext context,
  }) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkthem
              ? AppColors.darkScaffoldColor
              : AppColors.lightScaffoldColor,
      brightness: isDarkthem ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        
        backgroundColor:
            isDarkthem
                ? AppColors.darkScaffoldColor
                : AppColors.lightScaffoldColor,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: isDarkthem ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
