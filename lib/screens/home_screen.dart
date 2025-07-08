import 'package:e_commerce_app/providers/theme_provider.dart';
import 'package:e_commerce_app/widgets/subtitle_text.dart';
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
            SubtitleTextWidget(
              label: "Hi",
              color:
                  themeProvider.getIsDarkTheme ? Colors.white : Colors.black12,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Hello World")),
           
          ],
        ),
      ),
    );
  }
}
