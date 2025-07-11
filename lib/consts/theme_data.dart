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
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: isDarkthem ? Colors.white : Colors.black,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
