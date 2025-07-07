import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello World",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Hello World")),
            SwitchListTile(
              title: Text(
                themeProvider.getIsDarkTheme ? "Dark mode" : "Light mode",
              ),
              value: themeProvider.getIsDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkThem(themeValue: value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
