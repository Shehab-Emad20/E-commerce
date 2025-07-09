import 'package:e_commerce_app/widgets/subtitle_text.dart';
import 'package:e_commerce_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class EmptyBag extends StatelessWidget {
  const EmptyBag({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtile,
    required this.buttonText,
  });

  final String imagePath, title, subtile, buttonText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: size.height * 0.35,
              width: double.infinity,
            ),
            TitlesTextWidget(label: title, fontSize: 40, color: Colors.red),
            SizedBox(height: 20),
            SubtitleTextWidget(label: subtile, fontWeight: FontWeight.w600),
            SubtitleTextWidget(label: subtile, fontWeight: FontWeight.w600),
            ElevatedButton(onPressed: () {}, child: Text(buttonText)),
          ],
        ),
      ),
    );
  }
}
